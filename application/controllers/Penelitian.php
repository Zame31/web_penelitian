<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Penelitian extends CI_Controller {

	public function __construct(){
    parent::__construct();
    $this->load->model('penelitian_model');
    $this->load->helper('url_helper');
		$this->load->helper('date_helper');
  }

	public function view(){
    $this->load->view('templates/header');
    $this->load->view('templates/menu');
		$data['penelitian'] = $this->penelitian_model->get_penelitian();
		$this->load->view('penelitian/lihat', $data);
		$this->load->view('templates/footer');
	}

	public function tambah(){
		$this->load->helper('form');
		$this->load->library('form_validation');

		$this->form_validation->set_rules('nama','Nama','required');
		$this->form_validation->set_rules('alamat','Alamat','required');

		$this->load->view('templates/header');
		$this->load->view('templates/menu');

		if ($this->form_validation->run() === FALSE) {
			$this->load->view('penelitian/tambah');
		}else {
			$this->penelitian_model->set_penelitian();

			$id=$this->penelitian_model->getLastInserted();

			$this->cetak($id);
		}

		$this->load->view('templates/footer');
	}

	public function update($id){
		$this->load->helper('form');
		$this->load->library('form_validation');

		$this->form_validation->set_rules('nama','Nama','required');
		$this->form_validation->set_rules('alamat','Alamat','required');

		$this->load->view('templates/header');
		$this->load->view('templates/menu');

		if ($this->form_validation->run() === FALSE) {
			$data['news_item'] = $this->penelitian_model->get_penelitian_id($id);
			$this->load->view('penelitian/update', $data);
		}else {
			$this->penelitian_model->update_penelitian($id);
			redirect('penelitian/lihat');
		}

		$this->load->view('templates/footer');
	}

	public function delete($id){
    $this->penelitian_model->delete_penelitian($id);
    redirect('penelitian/lihat');
  }

	public function cetak($id = NULL){
		$data['news_item'] = $this->penelitian_model->get_penelitian_id($id);

		$html=$this->load->view('penelitian/pdf', $data, true);

		$this->load->library('m_pdf');

		$pdf = $this->m_pdf->load();
		$pdf->WriteHTML($html);

		$pdf->Output('surat_keterangan.pdf',I);

	}

}
