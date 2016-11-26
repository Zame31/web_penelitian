<?php echo form_open('penelitian/proses_edit_penempatan/'.$news_item['id_penelitian']); ?>
<main>
  <div class="title">
    <span>Sistem Informasi Pengajuan Izin Penelitian & Kerja Praktek</span>
      <div class="col s12 bred">
        <a href="#!" class="breadcrumb">pengajuan Kerja Praktek</a>
        <a href="#!" class="breadcrumb">Penempatan</a>
      </div>
  </div>
  <div class="content">
    <div class="card-panel white lighten-2">
    <div class="row form">
      <div class="input-field col s12">
        <label>Nama :</label>
        <input type="text" name="nama" value="<?php echo $news_item['nama']; ?>" disabled>
      </div>
      <input type="text" name="id_penelitian" value="<?php echo $news_item['id_penelitian']; ?>" hidden>
      <div class="input-field col s12">
        <select name="bagian">
          <option selected disabled>Pilih Bagian</option>
          <?php foreach ($pejabat as $pe) { ?>
              <option value="<?php echo $pe['jabatan'];?>" <?php if ($pe['jabatan'] == $news_item['bagian']){echo 'selected';}?> ><?php echo $pe['jabatan']; ?></option>
            <?php } ?>
        </select>
        <label>Ditempatkan Di :</label>
      </div>
      <div class="input-field col s12">
        <select name="id_pejabat">
          <option selected disabled>Pilih Pembimbing</option>
          <?php foreach ($pejabat as $pe) { ?>
              <option value="<?php echo $pe['id_pejabat']; ?>" <?php if ($pe['id_pejabat'] == $news_item['id_pejabat']){echo 'selected';}?> ><?php echo $pe['nama_pejabat'].' ('.$pe['jabatan'].')'; ?></option>
            <?php } ?>
        </select>
        <label>Pembimbing :</label>
      </div>

      <div class="col s12">
        <a href="<?php echo site_url('penelitian/penempatan'); ?>" class="btn red lighten-2 modal-trigger waves-effect waves-light pad">
          Kembali
        </a>
        <button class="btn waves-effect waves-light " type="submit" name="action">Pindahkan
          <i class="material-icons right">send</i>
        </button>
      </div>
    </div>
  </div>
</div>
</main>
<?php echo form_close();?>
