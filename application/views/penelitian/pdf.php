<link rel="stylesheet" href="<?php echo base_url() ?>assets/css/print.css"/>
<img src="<?php echo base_url('assets/img/kop.png'); ?>" />


<div class="content">
  <div class="head">
    <u>SURAT KETERANGAN</u><br>
    <span>NOMOR : 070/29392-Dinkes.</span>
  </div>
  <br><br>

  <table>
    <tr>
      <td width="40px" style="vertical-align:top">1. </td>
      <td>
        Yang bertanda tangan di bawah ini :
        <table>
          <tr>
            <td width="150px">a. Nama </td>
            <td>:</td>
            <td>dr.Hj.NINA MANAROSANA.R.M.Kes.</td>
          </tr>
          <tr>
            <td>b. Jabatan </td>
            <td>:</td>
            <td>Sekretaris Dinas Kesehatan Kota Bandung</td>
          </tr>
        </table>
        Dengan ini menerangkan bahwa :
        <table>
          <tr>
            <td width="150px">c. Nama </td>
            <td>:</td>
            <td><?php echo $news_item['nama']; ?></td>
          </tr>
          <tr>
            <td>d. Alamat </td>
            <td>:</td>
            <td><?php echo $news_item['alamat']; ?></td>
          </tr>
          <tr>
            <td>e. Pekerjaan / NPM </td>
            <td>:</td>
            <td><?php echo $news_item['pekerjaan']; ?></td>
          </tr>
          <tr>
            <td>f. Institusi Pendidikan </td>
            <td>:</td>
            <td><?php echo $news_item['institusi']; ?></td>
          </tr>
          <tr>
            <td>g. Maksud </td>
            <td>:</td>
            <td><?php echo $news_item['maksud']; ?></td>
          </tr>
          <tr>
            <td>g. Waktu Pelaksanaan </td>
            <td>:</td>
            <td>Terhitung mulai tanggal <?php echo  tgl_indo($news_item['waktu_mulai']);?> s.d  <?php echo tgl_indo($news_item['waktu_selesai']);?></td>
          </tr>
        </table>
      </td>
    </tr>
  </table>

  <table>
    <tr>
      <td width="40px" style="vertical-align:top">2.</td>
      <td>
        Surat Keterangan ini diterbitkan atas dasar :
       <br>a.	Surat pengantar dari Kepala Badan Kesatuan Bangsa dan Pemberdayaan Masyarakat Kota Bandung (BKBPM) Nomor :
        <?php echo $news_item['no_bkbpm']; ?> , <?php echo tgl_indo($news_item['tanggal_bkbpm']); ?>
       <br>b. Surat Pengantar dari Fak.Teknik dan Ilmu komputer UNIKOM Bandung Tanggal 1
       Agustus 2016 Nomor : 172/KP/Ka.Prodi-FTIK-IFSI/VII/2016
       <br>
       Berhubungan dengan maksud bersangkutan, diminta agar unit kerja yang terkait memberikan bantuan serta fasilitas seperlunya sepanjang tidak mengganggu kelancaran dan menyangkut rahasia jabatan.
       <br>
     </td>
   </tr>
  </table>
  <br>
   <div class="tanda-tangan">
     ditetapkan di : Bandung <br>

     Pada tanggal : <?php echo tgl_indo(date('Y-m-d'));?>
 <br>
     A.n.KEPALA DINAS KESEHATAN <br>
     KOTA BANDUNG <br>
     Sekretaris
     <br>
     <br>
     <br>
     <br>
     <u>dr.Hj.NINA MANAROSANA.R.M.Kes.</u><br>
     Pembina Tk.I <br>
     NIP.196603191997032001
   </div>
  <br>
  <table class="catatan">
   <tr>
     <td width="40px" style="vertical-align:top"></td>
     <td>
       <u>CATATAN</u><br>
       -Agar membuat laporan hasil kegiatan melalui Kepala sub.Bagian Umum Dinas
       Kesehatan Kota Bandung
       <br><br>
       Tebusan :<br>
       1.	Kepala Dinas Kesehatan Kota Bandung  (Sebagai Laporan)<br>
       2.	Kepala Bidang Pelayanan Kesehatan <br>
       3.	Kepala Bidang Sumber Daya Kesehatan <br>
       4.	Kepala Bidang P2PL <br>
       5.	Kepala UPT Puskesmas Cipamokolan

    </td>
  </tr>
  </table>

</div>
