<?php
defined('BASEPATH') OR exit('No direct script access allowed');

                        // controller/metode
$route['penelitian/lihat'] = 'penelitian/view';
//$route['penelitian/(:any)'] = 'penelitian/view/$1';

//tambah data
$route['penelitian/tambah'] = 'penelitian/tambah';

//cetak
$route['penelitian/update/(:any)'] = 'penelitian/update/$1';

//cetak
$route['penelitian/cetak/(:any)'] = 'penelitian/cetak/$1';


$route['default_controller'] = 'penelitian/view';

$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;