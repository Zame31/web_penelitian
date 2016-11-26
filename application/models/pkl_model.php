<?php
  class Pkl_model extends CI_Model {

    public function __construct(){
      $this->load->database();
    }

    public function get_pkl(){
      $this->db->select("*");
      $this->db->from("penelitian");
      $this->db->join("pengaju", "pengaju.id_pengaju = penelitian.id_pengaju","inner");
      $this->db->where("jenis_surat", "pkl_medis");
      $this->db->or_where("jenis_surat", "pkl");
      $this->db->order_by("waktu_pembuatan","asc");
      $query = $this->db->get();
      return $query->result();
    }


    public function get_pejabat_all(){
      $query = $this->db->query('SELECT * FROM pejabat');
      return $query->result_array();
    }

    public function get_penempatan_belum(){
      $query = $this->db->query(
        'SELECT penelitian.id_penelitian as id_penelitian,nama,institusi,jenis_surat
          FROM penempatan
          JOIN pejabat ON pejabat.id_pejabat = penempatan.id_pejabat
          RIGHT JOIN penelitian ON penelitian.id_penelitian = penempatan.id_penelitian
          JOIN pengaju ON penelitian.id_pengaju = pengaju.id_pengaju
          WHERE jenis_surat like "pkl%" AND
          (bagian IS NULL OR nama_pejabat IS NULL)
        ');
      return $query->result_array();
    }

    public function get_penempatan_sudah(){
      $query = $this->db->query(
        'SELECT penelitian.id_penelitian as id_penelitian,nama,bagian,nama_pejabat,institusi
          FROM penempatan
          JOIN pejabat ON pejabat.id_pejabat = penempatan.id_pejabat
          JOIN penelitian ON penelitian.id_penelitian = penempatan.id_penelitian
          JOIN pengaju ON penelitian.id_pengaju = pengaju.id_pengaju
          WHERE jenis_surat like "pkl%"
        ');
      return $query->result_array();
    }

    public function update_penempatan(){
      $this->load->helper('url');

      $id_penelitian = $this->input->post('id_penelitian');

      $data = array (

        'id_penelitian' => $id_penelitian,
        'id_pejabat' => $this->input->post('id_pejabat'),
        'bagian' => $this->input->post('bagian')
      );
      $this->db->where('id_penelitian', $id_penelitian);
      $this->db->update('penempatan', $data);
    }

    public function get_penempatan_id($id){
      $query = $this->db->query(
        'SELECT penelitian.id_penelitian as id_penelitian,nama,bagian,nama_pejabat,institusi,penempatan.id_pejabat as id_pejabat
          FROM penempatan
          JOIN pejabat ON pejabat.id_pejabat = penempatan.id_pejabat
          RIGHT JOIN penelitian ON penelitian.id_penelitian = penempatan.id_penelitian
          JOIN pengaju ON penelitian.id_pengaju = pengaju.id_pengaju
          WHERE penelitian.id_penelitian = '.$id.'
        ');
      return $query->row_array();
    }

    public function get_laporan(){

      $b1 = $this->input->post('b1');
      $b2 = $this->input->post('b2');
      $t1 = $this->input->post('t1');
      $t2 = $this->input->post('t2');

      $this->db->select("*");
      $this->db->from("penelitian");
      $this->db->join("pengaju", "pengaju.id_pengaju = penelitian.id_pengaju","inner");
      $this->db->where('month(waktu_pembuatan) >=', $b1);
      $this->db->where('month(waktu_pembuatan) <=', $b2);
      $this->db->where('year(waktu_pembuatan) >=', $t1);
      $this->db->where('year(waktu_pembuatan) <=', $t2);
      $this->db->where('jenis_surat', 'pkl');
      $this->db->or_where('jenis_surat', 'pkl_medis');
      $this->db->order_by("waktu_pembuatan","asc");
      $query = $this->db->get();
      return $query->result();

    }

    public function get_mail_pkl(){
      $this->db->select("*");
      $this->db->from("penelitian");
      $this->db->join("pengaju", "pengaju.id_pengaju = penelitian.id_pengaju","inner");
      $this->db->where('jenis_surat', 'pkl');
      $this->db->or_where('jenis_surat', 'pkl_medis');
      $this->db->order_by("status_mail","asc");
      $this->db->order_by("waktu_pembuatan","desc");
      $query = $this->db->get();
      return $query->result();
    }

    public function set_penempatan(){
      $data = array (
        'id_penempatan' => "p05",
        'id_penelitian' => $this->input->post('id_penelitian'),
        'id_pejabat' => $this->input->post('id_pejabat'),
        'bagian' => $this->input->post('bagian')
      );
      $this->db->insert('penempatan', $data);
    }

    public function delete_penelitian($id_penelitian){
      $this->db->delete('penelitian', array('id_penelitian'=>$id_penelitian));
    }

  }
