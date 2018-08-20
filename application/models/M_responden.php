<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class M_responden extends CI_Model {

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

	function search($search){
		$this->db->select('*');
	    $this->db->from('responden');
	    if(!empty($keyword)) {
	        $this->db->group_start();
	        $this->db->like('nim', $keyword);
	        $this->db->or_like('nama', $keyword);
	        $this->db->group_end();
	    }

		return $query = $this->db->get();
		// return $this->db->get($table);
	}

	function search_reponden($title){
        $this->db->or_like('nama', $title , 'both');
        $this->db->or_like('nim', $title , 'both');
        $this->db->order_by('nama', 'ASC');
        $this->db->limit(10);
        return $this->db->get('responden')->result();
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
