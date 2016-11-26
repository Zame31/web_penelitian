<?php
require_once('preloader.php');
require_once('header.php');
if ($this->session->userdata('akses') == "super_admin") {
  require_once('menu_admin.php');
}elseif ($this->session->userdata('akses') == "admin_datin") {
  require_once('menu_datin.php');
}elseif ($this->session->userdata('akses') == "admin_pkl") {
  require_once('menu_pkl.php');
}
require_once('content.php');
require_once('footer.php');
