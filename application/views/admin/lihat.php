<?php if ($this->session->flashdata('success_msg')) { ?>
      <div id="snackbar"> <?php echo $this->session->flashdata('success_msg') ?> </div>
  <?php } ?>
<main>
  <div class="title">
    <span>Sistem Informasi Pengajuan Izin Penelitian & Kerja Praktek</span>
      <div class="col s12 bred">
        <a href="#!" class="breadcrumb">Admin</a>
        <a href="#!" class="breadcrumb">Data Admin</a>
      </div>
  </div>
  <nav class="teal">
    <div class="nav-wrapper ">
      <form>
        <div class="input-field">
          <input id="searchbox" type="search" required>
          <label for="searchbox" class="active"><i class="material-icons">search</i></label>
          <i class="material-icons">close</i>
        </div>
      </form>
    </div>
  </nav>

  <div class="content ">
    <div class="card-panel white lighten-2">
    <table class="highlight striped" id="example">
      <thead>
        <tr>
          <th>No</th>
          <th>Username</th>
          <th>Nama Lengkap</th>
          <th>E-Mail</th>
          <th>Akses</th>
          <th width="80px">Control</th>
        </tr>
      </thead>
      <tbody>

        <?php
        $i=1;
        if ($admin > 0 ) {

        foreach ($admin as $news_item) { ?>
        <tr>
          <!-- atribut di table database -->
          <td align="center"><?php echo $i; ?></td>
          <td><?php echo $news_item->username; ?></td>
          <td><?php echo $news_item->nama_lengkap; ?></td>
          <td><?php echo $news_item->email; ?></td>
          <td><?php echo $news_item->akses; ?></td>
          <td>
            <a class="waves-effect waves-light btn blue lighten-1 pad" href="<?php echo site_url('admin/update/'.$news_item->id_admin); ?>">
              <i class="material-icons">update</i>
            </a>
            <a href="#modal<?php echo $news_item->id_admin ?>" class="btn red lighten-2 modal-trigger waves-effect waves-light pad">
              <i class="material-icons">delete</i>
            </a>
          </td>
        </tr>

        <div id="modal<?php echo $news_item->id_admin ?>" class="delete modal">
          <div class="modal-content">
            <h6>anda yakin ingin menghapus data ini ?</h6>
          </div>
          <div class="modal-footer">
            <a href="#!" class=" modal-action modal-close waves-effect waves-red btn-flat" >Tidak</a>
            <a href="<?php echo site_url('admin/delete/'.$news_item->id_admin); ?>" class=" modal-action waves-effect waves-green btn-flat">Iya</a>
          </div>
        </div>

          <?php $i++;} } ?>
        </tbody>
    </table>
  </div>
  </div>


</main>
