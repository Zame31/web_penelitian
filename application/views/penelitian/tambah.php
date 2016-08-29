
<?php echo form_open('penelitian/tambah'); ?>
<main>
  <div class="title">
    Tambah Pengajuan Penelitian
  </div>
  <div class="container">
    <div class="row form">

      <div class="col s12">
        <?php echo validation_errors(); ?>
        <div class="row">
          <div class="s12">
            <p class="z-depth-1 sub-tit">Dengan ini menerangkan bahwa :</p>
          </div>
        </div>
        <div class="row">
          <div class="input-field col s12">
            <input type="text" class="validate" name="nama">
            <label data-error="salah" data-success="benar">Nama</label>
          </div>
        </div>
        <div class="row">
          <div class="input-field col s12">
            <input type="text" class="validate" name="alamat">
            <label data-error="salah" data-success="benar">Alamat</label>
          </div>
        </div>
        <div class="row">
          <div class="input-field col s12">
            <input type="text" class="validate" name="pekerjaan">
            <label data-error="salah" data-success="benar">Pekerjaan/NPM</label>
          </div>
        </div>
        <div class="row">
          <div class="input-field col s12">
            <input type="text" class="validate" name="institusi">
            <label data-error="salah" data-success="benar">Institusi</label>
          </div>
        </div>
        <div class="row">
          <div class="input-field col s12">
            <input type="text" class="validate" name="maksud">
            <label data-error="salah" data-success="benar">Maksud</label>
          </div>
        </div>
        <div class="row">
          <div class="input-field col s12">
            <input type="date" class="datepicker" name="mulai">
            <label>Waktu Mulai Penelitian</label>
          </div>
        </div>
        <div class="row">
          <div class="input-field col s12">
            <input type="date" class="datepicker" name="selesai">
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
            <input type="text" class="validate" name="no_bkbpm">
            <label data-error="salah" data-success="benar">Nomor</label>
          </div>
        </div>
        <div class="row">
          <div class="input-field col s12">
            <input type="date" class="datepicker" name="tanggal_bkbpm">
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
            <input type="text" class="validate" name="surat">
            <label data-error="salah" data-success="benar">Surat</label>
          </div>
        </div>
        <button class="btn waves-effect waves-light" type="submit" name="action">Simpan
          <i class="material-icons right">send</i>
        </button>
      </div>

    </div>
  </div>
</main>
<?php echo form_close();?>
