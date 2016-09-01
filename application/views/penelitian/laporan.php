<main>
  <div class="title">
    Cetak Laporan Penelitian
  </div>
  <div class="content">
    <div class="row">
      <div class="input-field col s3">
        <select>
          <option value="" disabled selected>Pilih Bulan</option>
          <option value="januari">Januari</option>
          <option value="februari">Februari</option>
          <option value="maret">Maret</option>
          <option value="april">April</option>
          <option value="mei">Mei</option>
        </select>
        <label>Dari Bulan :</label>
      </div>
      <div class="input-field col s3">
        <select>
          <option value="" disabled selected>Pilih Bulan</option>
          <option value="januari">Januari</option>
          <option value="februari">Februari</option>
          <option value="maret">Maret</option>
          <option value="april">April</option>
          <option value="mei">Mei</option>
        </select>
        <label>Sampai Bulan :</label>
      </div>
      <div class="input-field col s6">
        <a href="<?php echo site_url('penelitian/cetak_laporan'); ?>" target="_blank" class="waves-effect waves-light btn red lighten-2">PDF</a>
      </div>
    </div>
  </div>
</main>
