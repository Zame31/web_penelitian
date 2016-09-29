<?php
$attributes = array('target' => '_blank','onsubmit' => "return validate();");
echo form_open('penelitian/tambah',$attributes);
?>
<main>
  <div class="title">
    <span>sistem informasi izin penelitian (SIIP)</span>
      <div class="col s12 bred">
        <a href="#!" class="breadcrumb">pengajuan Penelitian</a>
        <a href="#!" class="breadcrumb">Buat Pengajuan</a>
      </div>
  </div>
  <div class="content">
    <div class="row form">

      <!-- dengan ini menerangkan bahwa -->
      <div class="col s12">
        <div class="card-panel cus-tambah white lighten-2">
          <p class="sub-tit teal lighten-2">Keterangan :</p>
          <div class="content">
            <div class="row">
              <div class="input-field col s6">
                <label class="active" for="dibuat">Waktu Dibuat Surat :</label>
                <input type="date" class="datepicker" id="dibuat" name="dibuat" value="<?php echo date("d-m-Y"); ?>">
              </div>
              <div class="input-field col s6">
                <select name="jenis_surat">
                  <option value="penelitian" selected>Penelitian/Skripsi</option>
                  <option value="pkl">Praktek Kerja Lapangan(PKL) non Medis</option>
                  <option value="pkl_medis">Praktek Kerja Lapangan(PKL) Medis</option>
                </select>
                <label>Dibuat Untuk :</label>
              </div>
              <div class="input-field col s6">
                  <label  >Dari Institusi :</label>
                <input id="val1" type="text" class="autocomplete" name="institusi" value="<?php echo set_value('institusi'); ?>">
              </div>
            </div>
          </div>
        </div>
      </div>

        <!-- dengan ini menerangkan bahwa -->
        <div class="col s12">
          <div class="card-panel cus-tambah white lighten-2">
            <p class="sub-tit teal lighten-2">Dengan ini menerangkan bahwa :</p>
            <div class="content">
              <div class="row">
                <div class="input-field col s12">
                  <input id="val2" type="text" name="nama" value="<?php echo set_value('nama'); ?>">
                  <label>Nama Lengkap</label>
                </div>
                <div class="input-field col s12">
                  <textarea name="alamat" id="val3" class="materialize-textarea"><?php echo set_value('alamat'); ?></textarea>
                  <label for="val3">Alamat</label>
                </div>
                <div class="input-field col s12">
                  <textarea name="maksud" id="val4" class="materialize-textarea"><?php echo set_value('maksud'); ?></textarea>
                  <label for="val4">Maksud</label>
                  <?php echo validation_errors(); ?>
                </div>
                <div class="row">
                  <div class="input-field col s6">
                    <label class="active" for="val5">Waktu Mulai Penelitian</label>
                    <input type="date" class="datepicker" id="val5" name="mulai" value="<?php echo set_value('mulai'); ?>">
                  </div>
                  <div class="input-field col s6">
                    <label class="active" for="val6">Waktu Selesai Penelitian</label>
                    <input type="date" class="datepicker" id="val6" name="selesai" value="<?php echo set_value('selesai'); ?>">
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <!-- Surat keterangan ini dibuat atas dasar -->
        <div class="col s12">
          <div class="card-panel cus-tambah white lighten-2">
            <p class="sub-tit teal lighten-2">Surat keterangan ini dibuat atas dasar :</p>
            <div class="content">
              <div class="row">
                <div class="row">
                  <div class="s12">
                    Surat pengantar dari Kepala Badan Kesatuan Bangsa dan Pemberdayaan Masyarakat Kota Bandung (BKBPM)
                  </div>
                </div>
                <div class="row">
                  <div class="input-field col s6">
                    <input id="val7" type="text"  name="no_bkbpm" value="<?php echo set_value('no_bkbpm'); ?>">
                    <label>Nomor BKBPM</label>
                  </div>
                  <div class="input-field col s6">
                    <label class="active" for="tgl_bkbpm">Tanggal BKBPM</label>
                    <input id="val8" type="date" class="datepicker" id="tgl_bkbpm" name="tanggal_bkbpm" value="<?php echo set_value('tanggal_bkbpm'); ?>">
                  </div>
                </div>
                <div class="row">
                  <div class="s12">
                    Surat Permohonan
                  </div>
                </div>
                <div class="row">
                  <div class="input-field col s12">
                    <input id="val9" type="text"  name="surat" value="<?php echo set_value('surat'); ?>">
                    <label  >Surat Permohonan Dari</label>
                  </div>
                </div>
                <div class="row">
                  <div class="input-field col s6">
                    <input id="val10" type="text"  name="no_surat" value="<?php echo set_value('no_surat'); ?>">
                    <label  >Nomor Surat</label>
                  </div>
                  <div class="input-field col s6">
                    <label class="active" for="val11">Tanggal Surat</label>
                    <input type="date" class="datepicker" id="val11" name="tanggal_surat" value="<?php echo set_value('tanggal_surat'); ?>">
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <!-- Tembusan -->
        <div class="col s12">
          <div class="card-panel cus-tambah white lighten-2">
            <p class="sub-tit teal lighten-2">Tembusan :</p>
            <div class="content">
              <div class="row">
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
                  <div class="col s6">
                    <input type="checkbox" class="filled-in" id="teb10" name="hobi[]" value="9" />
                    <label for="teb10">kepala UPT Laboratorium Kesehatan</label>
                  </div>
                  <div class="col s6">
                    <input type="checkbox" class="filled-in" id="teb11" name="hobi[]" value="10" />
                    <label for="teb11">kepala UPT Yankes Mobilitas</label>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="col s12">
          <button class="btn waves-effect waves-light btn-large" type="submit" name="action">cetak
            <i class="material-icons right">send</i>
          </button>
        </div>



    </div>
  </div>
</main>
<?php echo form_close();?>
