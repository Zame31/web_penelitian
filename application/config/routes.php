<?php
defined('BASEPATH') OR exit('No direct script access allowed');

                        // controller/metode

//PENELITIAN
  $route['penelitian/beranda'] = 'penelitian/beranda';
  $route['penelitian/lihat'] = 'penelitian/view';
  $route['penelitian/tambah'] = 'penelitian/tambah';
  $route['penelitian/update/(:any)'] = 'penelitian/update/$1';
  $route['penelitian/edit_sekertaris'] = 'penelitian/edit_sekertaris';//update sekertaris
  //LAPORAN
  $route['penelitian/laporan'] = 'penelitian/laporan';
  $route['penelitian/cetak_laporan'] = 'penelitian/cetak_laporan';
  //cetak
  $route['penelitian/cetak/(:any)'] = 'penelitian/cetak/$1';
  //Email
  $route['penelitian/mail'] = 'penelitian/mail';
  $route['penelitian/send_mail/(:any)'] = 'penelitian/send_mail/$1';


//PKL
  $route['pkl/lihat'] = 'pkl/view';
  $route['pkl/laporan'] = 'pkl/laporan';

$route['penelitian/backup'] = 'penelitian/backup';
$route['penelitian/restore'] = 'penelitian/restore';

$route['default_controller'] = 'Login';

$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;
