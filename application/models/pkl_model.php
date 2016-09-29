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
        if ($query->num_rows() >0){
            foreach ($query->result() as $data) {
                # code...
                $penelitian[] = $data;
            }
        return $penelitian; //hasil dari semua proses ada dimari
        }
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

      if ($query->num_rows() >0){
          foreach ($query->result() as $data) {
            $penelitian[] = $data;
          }
      return $penelitian;
      }

    }
  }
