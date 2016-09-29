<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pkl extends CI_Controller {
  public function __construct(){
    parent::__construct();
    $this->load->model('pkl_model');
		$this->load->helper(array('form', 'url'));
    $this->load->helper('url_helper');
		$this->load->helper('date_helper');
		$this->load->library('session');
		$this->load->library('form_validation');
  }

  public function view(){
		if ($this->session->userdata('username')) {
			$data = array('isi' => 'pkl/lihat');
			$data['penelitian'] = $this->pkl_model->get_pkl();
			$this->load->view('templates/themes', $data);
		}
		else{
			redirect('login');
		}
	}

  public function laporan(){
		if ($this->session->userdata('username')) {
			$data = array('isi' => 'pkl/laporan');

			$this->form_validation->set_rules('b1','Dari Bulan','required');
			$this->form_validation->set_rules('b2','Sampai Bulan','required');
			$this->form_validation->set_rules('t1','Dari Tahun','required');
			$this->form_validation->set_rules('t2','Sampai Tahun','required');

			if ($this->form_validation->run() === FALSE) {
				$this->load->view('templates/themes', $data);
			}else {
					$this->cetak_laporan();
			}
		}
		else{
			redirect('login');
		}
	}

	public function cetak_laporan(){
		$data['b1']=$this->input->post('b1');
		$data['b2']=$this->input->post('b2');
		$data['t1']=$this->input->post('t1');
		$data['t2']=$this->input->post('t2');
		$data['penelitian'] = $this->pkl_model->get_laporan();

		$html=$this->load->view('pkl/laporan_pdf', $data, true);

		$this->load->library('m_pdf_lanscape');
		$pdf = $this->m_pdf_lanscape->load();
		$pdf->WriteHTML($html);
		$pdf->Output('laporan.pdf',I);
	}


}
