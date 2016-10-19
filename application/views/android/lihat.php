<?php
$hasil = array();
foreach ($android as $news_item) {
  $data['nama'] = $news_item->nama;
  $data['institusi'] = $news_item->institusi;
  $data['waktu_mulai'] = tgl_indo($news_item->waktu_mulai);
  $data['waktu_selesai'] = tgl_indo($news_item->waktu_selesai);
  $hasil[] = $data;
}
echo json_encode($hasil);
 ?>
