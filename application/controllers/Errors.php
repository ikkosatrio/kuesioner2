	<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
	
	class Errors extends CI_Controller {
	
		public function __construct()
		{
			parent::__construct();
			$this->blade->sebarno('ctrl', $this);
			$this->load->model('m_profil');
			$this->load->model('m_config');
			$this->load->model('m_header');

			$this->data['config'] 			= $this->m_config->ambil('config',1)->row();
			$this->data['profil'] 			= $this->m_profil->ambil('profil',1)->row();
			$this->data['header'] 			= $this->m_header->ambil('header',1)->row();
		}
	
		public function index()
		{
			$data                = $this->data;
			$data['menu']        = "Error 404";
			echo $this->blade->nggambar('error.error_404',$data);
		}
	
	}
	
	/* End of file Errors.php */
	/* Location: ./application/controllers/Errors.php */