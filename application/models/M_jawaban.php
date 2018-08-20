<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class M_jawaban extends CI_Model {

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

	function tampilByKuesioner($where,$table){	
		return $this->db->get_where($table,$where);
	}

	function detailFull($where,$table){	
		$this->db->from($table);
		$this->db->where($where);
		$this->db->join('responden','responden.id_responden=jawaban.id_responden');
		return $query = $this->db->get();
		// return $this->db->get_where($table,$where);
	}

	function countSoal($where,$table){	
		return $this->db->get_where($table,$where);
	}

	function checkresponden($where,$table){
		return $this->db->get_where($table,$where);
	}

	function hasil($where,$table){
		$this->db->select('AVG(Efficiency) avg_Efficiency,AVG(Error) avg_Error,AVG(Satisfaction) avg_Satisfaction,AVG(Learnability) avg_Learnability,AVG(Memorability) avg_Memorability');
		$this->db->where($where);
		return $this->db->get($table);
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