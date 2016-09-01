
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
          <div class="input-field col s12">
            <select name="jenis_surat">
              <option value="" disabled selected>Pilih Jenis Surat</option>
              <option value="penelitian">Penelitian/Skripsi</option>
              <option value="pkl">Praktek Kerja Lapangan(PKL) non Medis</option>
              <option value="pkl_medis">Praktek Kerja Lapangan(PKL) Medis</option>
            </select>
            <label>Jenis Surat</label>
          </div>
        </div>

        <div class="row">
          <div class="col s12">
            <p class=" sub-tit">Dengan ini menerangkan bahwa :</p>
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

        <div class="row">
          <div class="s12">
            tembusan
          </div>
        </div>
        <div class="row">
          <div class="s12">
            <input type="checkbox" class="filled-in" id="teb1" name="hobi[]" value="0" />
            <label for="teb1">Kepala Dinas Kesehatan Kota Bandung (Sebagai Laporan)</label>
          </div>
          <div class="s12">
            <input type="checkbox" class="filled-in" id="teb2" name="hobi[]" value="1" />
            <label for="teb2">Kepala Bidang Pelayanan Kesehatan</label>
          </div>
          <div class="s12">
            <input type="checkbox" class="filled-in" id="teb3" name="hobi[]" value="2" />
            <label for="teb3">Kepala Bidang Sumber Daya Kesehatan</label>
          </div>
          <div class="s12">
            <input type="checkbox" class="filled-in" id="teb4" name="hobi[]" value="3"/>
            <label for="teb4">Kepala Bidang P2PL</label>
          </div>
          <div class="s12">
            <input type="checkbox" class="filled-in" id="teb5" name="hobi[]" value="4"/>
            <label for="teb5">Kepala UPT Puskesmas Se-Kota Bandung</label>
          </div>
          <div class="s12">
            <input type="checkbox" class="filled-in" id="teb6" name="hobi[]" value="5"/>
            <label for="teb6">Kepala Bina Program Kesehatan</label>
          </div>
          <div class="s12">
            <input type="checkbox" class="filled-in" id="teb7" name="hobi[]" value="6" />
            <label for="teb7">Kepala Sub Bagian Keuangan</label>
          </div>
          <div class="s12">
            <input type="checkbox" class="filled-in" id="teb8" name="hobi[]" value="7" />
            <label for="teb8">Kepala Sub Bagian Kepegawaian</label>
          </div>
          <div class="s12">
            <input type="checkbox" class="filled-in" id="teb9" name="hobi[]" value="8" />
            <label for="teb9">Kepala Sub Bagian Umum</label>
          </div>

        </div>
        <button class="btn waves-effect waves-light" type="submit" name="action" formtarget="_blank">cetak
          <i class="material-icons right">send</i>
        </button>
      </div>

    </div>
  </div>
</main>
<?php echo form_close();?>
