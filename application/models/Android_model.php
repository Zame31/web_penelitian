<?php
class Android_model extends CI_Model{
	function __construct(){
		$this->load->database();
	}

  public function get_pengaju(){
    $query = $this->db->query('SELECT nama,institusi FROM pengaju Limit 4');
    return $query->result();
  }

	public function get_penelitian(){
		$query = $this->db->query(
		'SELECT nama,institusi,waktu_mulai,waktu_selesai
		FROM pengaju
		JOIN penelitian ON penelitian.id_pengaju = pengaju.id_pengaju
		WHERE CURDATE() BETWEEN waktu_mulai AND waktu_selesai AND
        jenis_surat = "penelitian"');
    return $query->result();
	}
	public function get_pkl(){
		$query = $this->db->query(
		'SELECT nama,institusi,waktu_mulai,waktu_selesai
		FROM pengaju
		JOIN penelitian ON penelitian.id_pengaju = pengaju.id_pengaju
		WHERE CURDATE() BETWEEN waktu_mulai AND waktu_selesai AND
        (jenis_surat = "pkl" OR jenis_surat="pkl_medis") ');
    return $query->result();
	}
}
