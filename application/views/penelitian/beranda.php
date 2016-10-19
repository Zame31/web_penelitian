<?php if ($this->session->flashdata('success_msg')) { ?>
      <div id="snackbar"> <?php echo $this->session->flashdata('success_msg') ?> </div>
  <?php } ?>
<?php
  $data_bulan = '';
  $label_bulan = '';
  foreach ($bulan_peng as $bul) {
    $data_bulan = $data_bulan.$bul['jumlah'].',';
    $label_bulan = $label_bulan.'"'.bulan($bul['bulan']).'",';
  }
?>
<script type="text/javascript">
  window.onload = function() {
    var ctx = $("#myChart").get(0).getContext("2d");
    var data = {
      labels: [<?php echo $label_bulan; ?>],
      datasets: [
        {
          fillColor: "rgba(51,153,153,0.5)",
          strokeColor: "#339999",
          pointColor: "#339999",
          pointStrokeColor: "#fff",
          data: [<?php echo $data_bulan; ?>]
        }
      ]
    }
    var myNewChart = new Chart(ctx).Line(data);
  };
</script>

<main>
  <div class="content">
    <div class="row">
      <div class="col s6 m2">
        <a class="card" href="<?php echo site_url('penelitian/tambah'); ?>">
        <div class="card-panel custom teal lighten-2 ">
          <span class="white-text">
            <i class="material-icons cus-icon">person_add</i>
            <h4>Buat Pengajuan</h4>
          </span>
        </div>
        </a>
      </div>
      <div class="col s6 m2">
        <div class="card-panel custom red lighten-2">
          <span class="white-text">
            <i class="material-icons cus-icon">work</i>
            <h4>Jumlah Pengajuan Hari Ini</h4>
            <h3><?php echo $jum_hari_ini; ?></h3>
          </span>
        </div>
      </div>
      <div class="col s6 m2">
        <div class="card-panel custom blue lighten-2">
          <span class="white-text">
            <i class="material-icons cus-icon">equalizer</i>
            <h4>Jumlah Pengajuan Minggu Ini</h4>
            <h3><?php echo $jum_minggu_ini; ?></h3>
          </span>
        </div>
      </div>
      <div class="col s6 m2">
        <div class="card-panel custom orange lighten-2">
          <span class="white-text">
            <i class="material-icons cus-icon">school</i>
            <h4>Total Pengajuan Penelitian</h4>
            <h3><?php echo $jum_pen; ?></h3>
          </span>
        </div>
      </div>
      <div class="col s6 m2">
        <div class="card-panel custom brown lighten-2">
          <span class="white-text">
            <i class="material-icons cus-icon">face</i>
            <h4>Total Pengajuan Kerja Praktek</h4>
            <h3><?php echo $jum_pkl; ?></h3>
          </span>
        </div>
      </div>
      <div class="col s6 m2">
        <div class="card-panel custom green lighten-2">
          <span class="white-text">
            <i class="material-icons cus-icon">assignment_ind</i>
            <h4>Total Semua Pengajuan</h4>
            <h3><?php echo $penelitian; ?></h3>
          </span>
        </div>
      </div>
    </div>
    <!-- Grafik -->
    <div class="row">
      <div class="col s12">
        <div class="card-panel white lighten-2">
          <span class="black-text">
            <h4 class="title-grafik">Grafik Pengajuan Perbulan</h4>
            <canvas id="myChart"></canvas>
          </span>
        </div>
      </div>
    </div>

  <div class="row">

    <div class="col s6">
      <div class="collection z-depth-1">
        <a href="#!" class="collection-item active teal lighten-2">5 Institusi Terbanyak Membuat Pengajuan Penelitian<span class="badge"></span></a>
        <a href="#!" class="collection-item">Institusi<span class="badge">Jumlah</span></a>
          <?php foreach ($univ as $news_item) { ?>
            <a href="#!" class="collection-item"><?php echo $news_item['institusi']; ?><span class="badge">  <?php echo $news_item['Jumlah']; ?></span></a>
          <?php } ?>
      </div>
    </div>
    <div class="col s6">
      <div class="collection z-depth-1">
        <a href="#!" class="collection-item active teal lighten-2">5 Institusi Terbanyak Membuat Pengajuan Kerja Praktek<span class="badge"></span></a>
        <a href="#!" class="collection-item">Institusi<span class="badge">Jumlah</span></a>
          <?php foreach ($univ_pkl as $news_pkl) { ?>
            <a href="#!" class="collection-item"><?php echo $news_pkl['institusi']; ?><span class="badge">  <?php echo $news_pkl['Jumlah']; ?></span></a>
          <?php } ?>
      </div>
    </div>
    <!-- <div class="col s2">
      <a class="card" href="<?php echo site_url('penelitian/backup'); ?>">
      <div class="card-panel custom brown lighten-2">
        <span class="white-text">
          <i class="material-icons cus-icon">print</i>
          <h4>Backup Data</h4>
        </span>
      </div>
      </a>
      <?php echo form_open_multipart('penelitian/restore');?>
        <label for="backup">Restore Database (*.sql)</label>
        <input class="form-control" type="file" name="datafile" size="30" id="gambar" />
        <input class="restore" type="submit" name="restore" value="Restore Database" />
      </form>

    </div> -->
    <!-- <div class="col s2">
      <div class="collection">
        <a href="#!" class="collection-item">Bulan<span class="badge">Jumlah</span></a>
          <?php foreach ($bulan_peng as $bul) { ?>
            <a href="#!" class="collection-item"><?php echo bulan($bul['bulan']); ?><span class="badge">  <?php echo $bul['jumlah']; ?></span></a>
          <?php } ?>
      </div>
    </div> -->
  </div>
</div>
</main>
