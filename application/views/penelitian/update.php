
<?php echo form_open('penelitian/update/'.$news_item['id_penelitian']); ?>
<input type="text" name="id_pengaju" value="<?php echo $news_item['id_pengaju'] ?>" hidden>
<main>
  <div class="title">
    Update Pengajuan Penelitian
  </div>
  <div class="container">
    <div class="row form">
        <?php echo validation_errors(); ?>
        <div class="input-field col s12">
          <label class="active" for="dibuat">Waktu Dibuat Surat</label>
          <input type="date" class="datepicker" id="dibuat" name="dibuat" value="<?php echo $news_item['waktu_pembuatan'] ?>">
        </div>
        <div class="col s12">
        <div class="row">
          <div class="input-field col s6">
            <select name="jenis_surat">
              <option value="penelitian" <?php if ($news_item['jenis_surat'] == 'penelitian'){echo 'selected';}?> >Penelitian/Skripsi</option>
              <option value="pkl" <?php if ($news_item['jenis_surat'] == 'pkl'){echo 'selected';}?>>Praktek Kerja Lapangan(PKL) non Medis</option>
              <option value="pkl_medis" <?php if ($news_item['jenis_surat'] == 'pkl_medis'){echo 'selected';}?>>Praktek Kerja Lapangan(PKL) Medis</option>
            </select>
            <label>Dibuat Untuk :</label>
          </div>
          <div class="input-field col s6">
            <input type="text" class="autocomplete" name="institusi" value="<?php echo $news_item['institusi'] ?>">
            <label data-error="salah" data-success="benar">Dari Institusi</label>
          </div>
        </div>

        <div class="row">
          <div class="s12">
            <p class="z-depth-1 sub-tit">Dengan ini menerangkan bahwa :</p>
          </div>
        </div>

        <div class="row">
          <div class="input-field col s12">
            <input type="text" class="validate" name="nama" value="<?php echo $news_item['nama'] ?>">
            <label data-error="salah" data-success="benar">Nama</label>
          </div>
        </div>
        <div class="row">
          <div class="input-field col s12">
            <textarea name="alamat" id="textarea1" class="materialize-textarea validate"><?php echo $news_item['alamat'] ?></textarea>
            <label data-error="salah" data-success="benar" for="textarea1">Alamat</label>
          </div>
        </div>
        <div class="row">
          <div class="input-field col s12">
            <textarea name="maksud" id="textarea2" class="materialize-textarea validate"><?php echo $news_item['maksud'] ?></textarea>
            <label data-error="salah" data-success="benar" for="textarea2">Maksud</label>
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
            Surat Permohonan
          </div>
        </div>

        <div class="row">
          <div class="input-field col s12">
            <input type="text" class="validate" name="surat" value="<?php echo $news_item['surat'] ?>">
            <label data-error="salah" data-success="benar">Surat Permohonan Dari</label>
          </div>
        </div>
        <div class="row">
          <div class="input-field col s6">
            <input type="text" class="validate" name="no_surat" value="<?php echo $news_item['no_surat'] ?>">
            <label data-error="salah" data-success="benar">Nomor Surat</label>
          </div>
          <div class="col s6">
            <label class="active" for="tgl_surat">Tanggal Surat</label>
            <input type="date" class="datepicker" id="tgl_surat" name="tanggal_surat" value="<?php echo $news_item['tanggal_surat'] ?>">
          </div>
        </div>

        <div class="row">
          <div class="s12">
            Tembusan
          </div>
        </div>
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
                    'Kepala Sub. Bagian Umum');

                    if(!empty($news_item['tembusan'])){

                      $tmp=explode(',',strrev($news_item['tembusan']));
                      //0,1,3,4
                      $a = array();
                      for ($i=0; $i < count($tmp); $i++) {
                        array_push($a, $tmp[$i]);
                        }

                      sort($a);
                      //print_r($a);
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
                <input type="checkbox" class="filled-in" id="teb<?php echo $i ?>" name="hobi[]" value="<?php echo $i ?>" <?php if ($i== ($array[$i] )) { echo "checked";}else {echo "";} ?> />
                <label for="teb<?php echo $i ?>"><?php echo $hobi[$i] ?></label>
              </div>

              <?php
            }

          ?>
        </div>


          <!-- ====================================================== -->
        <button class="btn waves-effect waves-light" type="submit" name="action">Simpan
          <i class="material-icons right">send</i>
        </button>


      </div>

    </div>
  </div>
</main>
<?php echo form_close();?>
