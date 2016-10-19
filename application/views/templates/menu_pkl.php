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
      <a href="#" class="icon-menu"><span class="nama"><i class="material-icons">account_circle</i><?php echo $this->session->userdata('username') ?></span></a>
    </div>
  </li>

  <li class="no-padding">
    <ul class="collapsible collapsible-accordion">
      <li><a href="<?php echo site_url('penelitian/beranda');?>" class="icon-menu"><i class="material-icons">home</i>Beranda</a></li>
      <li>
        <a href="<?php echo site_url('penelitian/tambah'); ?>" class="icon-menu"><i class="material-icons">assignment</i>Buat Pengajuan</a>
      </li>
      <li>
        <a class="collapsible-header waves-effect waves-teal icon-menu">
          <i class="material-icons">face</i>
          Pengajuan Kerja Praktek</a>
        <div class="collapsible-body">
          <ul>
            <li><a href="<?php echo site_url('pkl/lihat'); ?>">Data Kerja Praktek</a></li>
            <li><a href="<?php echo site_url('pkl/laporan'); ?>">Cetak Laporan</a></li>
            <li><a href="<?php echo site_url('pkl/mail'); ?>">Kirim E-Mail</a></li>
          </ul>
        </div>
      </li>

      <li>
        <a href="<?php echo site_url('login/logout'); ?>" class="icon-menu"><i class="material-icons">power_settings_new</i>Logout</a>
      </li>
    </ul>
  </li>
</ul>
