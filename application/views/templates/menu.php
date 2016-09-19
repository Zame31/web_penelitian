<ul class="side-nav fixed">
  <li><div class="userView">
    <div class="background"></div>
      <a href="#!user"><img class="responsive-img" src="<?php echo base_url() ?>assets/img/logo.png"></a>
      <span class="title-web">web penelitian</span>
    </div></li>
  <li class="no-padding">
    <ul class="collapsible collapsible-accordion">
      <li><a href="<?php echo site_url('penelitian/beranda'); ?>">Beranda</a></li>
      <li>
        <a class="collapsible-header waves-effect waves-teal">Pengajuan Penelitian</a>
        <div class="collapsible-body">
          <ul>
            <li><a href="<?php echo site_url('penelitian/tambah'); ?>">Buat Pengajuan</a></li>
            <li><a href="<?php echo site_url('penelitian/lihat'); ?>">Data Pengajuan </a></li>
            <li><a href="<?php echo site_url('penelitian/laporan'); ?>">Cetak Laporan</a></li>
          </ul>
        </div>
      </li>
    </ul>
  </li>
</ul>
