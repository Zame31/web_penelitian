<?php
    class Penelitian_model extends CI_Model {

      public function __construct(){
        $this->load->database();
      }

      public function get_mail($id){
        $this->db->select("mail");
        $this->db->from("pengaju");
        $this->db->join("penelitian", "pengaju.id_pengaju = penelitian.id_pengaju","inner");
        $this->db->where('id_penelitian', $id);
        $query = $this->db->get();
        return $query->row_array();
      }
      public function get_jenis_surat($id){
        $this->db->select("jenis_surat");
        $this->db->from("penelitian");
        $this->db->where('id_penelitian', $id);
        $query = $this->db->get();
        return $query->row_array();
      }
      public function get_penelitian(){
        $this->db->select("*");
        $this->db->from("penelitian");
        $this->db->join("pengaju", "pengaju.id_pengaju = penelitian.id_pengaju","inner");
        $this->db->where("jenis_surat", "penelitian");
        $this->db->order_by("waktu_pembuatan","asc");
        $query = $this->db->get();
        return $query->result();
      }

      public function get_mail_penelitian(){
        $this->db->select("*");
        $this->db->from("penelitian");
        $this->db->join("pengaju", "pengaju.id_pengaju = penelitian.id_pengaju","inner");
        $this->db->where("jenis_surat", "penelitian");
        $this->db->order_by("status_mail","asc");
        $this->db->order_by("waktu_pembuatan","desc");
        $query = $this->db->get();
        return $query->result();
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
        $this->db->where('jenis_surat', 'penelitian');
        $this->db->order_by("waktu_pembuatan","asc");
        $query = $this->db->get();
        return $query->result();
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

      public function update_mail($id){
        $data = array (
          'status_mail'=> 'sudah'
        );
        $this->db->where('id_penelitian', $id);
        $this->db->update('penelitian', $data);
      }

      public function set_penelitian(){
      //Cek Apakah Pengaju Sudah Ada
        $nama = $this->input->post('nama');
        $alamat = $this->input->post('alamat');
        $this->db->select('id_pengaju');
        $this->db->from('pengaju');
        $this->db->where('nama', $nama);
        $this->db->where('alamat', $alamat);
        $query = $this->db->get();
        $data_z = $query->result_array();
        $num = $query->num_rows();

      //cekbox
        if(!empty($this->input->post('hobi'))){
          $hobinya='';
          $hobi_dipilih= $this->input->post('hobi');

          for($b=0;$b<count($this->input->post('hobi'));$b++){
            $hobinya=$hobinya.$hobi_dipilih[$b].',';
            $hobi_to_sql=substr(strrev($hobinya),1);
          }
        } else {
          $hobi_to_sql = '';
        }

        $data_pengaju = array (
          //nama table database => nama dari form
          'nama'      => $this->input->post('nama'),
          'alamat'    => $this->input->post('alamat'),
          'institusi' => $this->input->post('institusi'),
          'mail'      => $this->input->post('mail')
        );

        $data_penelitian = array (
          'waktu_pembuatan' => date("Y-m-d", strtotime($this->input->post('dibuat'))),
          'jenis_surat'     => $this->input->post('jenis_surat'),
          'maksud'          => $this->input->post('maksud'),
          'waktu_mulai'     => date("Y-m-d", strtotime($this->input->post('mulai'))),
          'waktu_selesai'   => date("Y-m-d", strtotime($this->input->post('selesai'))),
          'no_bkbpm'        => $this->input->post('no_bkbpm'),
          'tanggal_bkbpm'   => date("Y-m-d", strtotime($this->input->post('tanggal_bkbpm'))),
          'surat'           => $this->input->post('surat'),
          'no_surat'        => $this->input->post('no_surat'),
          'tanggal_surat'   => date("Y-m-d", strtotime($this->input->post('tanggal_surat'))),
          'tembusan'        => $hobi_to_sql,
          'id_pejabat'      => "P01"
        );

        // jika data pengaju ada
        if ($num > 0) {
          $data_penelitian['id_pengaju'] = $data_z[0]['id_pengaju'];
          $this->db->insert('penelitian', $data_penelitian);
        }
        // jika data pengaju tidak ada
        else {
          $this->db->insert('pengaju', $data_pengaju);
          $data_penelitian['id_pengaju'] = $this->db->insert_id();
          $this->db->insert('penelitian', $data_penelitian);
        }
      }

      public function delete_penelitian($id_penelitian){
        $this->db->delete('penelitian', array('id_penelitian'=>$id_penelitian));
      }

      public function update_penelitian($id){
        $this->load->helper('url');

        $id_pengaju = $this->input->post('id_pengaju');

        $data1 = array (
          'nama'      => $this->input->post('nama'),
          'alamat'    => $this->input->post('alamat'),
          'institusi' => $this->input->post('institusi'),
          'mail'      => $this->input->post('mail')
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
          'waktu_pembuatan' => date("Y-m-d", strtotime($this->input->post('dibuat'))),
          'jenis_surat'     => $this->input->post('jenis_surat'),
          'maksud'          => $this->input->post('maksud'),
          'waktu_mulai'     => date("Y-m-d", strtotime($this->input->post('mulai'))),
          'waktu_selesai'   => date("Y-m-d", strtotime($this->input->post('selesai'))),
          'no_bkbpm'        => $this->input->post('no_bkbpm'),
          'tanggal_bkbpm'   => date("Y-m-d", strtotime($this->input->post('tanggal_bkbpm'))),
          'surat'           => $this->input->post('surat'),
          'no_surat'        => $this->input->post('no_surat'),
          'tanggal_surat'   => date("Y-m-d", strtotime($this->input->post('tanggal_surat'))),
          'tembusan'        => $hobi_to_sql,
          'id_pejabat'      => $id_pejabat,
          'id_pengaju'      => $id_pengaju

        );
        $this->db->where('id_penelitian', $id);
        $this->db->update('penelitian', $data);

      }

      public function update_sekertaris(){
        $this->load->helper('url');

        $id_pejabat = "P01";
        $jabatan = "Sekretaris Dinas Kesehatan Kota Bandung";

        $data1 = array (
          'nama_pejabat'  => $this->input->post('nama_pejabat'),
          'jabatan'       => $jabatan,
          'golongan'      => $this->input->post('golongan'),
          'nip'           => $this->input->post('nip')
        );
        $this->db->where('id_pejabat', $id_pejabat);
        $this->db->update('pejabat', $data1);
      }

      public function get_beranda(){
        $query = $this->db->query('SELECT id_penelitian FROM penelitian');
        return $query->num_rows();
      }

      public function jum_penelitian(){
        $query = $this->db->query('SELECT id_penelitian
                                   FROM penelitian
                                   WHERE jenis_surat = "penelitian"');
        return $query->num_rows();
      }

      public function jum_pkl(){
        $query = $this->db->query('SELECT id_penelitian
                                   FROM penelitian
                                   WHERE jenis_surat = "pkl" or jenis_surat = "pkl_medis"');
        return $query->num_rows();
      }

      public function get_pejabat(){
        $query = $this->db->query('SELECT * FROM pejabat WHERE id_pejabat="P01"');
        return $query->result_array();
      }

      public function get_univ(){
        $query = $this->db->query('SELECT DISTINCT institusi,COUNT(institusi) as Jumlah
                                   FROM pengaju
                                   JOIN penelitian ON penelitian.id_pengaju = pengaju.id_pengaju
                                   WHERE jenis_surat = "penelitian"
                                   GROUP BY institusi ORDER BY Jumlah
                                   DESC LIMIT 5');
        return $query->result_array();
      }
      public function get_univ_pkl(){
        $query = $this->db->query('SELECT DISTINCT institusi,COUNT(institusi) as Jumlah
                                   FROM pengaju
                                   JOIN penelitian ON penelitian.id_pengaju = pengaju.id_pengaju
                                   WHERE jenis_surat ="pkl" or jenis_surat = "pkl_medis"
                                   GROUP BY institusi ORDER BY Jumlah
                                   DESC LIMIT 5');
        return $query->result_array();
      }

      public function get_peng_bulan(){
        $query = $this->db->query('SELECT MONTH(waktu_pembuatan) as bulan,COUNT(waktu_pembuatan)as jumlah
                                   FROM penelitian
                                   GROUP BY MONTH(waktu_pembuatan) ');
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
      public function get_jumlah_penempatan(){
        $query = $this->db->query(
          'SELECT nama,institusi,jenis_surat,waktu_mulai,waktu_selesai,bagian
           FROM pengaju
           JOIN penelitian ON penelitian.id_pengaju = pengaju.id_pengaju
           JOIN penempatan ON penelitian.id_penelitian = penempatan.id_penelitian
           WHERE CURDATE() BETWEEN waktu_mulai AND waktu_selesai
            ');
        return $query->result_array();
      }

      public function get_jumlah_bagian(){
        $query = $this->db->query(
          'SELECT jabatan, SUM(CASE WHEN bagian = jabatan THEN 1 ELSE 0 END) as jumlah,
                          (CASE WHEN SUM(CASE WHEN bagian = jabatan THEN 1 ELSE 0 END) >= 3 THEN "Penuh" ELSE "tersedia" END) as keterangan
            FROM pejabat, penempatan,penelitian
            WHERE penelitian.id_penelitian = penempatan.id_penelitian AND
            CURDATE() BETWEEN waktu_mulai AND waktu_selesai
            GROUP BY jabatan
          ');
        return $query->result_array();
      }





      function getLastInserted() {
        return $this->db->insert_id();
      }
      // PENEMPATAN
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
            WHERE jenis_surat like "penelitian" AND
            (bagian IS NULL OR nama_pejabat IS NULL)
            ORDER BY waktu_pembuatan
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
            WHERE jenis_surat like "penelitian"
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

      public function set_penempatan(){
        $data = array (
          'id_penempatan' => "p05",
          'id_penelitian' => $this->input->post('id_penelitian'),
          'id_pejabat' => $this->input->post('id_pejabat'),
          'bagian' => $this->input->post('bagian')
        );
        $this->db->insert('penempatan', $data);
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


  }
 ?>
