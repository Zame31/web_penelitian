<?php echo form_open('penelitian/laporan'); ?>


<main>
  <div class="title">
    Cetak Laporan Penelitian
  </div>
  <div class="content">
    <div class="row">
      <div class="input-field col s4">
        <select name="t1">
          <option value="" disabled selected>Pilih Tahun</option>
          <?php for ($i=2013; $i <=date('Y'); $i++) {
            echo "<option value='$i'>$i</option>";
          }
          ?>
        </select>
        <label>Dari Tahun :</label>
      </div>
      <div class="input-field col s4">
        <select name="t2">
          <option value="" disabled selected>Pilih Tahun</option>
          <?php for ($i=2013; $i <=date('Y'); $i++) {
            echo "<option value='$i'>$i</option>";
          }
          ?>
        </select>
        <label>Sampai Tahun :</label>
      </div>
    </div>
    <div class="row">
      <div class="input-field col s4">
        <select name="b1">
          <option value="" disabled selected>Pilih Bulan</option>
          <option value="01">Januari</option>
          <option value="02">Februari</option>
          <option value="03">Maret</option>
          <option value="04">April</option>
          <option value="05">Mei</option>
          <option value="06">Juni</option>
          <option value="07">Juli</option>
          <option value="08">Agustus</option>
          <option value="09">September</option>
          <option value="10">Oktober</option>
          <option value="11">November</option>
          <option value="12">Desermber</option>
        </select>
        <label>Dari Bulan :</label>
      </div>
      <div class="input-field col s4">
        <select name="b2">
          <option value="" disabled selected>Pilih Bulan</option>
          <option value="01">Januari</option>
          <option value="02">Februari</option>
          <option value="03">Maret</option>
          <option value="04">April</option>
          <option value="05">Mei</option>
          <option value="06">Juni</option>
          <option value="07">Juli</option>
          <option value="08">Agustus</option>
          <option value="09">September</option>
          <option value="10">Oktober</option>
          <option value="11">November</option>
          <option value="12">Desermber</option>
        </select>
        <label>Sampai Bulan :</label>
      </div>
      <div class="input-field col s12">
        <button class="btn waves-effect waves-light red lighten-2" type="submit" name="action" formtarget="_blank">PDF
          <i class="material-icons right">send</i>
        </button>
      </div>
    </div>
    <?php echo validation_errors(); ?>
  </div>
</main>
<?php echo form_close();?>
