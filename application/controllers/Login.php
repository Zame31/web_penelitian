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
		$data=array(
			'username'=>$this->input->post('username'),
			'password'=>$this->input->post('password')
			);

		$cek=$this->login_model->ambil_data($data);
		if($cek == 1) {
			$sesi=$this->session->set_userdata($data);
			$this->session->set_flashdata('success_msg', 'Selamat Datang, '.$data['username'].' !');
			redirect('penelitian/beranda');
			}
			else{
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
