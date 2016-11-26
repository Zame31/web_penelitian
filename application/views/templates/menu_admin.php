<ul class="side-nav fixed" id="scroll">
  <li>
    <div class="userView">
    <div class="background"></div>
      <a href="#!user" class="logo"><img class="responsive-img" src="<?php echo base_url() ?>assets/img/logo.png"></a>
      <span class="sub-title-web">dinas kesehatan <br> kota bandung</span>
    </div>
  </li>
  <li>
    <div class="userView user">
      <div class="background teal lighten-1"></div>
      <a href="#" class="icon-menu">
        <span class="nama">
          <i class="material-icons">account_circle</i><?php echo $this->session->userdata('username') ?>
        </span>
      </a>
    </div>
  </li>

  <li class="no-padding">
    <ul class="collapsible collapsible-accordion">
      <!-- BERANDA -->
      <li class="<?php if($this->uri->uri_string() == 'penelitian/beranda') {echo 'grey lighten-3';} ?>">
        <a href="<?php echo site_url('penelitian/beranda');?>" class="icon-menu">
          <i class="material-icons">home</i>Beranda
        </a>
      </li>
      <!-- BUAT PENGAJUAN -->
      <li class="<?php if($this->uri->uri_string() == 'penelitian/tambah') {echo 'grey lighten-3';} ?>">
        <a href="<?php echo site_url('penelitian/tambah'); ?>" class="icon-menu">
          <i class="material-icons">assignment</i>Buat Pengajuan</a>
      </li>
      <!-- PENEMPATAN -->
      <!-- <li class="<?php if($this->uri->uri_string() == 'penelitian/penempatan') {echo 'grey lighten-3';} ?>">
        <a href="<?php echo site_url('penelitian/penempatan'); ?>" class="icon-menu">
          <i class="material-icons">assignment</i>Penempatan</a>
      </li> -->
      <!-- PENGAJUAN IZIN PENELITAN -->
      <li class="<?php if($this->uri->uri_string() == 'penelitian/lihat' ||
                                      uri_string() == 'penelitian/penempatan' ||
                                      uri_string() == 'penelitian/laporan' ||
                                      uri_string() == 'penelitian/mail') {echo 'grey lighten-3';} ?>">
        <a class="collapsible-header waves-effect waves-teal icon-menu">
          <i class="material-icons">school</i>
          Pengajuan Izin Penelitian</a>
        <div class="collapsible-body">
          <ul>
            <li><a href="<?php echo site_url('penelitian/lihat'); ?>">Data Pengajuan </a></li>
            <li><a href="<?php echo site_url('penelitian/penempatan'); ?>">Penempatan</a></li>
            <li><a href="<?php echo site_url('penelitian/laporan'); ?>">Cetak Laporan</a></li>
            <li><a href="<?php echo site_url('penelitian/mail'); ?>">Kirim E-Mail</a></li>
          </ul>
        </div>
      </li>
      <!-- PENGAJUAN KERJA PRAKTEK -->
      <li class="<?php if($this->uri->uri_string() == 'pkl/lihat' ||
                                      uri_string() == 'pkl/laporan' ||
                                      uri_string() == 'pkl/penempatan' ||
                                      uri_string() == 'pkl/mail') {echo 'grey lighten-3';} ?>">
        <a class="collapsible-header waves-effect waves-teal icon-menu">
          <i class="material-icons">face</i>
          Pengajuan Kerja Praktek</a>
        <div class="collapsible-body">
          <ul>
            <li><a href="<?php echo site_url('pkl/lihat'); ?>">Data Kerja Praktek</a></li>
            <li><a href="<?php echo site_url('pkl/penempatan'); ?>">Penempatan</a></li>
            <li><a href="<?php echo site_url('pkl/laporan'); ?>">Cetak Laporan</a></li>
            <li><a href="<?php echo site_url('pkl/mail'); ?>">Kirim E-Mail</a></li>
          </ul>
        </div>
      </li>
      <!-- ADMIN -->
      <li class="<?php if($this->uri->uri_string() == 'admin/lihat') {echo 'grey lighten-3';} ?>">
        <a class="collapsible-header waves-effect waves-teal icon-menu">
          <i class="material-icons">account_circle</i>
          Admin</a>
        <div class="collapsible-body">
          <ul>
            <li><a href="<?php echo site_url('admin/lihat'); ?>">Data Admin</a></li>
            <li><a href="<?php echo site_url('admin/tambah'); ?>">Tambah Admin</a></li>
          </ul>
        </div>
      </li>
      <!-- PENGATURAN -->
      <li class="<?php if($this->uri->uri_string() == 'penelitian/pengaturan') {echo 'grey lighten-3';} ?>">
        <a href="<?php echo site_url('penelitian/pengaturan'); ?>" class="icon-menu">
          <i class="material-icons">settings</i>Pengaturan</a>
      </li>
      <!-- LOGOUT -->
      <li>
        <a href="<?php echo site_url('login/logout'); ?>" class="icon-menu"><i class="material-icons">power_settings_new</i>Logout</a>
      </li>
    </ul>
  </li>
</ul>
