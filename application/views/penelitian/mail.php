<?php if ($this->session->flashdata('success_msg')) { ?>
      <div id="snackbar"> <?php echo $this->session->flashdata('success_msg') ?> </div>
  <?php } ?>
<main>

  <div class="title">
    <span>sistem informasi izin penelitian (SIIP)</span>
      <div class="col s12 bred">
        <a href="#!" class="breadcrumb">pengajuan Penelitian</a>
        <a href="#!" class="breadcrumb">Kirim E-Mail</a>
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
          <th width="130px">Waktu Pembuatan Surat</th>
          <th width="160px">Nama</th>
          <th>Institusi</th>
          <th>E-Mail</th>
          <th>Status</th>
          <th width="40px">Control</th>
        </tr>
      </thead>
      <tbody>
        <!-- data dari Controller as nama baru -->

        <?php
        $i=1;
        if ($penelitian > 0 ) {

        foreach ($penelitian as $news_item) { ?>
        <tr>
          <!-- atribut di table database -->
          <td align="center"><?php echo $i; ?></td>
          <td><?php echo tgl_indo($news_item->waktu_pembuatan); ?></td>
          <td><?php echo $news_item->nama; ?></td>
          <td><?php echo $news_item->institusi; ?></td>
          <td><?php echo $news_item->mail; ?></td>

          <td>
            <?php if ($news_item->status_mail == 'sudah'){ ?>
              <div class="btn green lighten-1 pad">
                sudah
              </div>
            <?php }else { ?>
              <div class="btn red lighten-1 pad">
                belum
              </div>
            <?php } ?>
          </td>

          <td>
            <a class="waves-effect waves-light btn blue lighten-1 pad" href="<?php echo site_url('penelitian/send_mail/'.$news_item->id_penelitian); ?>">
              <i class="material-icons">mail</i>
            </a>
          </td>
        </tr>

        <div id="modal<?php echo $news_item->id_penelitian ?>" class="delete modal">
          <div class="modal-content">
            <h6>anda yakin ingin menghapus data ini ?</h6>
          </div>
          <div class="modal-footer">
            <a href="#!" class=" modal-action modal-close waves-effect waves-red btn-flat" >Tidak</a>
            <a href="<?php echo site_url('penelitian/delete/'.$news_item->id_penelitian); ?>" class=" modal-action waves-effect waves-green btn-flat">Iya</a>
          </div>
        </div>

          <?php $i++;} } ?>
        </tbody>
    </table>
  </div>
  </div>


</main>
