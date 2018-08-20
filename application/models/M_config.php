<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class M_config extends CI_Model {

	public $variable;

	public function __construct()
	{
		parent::__construct();
		
	}

	function ambil($table,$id){
		$where = array('id' => $id);		
		return $this->db->get_where($table,$where);
	}

	function update_data($where,$data,$table){
		$this->db->where($where);
		$this->db->update($table,$data);
	}

}

/* End of file M_config.php */
/* Location: ./application/models/M_config.php */