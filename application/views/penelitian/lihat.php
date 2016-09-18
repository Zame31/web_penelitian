<?php if ($this->session->flashdata('success_msg')) { ?>
      <div id="snackbar"> <?php echo $this->session->flashdata('success_msg') ?> </div>
  <?php } ?>
<main>
  <div class="title">
    Lihat Pengajuan Penelitian

  </div>
  <div class="content ">
    <div class="row">
      <div class="input-field col s6 custom-to">
        <input type="text" id="searchbox">
        <label>Cari</label>
      </div>

    </div>
    <table class="highlight striped" id="example">
      <thead>
        <tr>
          <th>No</th>
          <th width="130px">Waktu Pembuatan Surat</th>
          <th width="160px">Nama</th>
          <th>Institusi</th>
          <th>Maksud Penelitian</th>
          <th width="120px">Control</th>
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
            <td><?php echo $news_item->maksud; ?></td>

          <td>
            <a class="waves-effect waves-light btn green lighten-1 pad" target="_blank" href="<?php echo site_url('penelitian/cetak/'.$news_item->id_penelitian); ?>">
              <i class="material-icons">print</i>
            </a>
            <a class="waves-effect waves-light btn blue lighten-1 pad" href="<?php echo site_url('penelitian/update/'.$news_item->id_penelitian); ?>">
              <i class="material-icons">update</i>
            </a>
            <a href="#modal<?php echo $news_item->id_penelitian ?>" class="btn red lighten-2 modal-trigger waves-effect waves-light pad">
              <i class="material-icons">delete</i>
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


</main>
