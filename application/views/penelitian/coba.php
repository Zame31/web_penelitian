<?php
if(!empty($news_item['tembusan'])){

  $tmp=explode(',',strrev($news_item['tembusan']));

  for ($i=0; $i < count($hobi); $i++) {
    $stack = array();

    if ($i == $tmp[$i]) {
      array_push($stack, $i);
    } else {
      array_push($stack, "0");
    }

    print_r($stack);
  }

  for ($i=0; $i < count($hobi); $i++) {

  ?>
    <div class="s12">
      <input type="checkbox" class="filled-in" id="<?php echo $hobi[$i] ?>" name="hobi[]" value="<?php echo $i; ?>"
      <?php if ($i== ($tmp[$i] )) { echo "checked";}else {echo "";} ?> />
      <label for="<?php echo $hobi[$i]; ?>"><?php echo $hobi[$i]; ?></label>
    </div>
  <?php
  }



  echo "<br><br>";
  for ($c=0;$c<count($tmp);$c++){
    $temb=$tmp[$c];

    echo $hobi[$temb]."<br> ";
    ?>
    <div class="s12">
      <input type="checkbox" class="filled-in" id="<?php echo $hobi[$temb] ?>" name="hobi[]" value="0" checked />
      <label for="<?php echo $hobi[$temb] ?>"><?php echo $hobi[$temb] ?></label>
    </div>
    <?php
  };
}
 ?>



=====================================================
for ($i=0; $i < count($hobi); $i++) {

if (isset($tmp[$i])) {
  $hasil = $tmp[$i];
  ?>
  <div class="col s6">
    <input type="checkbox" class="filled-in" id="<?php echo $hobi[$hasil] ?>"
           name="hobi[]" value="<?php echo $hasil; ?>" checked
            />
    <label for="<?php echo $hobi[$hasil]; ?>"><?php echo $hobi[$hasil]; ?></label>
  </div>
<?php
} else {
  $hasil = $i;
    ?>
    <div class="col s6">
      <input type="checkbox" class="filled-in" id="<?php echo $hobi[$hasil] ?>"
             name="hobi[]" value="<?php echo $hasil; ?>"
              />
      <label for="<?php echo $hobi[$hasil]; ?>"><?php echo $hobi[$hasil]; ?></label>
    </div>
  <?php
}
  }


===========
if(!empty($news_item['tembusan'])){

  $tmp=explode(',',strrev($news_item['tembusan']));
  //0,1,3,4
  for ($i=0; $i < count($hobi); $i++) {

  if (isset($tmp[$i])) {
  if($i != $tmp[$i]) {
      $hasil = $i;
        ?>
        <div class="col s6">
          <input type="checkbox" class="filled-in" id="<?php echo $hobi[$hasil] ?>"
                 name="hobi[]" value="<?php echo $hasil; ?>"
                  />
          <label for="<?php echo $hobi[$hasil]; ?>"><?php echo $hobi[$hasil]; ?></label>
        </div>
      <?php
    }
    if (isset($tmp[$i])) {
      $hasil = $tmp[$i];
      ?>
      <div class="col s6">
        <input type="checkbox" class="filled-in" id="<?php echo $hobi[$hasil] ?>"
               name="hobi[]" value="<?php echo $hasil; ?>" checked
                />
        <label for="<?php echo $hobi[$hasil]; ?>"><?php echo $hobi[$hasil]; ?></label>
      </div>
    <?php
  }
}else {
  $hasil = $i;
    ?>
    <div class="col s6">
      <input type="checkbox" class="filled-in" id="<?php echo $hobi[$hasil] ?>"
             name="hobi[]" value="<?php echo $hasil; ?>"
              />
      <label for="<?php echo $hobi[$hasil]; ?>"><?php echo $hobi[$hasil]; ?></label>
    </div>
  <?php
}



    }
  }
