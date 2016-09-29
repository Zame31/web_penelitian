<link rel="stylesheet" href="<?php echo base_url() ?>assets/css/print.css"/>

<div class="kop">
  <img src="<?php echo base_url('assets/img/kop2.png'); ?>" />
</div>


<div class="content">
  <div class="head">
    <u>SURAT KETERANGAN</u><br>
    <span>NOMOR : 070 /</span> <span class="gap">aaaaaa</span>- Dinkes.
  </div>
  <br><br>

  <table>
    <tr>
      <td width="20px" style="vertical-align:top">1. </td>
      <td>
        Yang bertanda tangan di bawah ini :
        <table>
          <tr>
            <td width="150px">a. Nama </td>
            <td>:</td>
            <td><?php echo $news_item['nama_pejabat']; ?></td>
          </tr>
          <tr>
            <td>b. Jabatan </td>
            <td>:</td>
            <td><?php echo $news_item['jabatan']; ?></td>
          </tr>
        </table>
        Dengan ini menerangkan bahwa :
        <table>
          <tr>
            <td width="150px">a. Nama </td>
            <td>:</td>
            <td><?php echo $news_item['nama']; ?></td>
          </tr>
          <tr>
            <td>b. Alamat </td>
            <td>:</td>
            <td><?php echo $news_item['alamat']; ?></td>
          </tr>
          <tr>
            <td>c. Maksud </td>
            <td>:</td>
            <td><?php echo $news_item['maksud']; ?></td>
          </tr>
          <tr>
            <td>d. Waktu Pelaksanaan </td>
            <td>:</td>
            <td>Terhitung mulai tanggal <?php echo  tgl_indo($news_item['waktu_mulai']);?> s.d  <?php echo tgl_indo($news_item['waktu_selesai']);?></td>
          </tr>
        </table>
      </td>
    </tr>
  </table>

  <table>
    <tr>
      <td></td>
      <td>
        Surat Keterangan ini dibuat atas dasar :
        <table>
          <tr>
            <td style="vertical-align:top">a.</td>
            <td align="justify">Surat pengantar dari Kepala Badan Kesatuan Bangsa dan Pemberdayaan Masyarakat Kota Bandung (BKBPM) Nomor :
             <?php echo $news_item['no_bkbpm']; ?> , <?php echo tgl_indo($news_item['tanggal_bkbpm']); ?></td>
          </tr>
          <tr>
            <td style="vertical-align:top">b.</td>
            <td align="justify">Surat permohonan dari <?php echo $news_item['surat']; ?>
              Nomor: <?php echo $news_item['no_surat']; ?>,
              Tanggal <?php echo tgl_indo($news_item['tanggal_surat']); ?>
            </td>
          </tr>
        </table>

     </td>
   </tr>
   <tr>
     <td width="20px" style="vertical-align:top">2.</td>
     <td align="justify">
       Berhubungan dengan maksud bersangkutan, diminta agar unit kerja yang terkait memberikan bantuan serta fasilitas seperlunya sepanjang tidak mengganggu kelancaran dan menyangkut rahasia jabatan.
     </td>
   </tr>
  </table>
  <br>
   <div class="tanda-tangan">
     Bandung, <?php echo tgl_indo(date('Y-m-d'));?>
 <br><br>
     A.n.KEPALA DINAS KESEHATAN <br>
     KOTA BANDUNG <br>
     Sekretaris
     <br>
     <br>
     <br>
     <br>
     <u><b><?php echo $news_item['nama_pejabat']; ?></b></u><br>
     <?php echo $news_item['golongan']; ?> <br>
     NIP.<?php echo $news_item['nip']; ?>
   </div>
  <br>
  <table class="catatan">
   <tr>
     <td width="40px" style="vertical-align:top"></td>
     <td>

      <?php
        if ($news_item['jenis_surat'] == 'penelitian') {
          $jenis ="Bidang Bina Program";
        } elseif ($news_item['jenis_surat'] == 'pkl') {
          $jenis ="Sub. Bagian Umum";
        } elseif ($news_item['jenis_surat'] == 'pkl_medis') {
          $jenis ="Bidang Sumber Daya Kesehatan ";
        }
      ?>

       <u>CATATAN</u><br>
       -Agar membuat laporan hasil kegiatan melalui Kepala <?php echo $jenis ?>  Dinas
       Kesehatan Kota Bandung
       <br><br>

       Tembusan, disampaikan kepada Yth   :<br>
       <?php
       $hobi=array('Kepala Dinas Kesehatan Kota Bandung (Sebagai Laporan)',
                   'Kepala Bidang Pelayanan Kesehatan',
                   'Kepala Bidang Sumber Daya Kesehatan',
                   'Kepala Bidang P2PL',
                   'Kepala UPT Puskesmas Se-Kota Bandung',
                   'Kepala Bina Program Kesehatan',
                   'Kepala Sub. Bagian Keuangan',
                   'Kepala Sub. Bagian Kepegawaian',
                   'Kepala Sub. Bagian Umum',
                   'kepala UPT Laboratorium kesehatan',
                   'kepala UPT yankes mobilitas'
                  );

       if(!empty($news_item['tembusan'])){

         $tmp=explode(',',strrev($news_item['tembusan']));

         for ($c=0;$c<count($tmp);$c++){
           $temb=$tmp[$c];
           $no=$c+1;
           echo $no.". ".$hobi[$temb]."<br> ";
         };
       } else {
         echo "tembusan kosong";
       }
      ?>

    </td>
  </tr>
  </table>

</div>
