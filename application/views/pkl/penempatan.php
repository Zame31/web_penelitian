<?php if ($this->session->flashdata('success_msg')) { ?>
      <div id="snackbar"> <?php echo $this->session->flashdata('success_msg') ?> </div>
  <?php } ?>
<main>
  <div class="title">
    <span>Sistem Informasi Pengajuan Izin Penelitian & Kerja Praktek</span>
      <div class="col s12 bred">
        <a href="#!" class="breadcrumb">pengajuan Kerja Praktek</a>
        <a href="#!" class="breadcrumb">Penempatan</a>
      </div>
  </div>
  <nav class="teal">
    <div class="nav-wrapper ">
      <form>
        <div class="input-field">
          <input id="searchbox" type="search">
          <label for="searchbox" class="active"><i class="material-icons">search</i></label>
          <i class="material-icons">close</i>
        </div>
      </form>
    </div>
  </nav>
  <div class="content">


        <ul class="tabs">
          <div class="row">
            <li class="tab col s6"><a class="active" href="#test1">Belum Ditempatkan</a></li>
            <li class="tab col s6"><a href="#test2">Sudah Ditempatkan</a></li>
          </div>

        </ul>

    <div class="card-panel white lighten-2">
      <div class="row">

          <!-- BELUM -->
          <div id="test1" class="col s12">
            <table class="highlight striped" id="example">
              <thead>
                <tr>
                  <th>No</th>
                  <th>Nama</th>
                  <th width="100px">Institusi</th>
                  <th>Keahlian</th>
                  <th width="100px">Control</th>
                </tr>
              </thead>
              <tbody>
              <?php
                $i=1;
                if ($penempatan > 0 ) {

                foreach ($penempatan as $news_item) { ?>
                <tr>
                  <td align="center"><?php echo $i; ?></td>
                  <td><?php echo $news_item['nama']; ?></td>
                  <td><?php echo $news_item['institusi']; ?></td>
                  <td width="100px">
                    <?php if ($news_item['jenis_surat'] == 'pkl'){ ?>
                      <div class="stat z-depth-1 blue lighten-1">Non Medis </div>
                    <?php }else if ($news_item['jenis_surat'] == 'pkl_medis') { ?>
                      <div class="stat z-depth-1 green lighten-1">Medis </div>
                    <?php } ?>

                  </td>

                  <td>
                    <a href="<?php echo site_url('pkl/form_penempatan/'.$news_item['id_penelitian']); ?>" class="btn teal lighten-2 modal-trigger waves-effect waves-light pad">
                      tempatkan
                    </a>
                  </td>
                </tr>

                <?php $i++;}} ?>
                </tbody>
            </table>
          </div>
          <!-- SUDAH -->
          <div id="test2" class="col s12">
            <table class="highlight striped" id="example2">
              <thead>
                <tr>
                  <th>No</th>
                  <th>Nama</th>
                  <th width="100px">Institusi</th>
                  <th>Ditempatkan Di</th>
                  <th>Pembimbing</th>
                  <th width="100px">Control</th>
                </tr>
              </thead>
              <tbody>
              <?php
                $i=1;
                if ($penempatan_sudah > 0 ) {

                foreach ($penempatan_sudah as $sudah) { ?>
                <tr>
                  <td align="center"><?php echo $i; ?></td>
                  <td><?php echo $sudah['nama']; ?></td>
                  <td><?php echo $sudah['institusi']; ?></td>
                  <td><?php echo $sudah['bagian']; ?></td>
                    <td><?php echo $sudah['nama_pejabat']; ?></td>
                  <td>
                    <a href="<?php echo site_url('pkl/edit_penempatan/'.$sudah['id_penelitian']); ?>" class="btn brown lighten-2 modal-trigger waves-effect waves-light pad">
                      Pindahkan
                    </a>
                  </td>
                </tr>

                <?php $i++;}} ?>
                </tbody>
            </table>

          </div>

        </div>

  </div>
  </div>



</main>
