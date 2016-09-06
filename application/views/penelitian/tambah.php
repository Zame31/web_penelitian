<?php if ($this->session->flashdata('success_msg')) { ?>
      <div id="snackbar"> <?php echo $this->session->flashdata('success_msg') ?> </div>
  <?php } ?>
<?php
$attributes = array('target' => '_blank','onsubmit' => "setTimeout('location.reload()', 500);");
echo form_open('penelitian/tambah',$attributes);
?>
<main>
  <div class="title">
    Tambah Pengajuan Penelitian
  </div>
  <div class="container">
    <div class="row form">
      <?php echo validation_errors(); ?>
      <div class="col s12">
        <div class="row">
          <div class="input-field col s6">
            <select name="jenis_surat">
              <option value="" disabled selected>Surat Ini Dibuat Untuk :</option>
              <option value="penelitian">Penelitian/Skripsi</option>
              <option value="pkl">Praktek Kerja Lapangan(PKL) non Medis</option>
              <option value="pkl_medis">Praktek Kerja Lapangan(PKL) Medis</option>
            </select>
            <label>Dibuat Untuk :</label>
          </div>
          <div class="input-field col s6">
            <input type="text" class="autocomplete" name="institusi" value="<?php echo set_value('institusi'); ?>">
            <label data-error="salah" data-success="benar">Dari Institusi</label>
          </div>
        </div>
  
        <div class="row">
          <div class="col s12">
            <p class=" sub-tit">Dengan ini menerangkan bahwa :</p>
          </div>
        </div>

        <div class="row">
          <div class="input-field col s12">
            <input type="text" class="validate" name="nama" value="<?php echo set_value('nama'); ?>">
            <label data-error="salah" data-success="benar">Nama</label>
          </div>
        </div>
        <div class="row">
          <div class="input-field col s12">
            <textarea name="alamat" id="textarea1" class="materialize-textarea validate"><?php echo set_value('alamat'); ?></textarea>
            <label data-error="salah" data-success="benar" for="textarea1">Alamat</label>
          </div>
        </div>
        <div class="row">
          <div class="input-field col s12">
            <textarea name="maksud" id="textarea2" class="materialize-textarea validate"><?php echo set_value('maksud'); ?></textarea>
            <label data-error="salah" data-success="benar" for="textarea2">Maksud</label>
          </div>
        </div>
        <div class="row">
          <div class="col s6">
            <label class="active" for="mulai">Waktu Mulai Penelitian</label>
            <input type="date" class="datepicker" id="mulai" name="mulai" value="<?php echo set_value('mulai'); ?>">
          </div>
          <div class=" col s6">
            <label class="active" for="selesai">Waktu Selesai Penelitian</label>
            <input type="date" class="datepicker" id="selesai" name="selesai" value="<?php echo set_value('selesai'); ?>">
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
          <div class="input-field col s6">
            <input type="text" class="validate" name="no_bkbpm" value="<?php echo set_value('no_bkbpm'); ?>">
            <label data-error="salah" data-success="benar">Nomor BKBPM</label>
          </div>
          <div class="col s6">
            <label class="active" for="tgl_bkbpm">Tanggal BKBPM</label>
            <input type="date" class="datepicker" id="tgl_bkbpm" name="tanggal_bkbpm" value="<?php echo set_value('tanggal_bkbpm'); ?>">
          </div>

        </div>


        <div class="row">
          <div class="s12">
            Surat Permohonan
          </div>
        </div>
        <div class="row">
          <div class="input-field col s12">
            <input type="text" class="validate" name="surat" value="<?php echo set_value('surat'); ?>">
            <label data-error="salah" data-success="benar">Surat Permohonan Dari</label>
          </div>
        </div>
        <div class="row">
          <div class="input-field col s6">
            <input type="text" class="validate" name="no_surat" value="<?php echo set_value('no_surat'); ?>">
            <label data-error="salah" data-success="benar">Nomor Surat</label>
          </div>
          <div class="col s6">
            <label class="active" for="tgl_surat">Tanggal Surat</label>
            <input type="date" class="datepicker" id="tgl_surat" name="tanggal_surat" value="<?php echo set_value('tanggal_surat'); ?>">
          </div>
        </div>

        <div class="row">
          <div class="s12">
            Tembusan
          </div>
        </div>
        <div class="row">
          <div class="col s6">
            <input type="checkbox" class="filled-in" id="teb1" name="hobi[]" value="0" />
            <label for="teb1">Kepala Dinas Kesehatan Kota Bandung (Sebagai Laporan)</label>
          </div>
          <div class="col s6">
            <input type="checkbox" class="filled-in" id="teb2" name="hobi[]" value="1" />
            <label for="teb2">Kepala Bidang Pelayanan Kesehatan</label>
          </div>
          <div class="col s6">
            <input type="checkbox" class="filled-in" id="teb3" name="hobi[]" value="2" />
            <label for="teb3">Kepala Bidang Sumber Daya Kesehatan</label>
          </div>
          <div class="col s6">
            <input type="checkbox" class="filled-in" id="teb4" name="hobi[]" value="3"/>
            <label for="teb4">Kepala Bidang P2PL</label>
          </div>
          <div class="col s6">
            <input type="checkbox" class="filled-in" id="teb5" name="hobi[]" value="4"/>
            <label for="teb5">Kepala UPT Puskesmas Se-Kota Bandung</label>
          </div>
          <div class="col s6">
            <input type="checkbox" class="filled-in" id="teb6" name="hobi[]" value="5"/>
            <label for="teb6">Kepala Bina Program Kesehatan</label>
          </div>
          <div class="col s6">
            <input type="checkbox" class="filled-in" id="teb7" name="hobi[]" value="6" />
            <label for="teb7">Kepala Sub Bagian Keuangan</label>
          </div>
          <div class="col s6">
            <input type="checkbox" class="filled-in" id="teb8" name="hobi[]" value="7" />
            <label for="teb8">Kepala Sub Bagian Kepegawaian</label>
          </div>
          <div class="col s6">
            <input type="checkbox" class="filled-in" id="teb9" name="hobi[]" value="8" />
            <label for="teb9">Kepala Sub Bagian Umum</label>
          </div>

        </div>
        <button class="btn waves-effect waves-light" type="submit" name="action">cetak
          <i class="material-icons right">send</i>
        </button>
      </div>

    </div>
  </div>
</main>
<?php echo form_close();?>
