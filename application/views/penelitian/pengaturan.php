<?php if ($this->session->flashdata('success_msg')) { ?>
      <div id="snackbar"> <?php echo $this->session->flashdata('success_msg') ?> </div>
  <?php } ?>
<main>

  <div class="title">
    <span>Sistem Informasi Pengajuan Izin Penelitian & Kerja Praktek</span>
      <div class="col s12 bred">
        <a href="#!" class="breadcrumb">Pengaturan</a>
      </div>
  </div>


  <div class="content">
    <div class="row">
      <div class="col l6">
        <ul class="collapsible" data-collapsible="accordion">
         <li>
           <div class="collapsible-header jab">
             <div class="collection">
               <a href="#!" class="collection-item active teal lighten-2">Sekertaris Dinas Kesehatan Kota Bandung<span class="badge"></span></a>
               <a href="#!" class="collection-item">Nama Lengkap<span class="badge">NIP</span></a>
               <?php foreach ($pejabat as $pe) { ?>
                 <a href="#!" class="collection-item"><?php echo $pe['nama_pejabat']; ?><span class="badge">  <?php echo $pe['nip']; ?></span></a>
               <?php } ?>
             </div>

           </div>
           <div class="collapsible-body">
            <div class="main-seker">
              <?php echo form_open('penelitian/edit_sekertaris'); ?>
              <div class="row">
                <?php foreach ($pejabat as $pe) { ?>
                <div class="input-field col s12">
                  <input id="val2" type="text" name="nama_pejabat" value="<?php echo $pe['nama_pejabat']; ?>">
                  <label>Nama Lengkap</label>
                </div>
                <div class="input-field col s12">
                  <input id="val2" type="text" name="golongan" value="<?php echo $pe['golongan']; ?>">
                  <label>Golongan</label>
                </div>
                <div class="input-field col s12">
                  <input id="val2" type="text" name="nip" value="<?php echo $pe['nip']; ?>">
                  <label>NIP</label>
                </div>
                <?php } ?>
                <div class="col s12">
                  <button class="btn waves-effect waves-light" type="submit" name="action">Ubah
                    <i class="material-icons right">send</i>
                  </button>
                </div>
              </div>
              <?php echo form_close();?>
            </div>
           </div>
         </li>
       </ul>
      </div>
    </div>


  </div>


</main>
