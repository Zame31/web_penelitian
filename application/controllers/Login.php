<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Login extends CI_Controller {
	function __construct() {
		parent::__construct();
		$this->load->model('login_model');
	}

	function index() {
		$data=array('isi' =>'admin/login');
		$this->load->view('templates/themes_login', $data);
	}

	function validasi() {
		$pas = $this->input->post('password');
		$user = $this->input->post('username');

		$admin = $this->login_model->ambil_data($user);

		if ($admin > 0) {
			foreach ($admin as $baru) {
				$hash_pas = $baru->password;
				$hak_akses = $baru->akses;
			}
		}else {
			$hash_pas = '';
			$hak_akses = '';
		}

		$newdata = array(
			'username'  => $user,
      'akses'     => $hak_akses
		);

 		if (password_verify($pas, $hash_pas)) {
			$sesi=$this->session->set_userdata($newdata);
			$this->session->set_flashdata('success_msg', 'Selamat Datang, '.$newdata['username'].'!');
			redirect('penelitian/beranda');
		}else {
			$this->session->set_flashdata('fail', 'Username atau Password Salah!');
			$data=array('isi' =>'admin/login');
			$this->load->view('templates/themes_login', $data);
 		}
		}

	function logout() {
		session_destroy();
		redirect('login');
	}
}
