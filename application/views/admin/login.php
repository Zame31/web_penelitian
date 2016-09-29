<?php if ($this->session->flashdata('fail')) { ?>
      <div id="snackbar"> <?php echo $this->session->flashdata('fail') ?> </div>
  <?php } ?>
<?php
$attributes = array('onsubmit' => "return validate();");
echo form_open('login/validasi',$attributes);
?>
<div class="title-login teal lighten-1 z-depth-1">
  sistem informasi izin penelitian (SIIP)
  <span>Version Beta 1.0</span>
</div>
<div class="container">
  <div class="row">
    <div class="col offset-l3 l6 s12">
      <div class="card-panel cus-tambah white lighten-2">
        <p class="card-login center-align">LOGIN</p>
        <div class="content-login">
          <div class="row">
              <div class="input-field col s12">
                <i class="material-icons prefix">account_circle</i>
                <input id="val1" type="text" name="username">
                <label>Username</label>
              </div>
              <div class="input-field col s12">
                <i class="material-icons prefix">vpn_key</i>
                <input id="val2" type="password" name="password">
                <label>Password</label>
              </div>
              <div class="col s12 but-login">
                <button class=" col s12 btn waves-effect waves-light" type="submit" name="action">Login Sekarang

                </button>
              </div>
          </div>
        </div>
      </div>
    </div>
  </div>


</div>
<?php echo form_close();?>
