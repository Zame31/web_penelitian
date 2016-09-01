
<?php echo form_open('penelitian/update/'.$news_item['id_penelitian']); ?>
<main>
  <div class="title">
    Update Pengajuan Penelitian
  </div>
  <div class="container">
    <div class="row form">

      <div class="col s12">
        <?php echo validation_errors(); ?>

        <div class="row">
          <div class="input-field col s12">
            <select name="jenis_surat">
              <option value="" disabled>Pilih Jenis Surat</option>
              <option value="penelitian" <?php if ($news_item['jenis_surat'] == 'penelitian'){echo 'selected';}?> >Penelitian/Skripsi</option>
              <option value="pkl" <?php if ($news_item['jenis_surat'] == 'pkl'){echo 'selected';}?>>Praktek Kerja Lapangan(PKL) non Medis</option>
              <option value="pkl_medis" <?php if ($news_item['jenis_surat'] == 'pkl_medis'){echo 'selected';}?>>Praktek Kerja Lapangan(PKL) Medis</option>
            </select>
            <label>Jenis Surat</label>
          </div>
        </div>

        <div class="row">
          <div class="s12">
            <p class="z-depth-1 sub-tit">Dengan ini menerangkan bahwa :</p>
          </div>
        </div>
        <div class="row">
            <input type="text" name="id_pengaju" value="<?php echo $news_item['id_pengaju'] ?>" hidden>

        </div>
        <div class="row">
          <div class="input-field col s12">
            <input type="text" class="validate" name="nama" value="<?php echo $news_item['nama'] ?>">
            <label data-error="salah" data-success="benar">Nama</label>
          </div>
        </div>
        <div class="row">
          <div class="input-field col s12">
            <input type="text" class="validate" name="alamat" value="<?php echo $news_item['alamat'] ?>">
            <label data-error="salah" data-success="benar">Alamat</label>
          </div>
        </div>
        <div class="row">
          <div class="input-field col s12">
            <input type="text" class="validate" name="maksud" value="<?php echo $news_item['maksud'] ?>">
            <label data-error="salah" data-success="benar">Maksud</label>
          </div>
        </div>
        <div class="row">
          <div class="input-field col s12">
            <input type="date" class="datepicker" name="mulai" value="<?php echo $news_item['waktu_mulai'] ?>">
            <label>Waktu Mulai Penelitian</label>
          </div>
        </div>
        <div class="row">
          <div class="input-field col s12">
            <input type="date" class="datepicker" name="selesai" value="<?php echo $news_item['waktu_selesai'] ?>">
            <label>Waktu Selesai Penelitian</label>
          </div>
        </div>
        <div class="row">
          <div class="s12">
            <p class="z-depth-1 sub-tit">Surat keterangan ini dibuat atas dasar :</p>
          </div>
        </div>
        <div class="row">
          <div class="s12">
            Surat pengantar dari Kepala Badan Kesatuan Bangsa dan Pemberdayaan Masyarakat Kota Bandung (BKBPM)
          </div>
        </div>
        <div class="row">
          <div class="input-field col s12">
            <input type="text" class="validate" name="no_bkbpm" value="<?php echo $news_item['no_bkbpm'] ?>">
            <label data-error="salah" data-success="benar">Nomor</label>
          </div>
        </div>
        <div class="row">
          <div class="input-field col s12">
            <input type="date" class="datepicker" name="tanggal_bkbpm" value="<?php echo $news_item['tanggal_bkbpm'] ?>">
            <label data-error="salah" data-success="benar">Tanggal</label>
          </div>
        </div>
        <div class="row">
          <div class="s12">
            Surat Pengantar lainnya
          </div>
        </div>

        <div class="row">
          <div class="input-field col s12">
            <input type="text" class="validate" name="surat" value="<?php echo $news_item['surat'] ?>">
            <label data-error="salah" data-success="benar">Surat</label>
          </div>
        </div>

        
         <br><br><br>

        <button class="btn waves-effect waves-light" type="submit" name="action">Simpan
          <i class="material-icons right">send</i>
        </button>
      </div>

    </div>
  </div>
</main>
<?php echo form_close();?>
