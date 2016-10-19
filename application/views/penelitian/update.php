
<?php echo form_open('penelitian/update/'.$news_item['id_penelitian']); ?>
<input type="text" name="id_pengaju" value="<?php echo $news_item['id_pengaju'] ?>" hidden>
<main>
  <div class="title">
    <span>Sistem Informasi Pengajuan Izin Penelitian & Kerja Praktek</span>
      <div class="col s12 bred">
        <a href="#!" class="breadcrumb">pengajuan Penelitian</a>
        <a href="#!" class="breadcrumb">data Pengajuan</a>
        <a href="#!" class="breadcrumb">perbaharui Pengajuan</a>
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
                <input type="date" class="datepicker" id="dibuat" name="dibuat" value="<?php echo $news_item['waktu_pembuatan'] ?>">
              </div>
              <div class="input-field col s6">
                <select name="jenis_surat">
                  <option value="penelitian" <?php if ($news_item['jenis_surat'] == 'penelitian'){echo 'selected';}?> >Penelitian/Skripsi</option>
                  <option value="pkl" <?php if ($news_item['jenis_surat'] == 'pkl'){echo 'selected';}?>>Praktek Kerja Lapangan(PKL) non Medis</option>
                  <option value="pkl_medis" <?php if ($news_item['jenis_surat'] == 'pkl_medis'){echo 'selected';}?>>Praktek Kerja Lapangan(PKL) Medis</option>
                </select>
                <label>Dibuat Untuk :</label>
              </div>
              <div class="input-field col s6">
                <label class="active">Dari Institusi :</label>
                <input id="val1" type="text" class="autocomplete" name="institusi" value="<?php echo $news_item['institusi'] ?>">
              </div>
              <div class="input-field col s6">
                  <label  >E-Mail :</label>
                <input type="text" name="mail" value="<?php echo $news_item['mail'] ?>">
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
                  <input id="val2" type="text" name="nama" value="<?php echo $news_item['nama'] ?>">
                  <label class="active">Nama Lengkap</label>
                </div>
                <div class="input-field col s12">
                  <textarea name="alamat" id="val3" class="materialize-textarea"><?php echo $news_item['alamat'] ?></textarea>
                  <label class="active" for="val3">Alamat</label>
                </div>
                <div class="input-field col s12">
                  <textarea name="maksud" id="val4" class="materialize-textarea"><?php echo $news_item['maksud'] ?></textarea>
                  <label class="active" for="val4">Maksud</label>
                </div>
                <div class="row">
                  <div class="input-field col s6">
                    <label class="active" for="val5">Waktu Mulai Penelitian</label>
                    <input type="date" class="datepicker" id="val5" name="mulai" value="<?php echo $news_item['waktu_mulai'] ?>">
                  </div>
                  <div class="input-field col s6">
                    <label class="active" for="val6">Waktu Selesai Penelitian</label>
                    <input type="date" class="datepicker" id="val6" name="selesai" value="<?php echo $news_item['waktu_selesai'] ?>">
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
                    <input id="val7" type="text"  name="no_bkbpm" value="<?php echo $news_item['no_bkbpm'] ?>">
                    <label class="active">Nomor BKBPM</label>
                  </div>
                  <div class="input-field col s6">
                    <label class="active" class="active" for="tgl_bkbpm">Tanggal BKBPM</label>
                    <input id="val8" type="date" class="datepicker" id="tgl_bkbpm" name="tanggal_bkbpm" value="<?php echo $news_item['tanggal_bkbpm'] ?>">
                  </div>
                </div>
                <div class="row">
                  <div class="s12">
                    Surat Permohonan
                  </div>
                </div>
                <div class="row">
                  <div class="input-field col s12">
                    <input id="val9" type="text"  name="surat" value="<?php echo $news_item['surat'] ?>">
                    <label class="active"  >Surat Permohonan Dari</label>
                  </div>
                </div>
                <div class="row">
                  <div class="input-field col s6">
                    <input id="val10" type="text"  name="no_surat" value="<?php echo $news_item['no_surat'] ?>">
                    <label class="active"  >Nomor Surat</label>
                  </div>
                  <div class="input-field col s6">
                    <label class="active" for="val11">Tanggal Surat</label>
                    <input type="date" class="datepicker" id="val11" name="tanggal_surat" value="<?php echo $news_item['tanggal_surat'] ?>">
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
                  <?php
                  $hobi=array('Kepala Dinas Kesehatan Kota Bandung (Sebagai Laporan)',
                              'Kepala Bidang Pelayanan Kesehatan',
                              'Kepala Bidang Sumber Daya Kesehatan',
                              'Kepala Bidang P2PL',
                              'Kepala UPT Puskesmas Se-Kota Bandung',
                              'Kepala Bina Program Kesehatan',
                              'Kepala Sub. Bagian Keuangan',
                              'Kepala Sub. Bagian Kepegawaian',
                              'Kepala Sub. Bagian Umum',
                              'Kepala UPT Laboratorium kesehatan',
                              'Kepala UPT yankes mobilitas'
                             );

                            if(!empty($news_item['tembusan'])){

                              $tmp=explode(',',strrev($news_item['tembusan']));
                              //0,1,3,4
                              $a = array();
                              for ($i=0; $i < count($tmp); $i++) {
                                array_push($a, $tmp[$i]);
                                }

                              sort($a);
                              $array = [];
                              for($i=0;$i<count($hobi);$i++){
                              	if(in_array($i,$a))
                              		$array[] = $i;
                              	else
                              		$array[] = 0;
                              }


                            }
                    for ($i=0; $i <count($hobi); $i++) { ?>
                      <div class="col s6">
                        <input type="checkbox" class="filled-in" id="teb<?php echo $i ?>" name="hobi[]" value="<?php echo $i ?>" <?php if ($i == ($array[$i] )) { echo "checked";}else {echo "";} ?> />
                        <label for="teb<?php echo $i ?>"><?php echo $hobi[$i] ?></label>
                      </div>

                      <?php
                    }

                  ?>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="col s12">
          <button class="btn waves-effect waves-light" type="submit" name="action">Simpan
            <i class="material-icons right">send</i>
          </button>
        </div>



    </div>
  </div>
</main>
<?php echo form_close();?>
