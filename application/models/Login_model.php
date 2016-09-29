<?php
class Login_model extends CI_Model{
	function __construct(){
		$this->load->database();
	}

	function ambil_data($data){
		$user = $this->db->get_where('admin',$data);
		return $user->num_rows();
	}
}
