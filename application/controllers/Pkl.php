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

  public function mail(){
		if ($this->session->userdata('username')) {
			$data = array('isi' => 'penelitian/mail');
			$data['penelitian'] = $this->pkl_model->get_mail_pkl();
			$this->load->view('templates/themes', $data);
		}
		else{
			redirect('login');
		}
	}

  public function send_mail($id){

		$mail = $this->penelitian_model->get_mail($id);

	  $config = Array(
	  'protocol' => 'smtp',
	  'smtp_host' => 'ssl://smtp.googlemail.com',
	  'smtp_port' => 465,
	  'smtp_user' => 'znurzamanz@gmail.com',
	  'smtp_pass' => 'focusandstudying',
		'mailtype' => 'html',
	  'charset' => 'iso-8859-1',
	  'wordwrap' => TRUE
	);
	  $this->load->library('email', $config);
		$this->email->set_newline("\r\n");
	  $this->email->from('znurzamanz@gmail.com', 'Zamzam');
	  $this->email->to($mail);
	  $this->email->subject('Dinas Kesehatan Kota Bandung');
	  $this->email->message('Cobaan Email Gan');

	  if (!$this->email->send()) {
			$this->session->set_flashdata('success_msg', 'E-Mail Gagal Dikirim');
			redirect('pkl/mail');
		}
	  else {
			$this->penelitian_model->update_mail($id);
			$this->session->set_flashdata('success_msg', 'E-Mail Berhasil Di Kirim');
			redirect('pkl/mail');
	  }
}

  public function delete($id){
    $this->pkl_model->delete_penelitian($id);
		$this->session->set_flashdata('success_msg', 'Data Berhasil Di Hapus');
    redirect('pkl/lihat');
  }



}
