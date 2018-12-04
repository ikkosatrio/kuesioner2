<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Main extends CI_Controller {

	public function __construct()
	{
		parent::__construct();

		$this->blade->sebarno('ctrl', $this);
		$this->load->model('m_config');
        $this->load->model('m_kuesioner');
        $this->load->model('m_soal');
        $this->load->model('m_user');
        $this->load->model('m_responden');
        $this->load->model('m_jawaban');
        $this->load->model('m_rekomendasi');
        $this->load->model('m_jabatan');
        $this->load->model('m_struktur');

        $this->data['config'] = $this->m_config->ambil('config',1)->row();
	}

    public function getJsonStrukturLoad()
    {
        $arrData = array();
        $struktur = $this->m_struktur->tampil_data('struktur')->result();

        foreach ($struktur as $row){
            $arrData[] =  array(
                'Id' => $row->id_struktur,
                'ParentId' =>  $row->id_parent,
                'Name' => $row->nama,
                'Title' => $row->nama_struktur,
                'Image' => "http://via.placeholder.com/200"
            );
        }


        echo json_encode($arrData);
        return;
    }

	public function index()
	{
		if($this->session->userdata('IsLogin')){
			redirect('main/kuesioner');
		}
		$data           = $this->data;
		$data['menu']   = "home";
		echo $this->blade->nggambar('main.login',$data);
	}

	function struktur(){
        $data           = $this->data;
        $data['menu']   = "struktur";
        echo $this->blade->nggambar('main.struktur.lihat',$data);
        return;
    }

	public function checkresponden()
	{
		if (isset($_POST['nama']) && $_POST['nama'] != null && $_POST['nama'] != "") {
				$id = $this->m_responden->input_data($_POST,'responden');

				$data_session = array(
						'id' => $id,
						'nama' => $this->input->post('nama'),
						'nip'	=>  $this->input->post('nip'),
						'instansi'	=>  $this->input->post('instansi'),
						'jurusan'	=>  $this->input->post('jurusan'),
						'IsLogin' =>	true,
						);

				$this->session->set_userdata($data_session);

				echo json_encode(array(
					'Message' => 'Success',
				));
		}


		if (isset($_POST['nim']) && (!isset($_POST['nama']) || $_POST['nama'] == null)) {
			$where = array(
				'nim' => $_POST['nim'],
			);
			$result = $this->m_responden->detail($where,'responden')->row();



			if ($result) {
				$data_session = array(
						'id' => $result->id_responden,
						'nama' =>$result->nama,
						'nip'	=>  $result->nim,
						'instansi'	=> $result->instansi,
						'jurusan'	=>  $result->jurusan,
						'IsLogin' =>	true,
						);

				$this->session->set_userdata($data_session);

				echo json_encode( array(
					'Message' => 'Responden Sudah Mengisi',
				));
			}else{
				// var_dump($result);
				// die();
				echo json_encode(array(
					'Message' => 'Ok',
				));
			}
		}
	}

	public function kuesioner(){
		$data            = $this->data;
		$data['menu']    = "kuesioner";
		$data['kuesioner'] = $this->m_kuesioner->tampil_data('kuesioner')->result();
		if($this->session->userdata('IsLogin') == false){
			redirect('main');
		}else{
			echo $this->blade->nggambar('main.kuesioner.index',$data);
			return;
		}


	}

	public function jawab($id = 0){
		$data            = $this->data;
		$data['type']    = "update";
		$data['menu']    = "kuesioner";
		$where = array('id_responden' => $this->session->userdata('id'));
		$data['user'] = $this->m_responden->detail($where,'responden')->row();
		$user = $data['user'];
		$where           = array(
		    'id_kuesioner' => $id
        );

        $where2           = array(
            'id_kuesioner' => $id,
            'soal_jabatan.id_jabatan' => $user->id_jabatan
        );

//		var_dump($where);
		$data['kuesioner'] = $this->m_kuesioner->detail($where,'kuesioner')->row();
		$data['soal'] = $this->m_soal->tampilByKuesioner($where2,'soal')->result();

		if($this->session->userdata('IsLogin') == false){
			redirect('main');
		}else{
			echo $this->blade->nggambar('main.kuesioner.jawab',$data);
			return;
		}

	}

	public function inputjawab($id = 0){
		$kuesioner = $this->input->post('kuesioner');
		$nim       = $this->input->post('id_responden');

		$data = array(
			'id_kuesioner' => $kuesioner,
			'id_responden'       => $nim,
		);

		$result = $this->m_jawaban->checkresponden($data,'jawaban')->num_rows();

		if ($result != 0) {
			echo goResult(false,"Responden ini telah menjawab");
			return;
		}

		$id = $this->m_jawaban->input_data($data,'jawaban');

		$soals = $this->m_responden->tampil_data('soal')->result();

		$hasil        = 0;
		$efficiency   = 0;
		$satisfiction = 0;
		$learnability = 0;
		$error        = 0;
		$memorability = 0;

		foreach ($soals as $soal) {
			if ($this->input->post('jawaban-'.$soal->id_soal)) {
				$jawaban = $this->input->post('jawaban-'.$soal->id_soal);
				$id_soal = $soal->id_soal;

				$arrjawab = array(
					'id_jawaban' => $id,
					'id_soal'    => $id_soal,
					'jawaban'    => $jawaban,
				);

				switch ($soal->aspek) {
					case 'Efficiency':
						$efficiency = $efficiency + $this->hitungSoal($soal->jenis,$jawaban);
						break;
					case 'Error':
						$error = $error + $this->hitungSoal($soal->jenis,$jawaban);
						break;
					case 'Satisfaction':
						$satisfiction = $satisfiction + $this->hitungSoal($soal->jenis,$jawaban);
						break;
					case 'Learnability':
						$learnability = $learnability + $this->hitungSoal($soal->jenis,$jawaban);
						break;
					case 'Memorability':
						$memorability = $memorability + $this->hitungSoal($soal->jenis,$jawaban);
						break;
				}

				$hasil = $hasil + $this->hitungSoal($soal->jenis,$jawaban);

				$this->m_jawaban->input_data($arrjawab,'detail_jawaban');

			}
		}

		$dataid = array(
				'id_jawaban' => $id,
		);

		$hasil = $hasil * 2.5;
		$efficiency   = $efficiency * 2.5;
		$satisfiction = $satisfiction * 2.5;
		$learnability = $learnability * 2.5;
		$error        = $error * 2.5;
		$memorability = $memorability * 2.5;

		$datajawab = array(
				'hasil' => $hasil,
				'Efficiency' => $efficiency,
				'Error' => $error,
				'Satisfaction' => $satisfiction,
				'Learnability' => $learnability,
				'Memorability' => $memorability
		);



		$this->m_jawaban->update_data($dataid,$datajawab,'jawaban');


		echo goResult(true,"Data Telah Di Dijawab dengan Hasil $hasil");
		return;
	}


	public function logout(){
		if(!$this->session->userdata('IsLogin')){
			redirect('main');
			return;
		}

		$this->session->sess_destroy();
		redirect('main');
	}

	function hitungSoal($jenis,$jawaban){

		if ($jenis == 'positif') {
			return ($jawaban - 1);
		}else if ($jenis == 'negatif') {
			return (5 - $jawaban);
		}

	}

	function countSoal($id_kuesioner=null)
	{
		$where           = array('id_kuesioner' => $id_kuesioner);
		return $this->m_soal->countSoal($where,'soal')->num_row();
	}


}

/* End of file Main.php */
/* Location: ./application/controllers/Main.php */
