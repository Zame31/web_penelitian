<link rel="stylesheet" href="<?php echo base_url() ?>assets/css/cetak_laporan.css"/>


<?php if ($penelitian > 0 ) { ?>
<div class="head-surat">
  <div class="logo">
      <a href="#!user" class="logo"><img class="responsive-img" src="<?php echo base_url() ?>assets/img/logo.png"></a>
  </div>
  <div class="head_laporan">
    dinas kesehatan kota bandung<br>
    <span class="alamat">Jl Supratman No 73 Citarum Bandung<br>
    Tel : 022-7202210 · (022) 4203752</span>
  </div>
</div>
<div class="head_laporan sub">
  rekapan surat izin Kerja Praktek <br>
  <span>
    Bulan
    <?php
      if ($b1 == $b2 && $t1 == $t2) {echo bulan($b1). " tahun ".$t1;}
      elseif ($t1 == $t2) {echo bulan($b1)." - ".bulan($b2)." tahun ".$t1;}
      else {echo bulan($b1)." ".$t1; ?>  - <?php echo bulan($b2)." ".$t2;}
      ?>
  </span>
</div>

<table>
<thead>
  <tr>
    <th>No</th>
    <th width="150px">Tanggal Dibuat Surat</th>
    <th>nama</th>
    <th>Institusi</th>
    <th>Maksud</th>
  </tr>
</thead>
<tbody>
  <?php
    $i=1;
    foreach ($penelitian as $news_item) {
  ?>
    <tr>
      <td><?php echo $i;?></td>
      <td><?php echo tgl_indo($news_item->waktu_pembuatan); ?></td>
      <td><?php echo $news_item->nama; ?></td>
      <td><?php echo $news_item->institusi; ?></td>
      <td><?php echo $news_item->maksud; ?></td>
    </tr>
    <?php $i++; } ?>
</tbody>
</table>
<?php
} else {
  echo "data kosong !";
} ?>
