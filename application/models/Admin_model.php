<?php
  class Admin_model extends CI_Model {

    public function __construct(){
      $this->load->database();
    }

    public function get_admin(){
      $this->db->select("*");
      $this->db->from("admin");
      $this->db->order_by("id_admin","asc");
      $query = $this->db->get();
        if ($query->num_rows() >0){
          foreach ($query->result() as $data) {
            $penelitian[] = $data;
          }
        return $penelitian;
        }
    }

    public function get_admin_id($id = FALSE){
      $this->db->select("*");
      $this->db->from("admin");
      $this->db->where('id_admin', $id);
      $query = $this->db->get();
      return $query->row_array();
    }

    public function update_admin($id){
      $this->load->helper('url');
      $defpas = $this->input->post('password');

      if ($defpas == '') {
        $data = array (
          'nama_lengkap'=> $this->input->post('nama_lengkap'),
          'alamat'=> $this->input->post('alamat'),
          'tanggal_lahir'=> $this->input->post('tanggal_lahir'),
          'email'=> $this->input->post('email'),
          'username'=> $this->input->post('username'),
          'akses'=> $this->input->post('akses')
        );
      } else {
        $password = password_hash($defpas, PASSWORD_DEFAULT);
        $data = array (
          'nama_lengkap'=> $this->input->post('nama_lengkap'),
          'alamat'=> $this->input->post('alamat'),
          'tanggal_lahir'=> $this->input->post('tanggal_lahir'),
          'email'=> $this->input->post('email'),
          'username'=> $this->input->post('username'),
          'password'=> $password,
          'akses'=> $this->input->post('akses')
        );
      }

      $this->db->where('id_admin', $id);
      $this->db->update('admin', $data);
    }

    public function set_admin(){
      $defpas = $this->input->post('password');
      $password = password_hash($defpas, PASSWORD_DEFAULT);

      $data = array (
        'nama_lengkap'=> $this->input->post('nama_lengkap'),
        'alamat'=> $this->input->post('alamat'),
        'email'=> $this->input->post('email'),
        'username'=> $this->input->post('username'),
        'password'=> $password,
        'akses'=> $this->input->post('akses')
      );

      $this->db->insert('admin', $data);
    }

    public function delete_admin($id){
      $this->db->delete('admin', array('id_admin'=>$id));
    }
}
