<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Penelitian extends CI_Controller {

	public function __construct(){
    parent::__construct();
    $this->load->model('penelitian_model');
		$this->load->helper(array('form', 'url'));
    $this->load->helper('url_helper');
		$this->load->helper('date_helper');
		$this->load->library('session');
		$this->load->library('form_validation');
  }

	public function send_mail($id){

		$mail = $this->penelitian_model->get_mail($id);
		$jenis_surat = $this->penelitian_model->get_jenis_surat($id);

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
	  $this->email->from('znurzamanz@gmail.com', 'DINAS KESEHATAN KOTA BANDUNG');
	  $this->email->to($mail);
	  $this->email->subject('SURAT KETERANGAN');
	  $this->email->message('Dengan ini memberitahukan bahwa surat keterangan telah selesai dibuat,
													 silahkan ambil dibagian Umum. Untuk informasi lainnya bisa ditanyakan di bagian Umum.
													 Terima Kasih. ');

	  if (!$this->email->send()) {
			$this->session->set_flashdata('success_msg', 'E-Mail Gagal Dikirim');
			if ($jenis_surat == "penelitian") {
				redirect('penelitian/mail');
			} else {
				redirect('pkl/mail');
			}
		}
	  else {
			$this->penelitian_model->update_mail($id);
			$this->session->set_flashdata('success_msg', 'E-Mail Berhasil Di Kirim');
			if ($jenis_surat == "penelitian") {
				redirect('penelitian/mail');
			} else {
				redirect('pkl/mail');
			}
	  }
}

	public function beranda(){
		if ($this->session->userdata('username')) {
		$data = array('isi' => 'penelitian/beranda');
		$data['penelitian'] 		= $this->penelitian_model->get_beranda();
		$data['jum_pen'] 				= $this->penelitian_model->jum_penelitian();
		$data['jum_pkl'] 				= $this->penelitian_model->jum_pkl();
		$data['univ'] 					= $this->penelitian_model->get_univ();
		$data['univ_pkl'] 			= $this->penelitian_model->get_univ_pkl();
		$data['bulan_peng'] 		= $this->penelitian_model->get_peng_bulan();
		$data['jum_hari_ini'] 	= $this->penelitian_model->get_jumlah_hari_ini();
		$data['jum_minggu_ini'] = $this->penelitian_model->get_jumlah_minggu_ini();
		$data['jum_penempatan'] = $this->penelitian_model->get_jumlah_penempatan();
		$data['jum_bagian'] 		= $this->penelitian_model->get_jumlah_bagian();
		$data['pejabat'] 				= $this->penelitian_model->get_pejabat();
		$this->load->view('templates/themes', $data);
		}
		else{
			redirect('login');
		}
	}

	public function pengaturan(){
		if ($this->session->userdata('username')) {
		$data = array('isi' => 'penelitian/pengaturan');
		$data['pejabat'] = $this->penelitian_model->get_pejabat();
		$this->load->view('templates/themes', $data);
		}
		else{
			redirect('login');
		}
	}

	public function laporan(){
		if ($this->session->userdata('username')) {
			$data = array('isi' => 'penelitian/laporan');

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
		$data['penelitian'] = $this->penelitian_model->get_laporan();

		$html=$this->load->view('penelitian/laporan_pdf', $data, true);

		$this->load->library('m_pdf_lanscape');
		$pdf = $this->m_pdf_lanscape->load();
		$pdf->WriteHTML($html);
		$pdf->Output('laporan.pdf',I);
	}

	public function mail(){
		if ($this->session->userdata('username')) {
			$data = array('isi' => 'penelitian/mail');
			$data['penelitian'] = $this->penelitian_model->get_mail_penelitian();
			$this->load->view('templates/themes', $data);
		}
		else{
			redirect('login');
		}
	}


	public function view(){
		if ($this->session->userdata('username')) {
			$data = array('isi' => 'penelitian/lihat');
			$data['penelitian'] = $this->penelitian_model->get_penelitian();
			$this->load->view('templates/themes', $data);
		}
		else{
			redirect('login');
		}
	}

	public function tambah(){
		if ($this->session->userdata('username')) {
			$data['isi'] = 'penelitian/tambah';

			$kata = array('is_unique' => 'Kolom <b> "%s" </b> terjadi duplikasi data. ');
			$this->validasi();

			$jenis_surat=$this->input->post('jenis_surat');

			if ($jenis_surat=="penelitian") {
				$this->form_validation->set_rules('maksud','Maksud','required|is_unique[penelitian.maksud]',$kata);
			}elseif ($jenis_surat=="pkl") {
				$this->form_validation->set_rules('maksud','Maksud','required',$kata);
			}

			if ($this->form_validation->run()) {
				$this->penelitian_model->set_penelitian();
				$id=$this->penelitian_model->getLastInserted();
				$this->cetak($id);
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
			$data['isi'] = 'penelitian/update';

			$this->validasi();

			if ($this->form_validation->run() === FALSE) {
				$data['news_item'] = $this->penelitian_model->get_penelitian_id($id);
				$this->load->view('templates/themes', $data);
			}else {
				$this->penelitian_model->update_penelitian($id);
				$this->session->set_flashdata('success_msg', 'Data Berhasil Di Perbaharui');
				$jenis = $this->input->post('jenis_surat');
				if ($jenis == "penelitian") {
					redirect('penelitian/lihat');
				} else {
					redirect('pkl/lihat');
				}
			}
		}
		else{
			redirect('login');
		}
	}

	public function edit_sekertaris(){

		$this->penelitian_model->update_sekertaris();
		$this->session->set_flashdata('success_msg', 'Sekertaris Berhasil Di Perbaharui');
		redirect('penelitian/pengaturan');
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

	public function backup(){
	  // Load the DB utility class
	  $this->load->dbutil();
	  $prefs = array( 'format' => 'zip', // gzip, zip, txt
                  'filename' => 'penelitian_'.date('d_m_Y_H_i_s').'.sql',
                  'add_drop' => TRUE,
                  'add_insert'=> TRUE,
                  'newline' => "\n"
                );
     // Backup your entire database and assign it to a variable
     $backup =& $this->dbutil->backup($prefs);
     // Load the file helper and write the file to your server
     $this->load->helper('file');
     write_file('/path/to/'.'penelitian_'.date('d_m_Y_H_i_s').'.zip', $backup);
     // Load the download helper and send the file to your desktop
     $this->load->helper('download');
     force_download('penelitian_'.date('d_m_Y_H_i_s').'.zip', $backup);
	}

	public function restore(){

	//hapus dulu database jika proses restore gagal.
	$this->penelitian_model->hapus_db();
	$this->penelitian_model->buat_db();
	//upload dulu filenya
	$fupload = $_FILES['datafile'];
	$nama = $_FILES['datafile']['name'];

	if(isset($fupload)){
		$lokasi_file = $fupload['tmp_name'];
		$direktori="backupdb/$nama";
		move_uploaded_file($lokasi_file,"$direktori");
	}
	//restore database
	$isi_file=file_get_contents($direktori);
	$string_query=rtrim($isi_file, "\n;" );
	$array_query=explode(";", $string_query);
	foreach($array_query as $query){
		$this->db->query($query);
	}

	$this->load->view('penelitian/beranda');
	}

	public function validasi(){
		$katakata = array('required' => 'Kolom <b> "%s" </b> Harus di isi. ');
		$this->form_validation->set_rules('jenis_surat','Dibuat Untuk','required',$katakata);
		$this->form_validation->set_rules('institusi','Institusi','required',$katakata);
		$this->form_validation->set_rules('nama','Nama','required',$katakata);
		$this->form_validation->set_rules('alamat','Alamat','required',$katakata);
		$this->form_validation->set_rules('mulai','Mulai','required',$katakata);
		$this->form_validation->set_rules('selesai','Selesai','required',$katakata);
		$this->form_validation->set_rules('no_bkbpm','Nomor BKBPM','required',$katakata);
		$this->form_validation->set_rules('tanggal_bkbpm','Tanggal BKBPM','required',$katakata);
		$this->form_validation->set_rules('surat','Surat','required',$katakata);
		$this->form_validation->set_rules('no_surat','Nomor Surat','required',$katakata);
		$this->form_validation->set_rules('tanggal_surat','Tanggal Surat','required',$katakata);
	}

	// PENEMPATAN
	public function form_penempatan($id){
		if ($this->session->userdata('username')) {
			$data['isi'] = 'penelitian/form_penempatan';

			$this->form_validation->set_rules('bagian','Bagian','required');
			$this->form_validation->set_rules('id_pejabat','Pejabat','required');

			$bagian = $this->input->post('bagian');
			$pejabat = $this->input->post('id_pejabat');

			if ($this->form_validation->run() === FALSE) {
				$data['news_item'] = $this->penelitian_model->get_penempatan_id($id);
				$data['pejabat'] = $this->penelitian_model->get_pejabat_all();
				$this->load->view('templates/themes', $data);
			}else {
				$this->penelitian_model->set_penempatan($id);
				$this->session->set_flashdata('success_msg', 'Berhasil Ditempatkan');
				redirect('penelitian/penempatan');
			}
		}
		else{
			redirect('login');
		}
	}

	public function edit_penempatan($id){
		if ($this->session->userdata('username')) {
			$data['isi'] = 'penelitian/edit_penempatan';
			$data['news_item'] = $this->penelitian_model->get_penempatan_id($id);
			$data['pejabat'] = $this->penelitian_model->get_pejabat_all();
			$this->load->view('templates/themes', $data);
		}
		else{
			redirect('login');
		}
	}

	public function proses_edit_penempatan(){
		if ($this->session->userdata('username')) {
			$this->penelitian_model->update_penempatan();
			$this->session->set_flashdata('success_msg', 'Berhasil Dipindahkan');
			redirect('penelitian/penempatan');
		}
		else{
			redirect('login');
		}
	}

	public function set_penempatan(){
		if ($this->session->userdata('username')) {
			$this->penelitian_model->set_penempatan();
			$this->session->set_flashdata('success_msg', 'Berhasil Ditempatkan');
			redirect('penelitian/penempatan');
		}
		else{
			redirect('login');
		}
	}

	public function penempatan(){
		if ($this->session->userdata('username')) {
			$data = array('isi' => 'penelitian/penempatan');
			$data['penempatan'] = $this->penelitian_model->get_penempatan_belum();
			$data['penempatan_sudah'] = $this->penelitian_model->get_penempatan_sudah();
			$data['pejabat'] = $this->penelitian_model->get_pejabat_all();
			$this->load->view('templates/themes', $data);

		}
		else{
			redirect('login');
		}
	}

}
