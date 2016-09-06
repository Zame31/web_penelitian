<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Penelitian extends CI_Controller {

	public function __construct(){
    parent::__construct();
    $this->load->model('penelitian_model');
    $this->load->helper('url_helper');
		$this->load->helper('date_helper');
		$this->load->library('session');
  }
	public function validasi(){
		$katakata = array('required' => 'Kolom <b> "%s" </b> Harus di isi. ');
		$this->form_validation->set_rules('jenis_surat','Dibuat Untuk','required',$katakata);
		$this->form_validation->set_rules('institusi','Institusi','required',$katakata);
		$this->form_validation->set_rules('nama','Nama','required',$katakata);
		$this->form_validation->set_rules('alamat','Alamat','required',$katakata);
		$this->form_validation->set_rules('maksud','Maksud','required|is_unique[penelitian.maksud]',$katakata);
		$this->form_validation->set_rules('mulai','Mulai','required',$katakata);
		$this->form_validation->set_rules('selesai','Selesai','required',$katakata);
		$this->form_validation->set_rules('no_bkbpm','Nomor BKBPM','required',$katakata);
		$this->form_validation->set_rules('tanggal_bkbpm','Tanggal BKBPM','required',$katakata);
		$this->form_validation->set_rules('surat','Surat','required',$katakata);
		$this->form_validation->set_rules('no_surat','Nomor Surat','required',$katakata);
		$this->form_validation->set_rules('tanggal_surat','Tanggal Surat','required',$katakata);
	}

	public function laporan(){
		$this->load->helper('form');
		$this->load->library('form_validation');

		$this->form_validation->set_rules('b1','Dari Bulan','required', array('required' => 'Kolom <b> "%s" </b> Harus di isi. '));
		$this->form_validation->set_rules('b2','Sampai Bulan','required', array('required' => 'Kolom <b> "%s" </b> Harus di isi. '));
		$this->form_validation->set_rules('t1','Dari Tahun','required', array('required' => 'Kolom <b> "%s" </b> Harus di isi. '));
		$this->form_validation->set_rules('t2','Sampai Tahun','required', array('required' => 'Kolom <b> "%s" </b> Harus di isi. '));

		$this->load->view('templates/header');
		$this->load->view('templates/menu');

		if ($this->form_validation->run() === FALSE) {
			$this->load->view('penelitian/laporan');
		}else {
				$this->cetak_laporan();
		}
		$this->load->view('templates/footer');
	}

	public function cetak_laporan(){
		$data['b1']=$this->input->post('b1');
		$data['b2']=$this->input->post('b2');
		$data['t1']=$this->input->post('t1');
		$data['t2']=$this->input->post('t2');
		$data['penelitian'] = $this->penelitian_model->get_laporan();

		$html=$this->load->view('penelitian/laporan_pdf', $data, true);

		$this->load->library('m_pdf_lanscape');

		$pdf = $this->m_pdf_lanscape->load();
		$pdf->WriteHTML($html);

		$pdf->Output('laporan.pdf',I);
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

		$this->validasi();

		// $nama = $this->input->post('nama');
		// $alamat = $this->input->post('alamat');
		// $this->db->select('id_pengaju');
		// $this->db->from('pengaju');
		// $this->db->where('nama', $nama);
		// $this->db->where('alamat', $alamat);
		// $query = $this->db->get();
		// $data = $query->result_array();
		//
		// $num = $query->num_rows();

		$this->load->view('templates/header');
		$this->load->view('templates/menu');

		if ($this->form_validation->run()) {
			$this->penelitian_model->set_penelitian();
			$id=$this->penelitian_model->getLastInserted();
			$this->cetak($id);
    }
		else {
    	$this->load->view('penelitian/tambah');
    }


		$this->load->view('templates/footer');
	}

	public function update($id){
		$this->load->helper('form');
		$this->load->library('form_validation');

		$this->form_validation->set_rules('nama','Nama','required|callback_check_duplicate_nama['.$post_nama .']');
		$this->form_validation->set_rules('alamat','Alamat','required');

		$this->form_validation->set_message('check_duplicate_nama', 'This nama is already exist. Please write a new nama.');


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
		$this->session->set_flashdata('success_msg', 'Data Berhasil Di Hapus');
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
