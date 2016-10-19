<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Admin extends CI_Controller {
	function __construct() {
		parent::__construct();
		$this->load->model('admin_model');
	}

  public function view(){
    if ($this->session->userdata('username')) {
      $data = array('isi' => 'admin/lihat');
      $data['admin'] = $this->admin_model->get_admin();
      $this->load->view('templates/themes', $data);
    }
    else{
      redirect('login');
    }
  }

  public function tambah(){
		if ($this->session->userdata('username')) {
			$data['isi'] = 'admin/tambah';
			$kata = array('is_unique' => '<b> "%s" </b> Sudah Digunakan ');
			$this->form_validation->set_rules('username','Username','required|is_unique[admin.username]',$kata);

			if ($this->form_validation->run()) {
				$this->admin_model->set_admin();
				$this->session->set_flashdata('success_msg', 'Admin Berhasil Ditambahkan');
        redirect('admin/lihat');
	    }
			else {
	    	$this->load->view('templates/themes', $data);
	    }
		}
		else{
			redirect('login');
		}
	}

	public function update($id){
		if ($this->session->userdata('username')) {
			$data['isi'] = 'admin/update';


			$this->form_validation->set_rules('username','Username','required');

			if ($this->form_validation->run() === FALSE) {
				$data['news_item'] = $this->admin_model->get_admin_id($id);
				$this->load->view('templates/themes', $data);
			}else {
				$this->admin_model->update_admin($id);
				$this->session->set_flashdata('success_msg', 'Data Berhasil Di Perbaharui');
				redirect('admin/lihat');
			}
		}
		else{
			redirect('login');
		}
	}

	public function delete($id){
    $this->admin_model->delete_admin($id);
		$this->session->set_flashdata('success_msg', 'Data Berhasil Di Hapus');
    redirect('admin/lihat');
  }

}
