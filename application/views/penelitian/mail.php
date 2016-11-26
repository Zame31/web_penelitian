<div class="loading-mail">
  <div class="container">
    <div class="row">
      <div class="col s4 offset-s4">
        <div class="myprogress">
          <span><i class="material-icons">mail</i>Mengirim Email</span>
          <div class="progress yellow lighten-1">
            <div class="indeterminate white"></div>
          </div>
        </div>

      </div>
    </div>
  </div>


</div>


<?php if ($this->session->flashdata('success_msg')) { ?>
      <div id="snackbar"> <?php echo $this->session->flashdata('success_msg') ?> </div>
  <?php } ?>
<main>

  <div class="title">
    <span>Sistem Informasi Pengajuan Izin Penelitian & Kerja Praktek</span>
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
              <div class="btn green lighten-1 pad"> sudah </div>
            <?php }else { ?>
              <div class="btn red lighten-1 pad"> belum </div>
            <?php } ?>

          </td>

          <td>
            <a id="email" class="waves-effect waves-light btn blue lighten-1 pad" href="<?php echo site_url('penelitian/send_mail/'.$news_item->id_penelitian); ?>">
              <i class="material-icons">mail</i>
            </a>

          </td>
        </tr>

          <?php $i++;} } ?>
        </tbody>
    </table>
  </div>
  </div>


</main>
