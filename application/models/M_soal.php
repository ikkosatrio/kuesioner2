<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class M_soal extends CI_Model {

	public $variable;

	public function __construct()
	{
		parent::__construct();
	}

	function tampil_data($table){
		$this->db->from($table);
		return $query = $this->db->get();
		// return $this->db->get($table);
	}

	function countAll($table){
        $this->db->from($table);
        $this->db->join('kuesioner','kuesioner.id_kuesioner=soal.id_kuesioner');
        return $query = $this->db->get();
    }

	function search($search,$table){
	    $where = array('id_soal', $search);
		return $this->db->get_where($table,$where);
		// return $this->db->get($table);
	}

	function tampilByKuesioner($where,$table){
//        $this->db->join('kue','soal_jabatan.id_soal=soal.id_soal');
		return $this->db->get_where($table,$where);
	}

    function tampilByKuesioner2($where,$table){
        $this->db->join('soal_jabatan','soal_jabatan.id_soal=soal.id_soal');
        return $this->db->get_where($table,$where);
    }

	function countSoal($where,$table){
		return $this->db->get_where($table,$where);
	}

	function tampilJabatanSoal($where,$table)
    {
        $this->db->join('soal','soal_jabatan.id_soal=soal.id_soal');
        $this->db->join('jabatan','soal_jabatan.id_jabatan=jabatan.id_jabatan');
        return $this->db->get_where($table,$where);
    }

    function getJawabanbyKuesioner($id_kuesioner,$jenis){
        $query = $this->db
            ->select("AVG(jawaban) as nilai")
            ->from("detail_jawaban")
            ->join("jawaban","jawaban.id_jawaban=detail_jawaban.id_jawaban")
            ->join("soal", "soal.id_soal=detail_jawaban.id_soal")
            ->where("jawaban.id_kuesioner", $id_kuesioner)
            ->where("jenis", $jenis)
            ->group_by("detail_jawaban.id_soal")
            ->get();

        $nilai = 0;
        if($query->row()){
            $nilai = $query->row()->nilai;
        }

        return $nilai;
    }

	function countRoundSoal($id_kuesioner){
		$query = $this->db
		->select("ROUND(jawaban) as nilai,soal.id_soal")
		->from("detail_jawaban")
		->join("soal", "soal.id_soal=detail_jawaban.id_soal")
		->where("soal.id_kuesioner", $id_kuesioner)
		->group_by("detail_jawaban.id_soal")
		->get();

		return $query;
	}

	function input_data($data,$table){
		$this->db->insert($table,$data);
        return $this->db->insert_id();
	}

	function detail($where,$table){
		return $this->db->get_where($table,$where);
	}

	function update_data($where,$data,$table){
		$this->db->where($where);
		$this->db->update($table,$data);
	}

	function hapus_data($where,$table){
		$this->db->where($where);
		$this->db->delete($table);
	}

}

/* End of file M_bidang.php */
/* Location: ./application/models/M_bidang.php */
