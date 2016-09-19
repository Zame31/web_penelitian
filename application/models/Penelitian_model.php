<?php
    class Penelitian_model extends CI_Model {

      public function __construct(){
        $this->load->database();
      }

      public function get_beranda(){
        $query = $this->db->query('SELECT * FROM penelitian');
        return $query->num_rows();
      }

      public function get_univ(){
        $query = $this->db->query('SELECT DISTINCT institusi,COUNT(institusi) as Jumlah FROM pengaju GROUP BY institusi ORDER BY Jumlah DESC LIMIT 5');
        return $query->result_array();
      }

      public function get_peng_bulan(){
        $query = $this->db->query('SELECT MONTH(waktu_pembuatan) as bulan ,COUNT(waktu_pembuatan)as jumlah FROM `penelitian` GROUP BY MONTH(waktu_pembuatan) ');
        return $query->result_array();
      }
      public function get_jumlah_hari_ini(){
        $query = $this->db->query('SELECT id_penelitian
                                   FROM penelitian
                                   WHERE DATE(waktu_pembuatan) = CURDATE()');
        return $query->num_rows();
      }
      public function get_jumlah_minggu_ini(){
        $query = $this->db->query('SELECT waktu_pembuatan
                                   FROM penelitian
                                   WHERE YEARWEEK(waktu_pembuatan)=YEARWEEK(NOW())');
        return $query->num_rows();
      }
      public function get_penelitian(){
        $this->db->select("*");
        $this->db->from("penelitian");
        $this->db->join("pengaju", "pengaju.id_pengaju = penelitian.id_pengaju","inner");

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
        $this->db->order_by("waktu_pembuatan","asc");
        $query = $this->db->get();

        if ($query->num_rows() >0){
            foreach ($query->result() as $data) {
              $penelitian[] = $data;
            }
        return $penelitian;
        }

      }

      public function get_penelitian_id($id = FALSE){
        $this->db->select("*");
        $this->db->from("penelitian");
        $this->db->join("pengaju", "pengaju.id_pengaju = penelitian.id_pengaju","inner");
        $this->db->join("pejabat", "pejabat.id_pejabat = penelitian.id_pejabat","inner");
        $this->db->where('id_penelitian', $id);
        $query = $this->db->get();
        return $query->row_array();
      }

      public function set_penelitian(){
        $this->load->helper('url');

        $nama = $this->input->post('nama');
        $alamat = $this->input->post('alamat');
        $this->db->select('id_pengaju');
        $this->db->from('pengaju');
        $this->db->where('nama', $nama);
        $this->db->where('alamat', $alamat);
        $query = $this->db->get();
        $data_z = $query->result_array();
        $num = $query->num_rows();

        // jika data pengaju ada
        if ($num > 0) {

          $id_pejabat = "P01";

          if(!empty($this->input->post('hobi'))){
            $hobinya='';
            $jml_data=count($hobi);
            $hobi_dipilih= $this->input->post('hobi');

            for($b=0;$b<count($this->input->post('hobi'));$b++){
              $hobinya=$hobinya.$hobi_dipilih[$b].',';
              $hobi_to_sql=substr(strrev($hobinya),1);
            }
          } else {
            $hobi_to_sql = '';
          }

          $data = array (
            'waktu_pembuatan'=> date("Y-m-d", strtotime($this->input->post('dibuat'))),
            'jenis_surat'=> $this->input->post('jenis_surat'),
            'maksud'=> $this->input->post('maksud'),
            'waktu_mulai'=> date("Y-m-d", strtotime($this->input->post('mulai'))),
            'waktu_selesai'=> date("Y-m-d", strtotime($this->input->post('selesai'))),
            'no_bkbpm'=> $this->input->post('no_bkbpm'),
            'tanggal_bkbpm'=> date("Y-m-d", strtotime($this->input->post('tanggal_bkbpm'))),
            'surat'=> $this->input->post('surat'),
            'no_surat'=> $this->input->post('no_surat'),
            'tanggal_surat'=> date("Y-m-d", strtotime($this->input->post('tanggal_surat'))),
            'tembusan'=> $hobi_to_sql,
            'id_pejabat'=> $id_pejabat,
            'id_pengaju'=> $data_z[0]['id_pengaju']
          );
          $this->db->insert('penelitian', $data);
        }

        // jika data pengaju tidak ada
        else {
          $data1 = array (
            //nama table database => nama dari form
            'nama'=> $this->input->post('nama'),
            'alamat'=> $this->input->post('alamat'),
            'institusi'=> $this->input->post('institusi')
          );

          $this->db->insert('pengaju', $data1);

          $id_pejabat = "P01";



          if(!empty($this->input->post('hobi'))){
            $hobinya='';
            $jml_data=count($hobi);
            $hobi_dipilih= $this->input->post('hobi');

            for($b=0;$b<count($this->input->post('hobi'));$b++){
              $hobinya=$hobinya.$hobi_dipilih[$b].',';
              $hobi_to_sql=substr(strrev($hobinya),1);
            }
          } else {
            $hobi_to_sql = '';
          }

          $data = array (
            'waktu_pembuatan'=> date("Y-m-d", strtotime($this->input->post('dibuat'))),
            'jenis_surat'=> $this->input->post('jenis_surat'),
            'maksud'=> $this->input->post('maksud'),
            'waktu_mulai'=> date("Y-m-d", strtotime($this->input->post('mulai'))),
            'waktu_selesai'=> date("Y-m-d", strtotime($this->input->post('selesai'))),
            'no_bkbpm'=> $this->input->post('no_bkbpm'),
            'tanggal_bkbpm'=> date("Y-m-d", strtotime($this->input->post('tanggal_bkbpm'))),
            'surat'=> $this->input->post('surat'),
            'no_surat'=> $this->input->post('no_surat'),
            'tanggal_surat'=> date("Y-m-d", strtotime($this->input->post('tanggal_surat'))),
            'tembusan'=> $hobi_to_sql,
            'id_pejabat'=> $id_pejabat,
            'id_pengaju'=> $this->db->insert_id()

          );

          $this->db->insert('penelitian', $data);
        }
      }

      function getLastInserted() {
        return $this->db->insert_id();
      }

      public function delete_penelitian($id_penelitian){
        $this->db->delete('penelitian', array('id_penelitian'=>$id_penelitian));
      }

      public function update_penelitian($id){
        $this->load->helper('url');

        $id_pengaju = $this->input->post('id_pengaju');

        $data1 = array (
          //nama table database => nama dari form
          'nama'=> $this->input->post('nama'),
          'alamat'=> $this->input->post('alamat'),
          'institusi'=> $this->input->post('institusi')
        );
        $this->db->where('id_pengaju', $id_pengaju);
        $this->db->update('pengaju', $data1);

        $id_pejabat = "P01";

        if(!empty($this->input->post('hobi'))){
          $hobinya='';
          $jml_data=count($hobi);
          $hobi_dipilih= $this->input->post('hobi');

          for($b=0;$b<count($this->input->post('hobi'));$b++){
            $hobinya=$hobinya.$hobi_dipilih[$b].',';
            $hobi_to_sql=substr(strrev($hobinya),1);
          }
        } else {
          $hobi_to_sql = '';
        }


        $data = array (
          'waktu_pembuatan'=> date("Y-m-d", strtotime($this->input->post('dibuat'))),
          'jenis_surat'=> $this->input->post('jenis_surat'),
          'maksud'=> $this->input->post('maksud'),
          'waktu_mulai'=> date("Y-m-d", strtotime($this->input->post('mulai'))),
          'waktu_selesai'=> date("Y-m-d", strtotime($this->input->post('selesai'))),
          'no_bkbpm'=> $this->input->post('no_bkbpm'),
          'tanggal_bkbpm'=> date("Y-m-d", strtotime($this->input->post('tanggal_bkbpm'))),
          'surat'=> $this->input->post('surat'),
          'no_surat'=> $this->input->post('no_surat'),
          'tanggal_surat'=> date("Y-m-d", strtotime($this->input->post('tanggal_surat'))),
          'tembusan'=> $hobi_to_sql,
          'id_pejabat'=> $id_pejabat,
          'id_pengaju'=> $id_pengaju

        );
        $this->db->where('id_penelitian', $id);
        $this->db->update('penelitian', $data);

      }
    }


 ?>
