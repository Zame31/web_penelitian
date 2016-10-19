<?php
class Login_model extends CI_Model{
	function __construct(){
		$this->load->database();
	}

	function ambil_data($data){
		$this->db->select("*");
		$this->db->from("admin");
		$this->db->where('username', $data);
		$query = $this->db->get();
		if ($query->num_rows() >0){
			foreach ($query->result() as $data) {
				$admin[] = $data;
			}
		return $admin;
		}
	}
}
