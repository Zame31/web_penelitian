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

//PKL
  $route['pkl/lihat'] = 'pkl/view';
  $route['pkl/laporan'] = 'pkl/laporan';
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
