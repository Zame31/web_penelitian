<link rel="stylesheet" href="<?php echo base_url() ?>assets/css/cetak_laporan.css"/>


<?php if ($penelitian > 0 ) { ?>
<div class="head_laporan">
  rekapan surat izin penelitian
  <br>
  <span>
    <?php
      if ($b1 == $b2 && $t1 == $t2) {echo bulan($b1). " ".$t1;}
      elseif ($t1 == $t2) {echo bulan($b1)." - ".bulan($b2)." ".$t1;}
      else {echo bulan($b1)." ".$t1; ?>  - <?php echo bulan($b2)." ".$t2;}
      ?>
  </span>
</div>

<table>
<thead>
  <tr>
    <th>No</th>
    <th>Tanggal Dibuat Surat</th>
    <th>nama</th>
    <th>Maksud</th>
    <th>Waktu Mulai</th>
    <th>Waktu Selesai</th>
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
      <td><?php echo $news_item->maksud; ?></td>
      <td><?php echo tgl_indo($news_item->waktu_mulai); ?></td>
      <td><?php echo tgl_indo($news_item->waktu_selesai); ?></td>
    </tr>
    <?php $i++; } ?>
</tbody>
</table>
<?php
} else {
  echo "data kosong wa";
} ?>
