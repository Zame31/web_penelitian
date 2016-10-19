<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Android extends CI_Controller {
	function __construct() {
		parent::__construct();
		$this->load->model('android_model');
		$this->load->helper('date_helper');
	}

	public function penelitian(){
			$data['android'] = $this->android_model->get_penelitian();
			$this->load->view('android/lihat', $data);
		}
		public function pkl(){
				$data['android'] = $this->android_model->get_pkl();
				$this->load->view('android/lihat', $data);
			}

}
