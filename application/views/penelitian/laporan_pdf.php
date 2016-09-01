<link rel="stylesheet" href="<?php echo base_url() ?>assets/css/cetak_laporan.css"/>
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
    foreach ($penelitian as $news_item) {  ?>
    <tr>
      <td><?php echo $i; ?></td>
      <td><?php echo tgl_indo($news_item->waktu_pembuatan); ?></td>
      <td><?php echo $news_item->nama; ?></td>
      <td><?php echo $news_item->maksud; ?></td>
      <td><?php echo tgl_indo($news_item->waktu_mulai); ?></td>
      <td><?php echo tgl_indo($news_item->waktu_selesai); ?></td>
  
    </tr>
    <?php $i++;} ?>
</tbody>
</table>
