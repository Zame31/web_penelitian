<?php
defined('BASEPATH') OR exit('No direct script access allowed');

                        // controller/metode
//PENELITIAN
  $route['penelitian/beranda'] = 'penelitian/beranda';
  $route['penelitian/lihat'] = 'penelitian/view';
  $route['penelitian/tambah'] = 'penelitian/tambah';
  $route['penelitian/update/(:any)'] = 'penelitian/update/$1';
  $route['penelitian/edit_sekertaris'] = 'penelitian/edit_sekertaris';
  //laporan
  $route['penelitian/laporan'] = 'penelitian/laporan';
  $route['penelitian/cetak_laporan'] = 'penelitian/cetak_laporan';
  //cetak
  $route['penelitian/cetak/(:any)'] = 'penelitian/cetak/$1';
  //Email
  $route['penelitian/mail'] = 'penelitian/mail';
  $route['penelitian/send_mail/(:any)'] = 'penelitian/send_mail/$1';
  //Pengaturan
  $route['penelitian/pengaturan'] = 'penelitian/pengaturan';
  //penempatan
  $route['penempatan/form_penempatan/(:any)'] = 'penempatan/form_penempatan/$1';
  $route['penempatan/edit_penempatan/(:any)'] = 'penempatan/edit_penempatan/$1';
  $route['penempatan/penempatan'] = 'penempatan/penempatan';
  $route['penempatan/set_penempatan'] = 'penempatan/set_penempatan';

//PKL
  $route['pkl/lihat'] = 'pkl/view';
  $route['pkl/laporan'] = 'pkl/laporan';
  //penempatan
  $route['pkl/form_penempatan/(:any)'] = 'pkl/form_penempatan/$1';
  $route['pkl/edit_penempatan/(:any)'] = 'pkl/edit_penempatan/$1';
  $route['pkl/penempatan'] = 'pkl/penempatan';
  $route['pkl/set_penempatan'] = 'pkl/set_penempatan';

  //Email
  $route['pkl/mail'] = 'pkl/mail';
  $route['pkl/send_mail/(:any)'] = 'pkl/send_mail/$1';

//ADMIN
  $route['admin/lihat'] = 'admin/view';
  $route['admin/tambah'] = 'admin/tambah';
  $route['admin/update/(:any)'] = 'admin/update/$1';

//ANDROID ACCESS
  $route['penelitian/android_data_penelitian'] = 'android/penelitian';
  $route['penelitian/android_data_pkl'] = 'android/pkl';

//ON PROGRESS
$route['penelitian/backup'] = 'penelitian/backup';
$route['penelitian/restore'] = 'penelitian/restore';

$route['default_controller'] = 'Login';

$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;
