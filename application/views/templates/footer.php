<script type="text/javascript" src="<?php echo base_url() ?>assets/js/jquery.min.js"></script>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script> -->
<script type="text/javascript" src="<?php echo base_url() ?>assets/js/chart.min.js"></script>
<script type="text/javascript" src="<?php echo base_url() ?>assets/vendor/materialize/materialize.min.js"></script>
<script type="text/javascript" src="<?php echo base_url() ?>assets/vendor/datatables/datatables.min.js"></script>
<script type="text/javascript" src="<?php echo base_url() ?>assets/vendor/datatables/datatables_style.min.js"></script>

<script type="text/javascript">
document.addEventListener("DOMContentLoaded", function(){
$('.preloader-background').delay(1000).fadeOut('slow');

$('.preloader-wrapper')
  .delay(1000)
  .fadeOut();
});
</script>

<!-- EMAIL PROGRESS -->
<script type="text/javascript">
  $(document).ready(function(){
    $('[id="email"]').click(function(){
			$('.loading-mail').delay(0).fadeIn('slow');
    });
  });
</script>

<!-- MATERIALIZE -->
<script type="text/javascript">
$(document).ready(function(){
 $('.modal').modal();
});

	$(document).ready(function() {
		$('select').material_select();
	});

	$(document).ready(function(){
	 $('.collapsible').collapsible({
	   accordion : false
	 });
	});

	$(document).ready(function(){
	 $('ul.tabs').tabs();
 	});

 $(".button-collapse").sideNav();

	$(function() {
	  $('input.autocomplete').autocomplete({
	    data: {
	      "STIKes Dharma Husada Bandung": null,
	      "Universitas Komputer Indonesia (UNIKOM)": null,
				"Universitas Padjajaran (UNPAD)": null,
	      "STIK Immanuel Bandung": null,
	      "Universitas Jenderal Achmad Yani (UNJANI)": null,
	      "Universitas Telkom": null,
				"Universitas Islam Bandung (UNISBA)":null,
				"STIKep PPNI jawa Barat":null,
				"STMIK (AMIKBANDUNG)":null,
				"STIKes Bhakti Kencana":null,
				"Institut Teknologi Nasional (ITENAS)":null,
				"STIKep PPNI jawa Barat":null,
				"Bina Sarana Informatika (BSI)":null,
				"SMK Provita":null,
				"SMK Merdeka":null,
				"Universitas Pasundan (UNPAS)":null,
				"Universitas Sanggabuana":null,
				"Politeknik Negeri Bandung (Polban)":null,
				"STIMIK LPKIA":null,
				"SMK Kencana":null,
				"Politeknik LP3I Bandung":null,
				"CSBI Bandung":null,
				"SMK Negeri 3 Bandung":null,
				"POLTEKES Bandung ":null,
				"STIKes Rajawali":null,
				"STIKes Santo Boromeus":null,
				"STIKep PPNI jawa Barat":null,
	      "Universitas Pendidikan Indonesia (UPI)" :null,
				"Universitas Maranatha": null,
	      "Institut Teknologi Harapan Bangsa (ITHB)":null,
				"Institut Teknologi Bandung (ITB)":null,
				"Institut Pertanian Bogor (IPB)":null,
				"Sekolah Tinggi Farmasi Bandung (STFB)":null,
				"Universitas Muhammadiyah Yogyakarta":null
	    }
	  });
	});

	$('.datepicker').pickadate({
	 selectMonths: true,
	 selectYears: true,
	 format: 'dd-mm-yyyy',
	 today: '',
	 clear: '',
	 close: 'OK'
	});
</script>

<!-- TOAST -->
<script>
	var x = document.getElementById("snackbar")
	x.className = "show";
	setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);
</script>

<!-- VALIDASI FORM -->
<script type="text/javascript">
	function validate(){
	  for (var i = 1; i <= 11; i++) {
	    var name = document.getElementById( "val"+i );
	    if( name.value === "" ){
	      Materialize.toast('Kolom Harus Di isi', 4000);
	      document.getElementById('val'+i).focus();
	      return false;
	    }
	  }
		setTimeout('location.reload()', 500);
	}
</script>

<!-- DATATABLE -->
<script type="text/javascript">
$(document).ready(function() {
		$('#example').DataTable( {

				"searching": true,
				"language": {
						"zeroRecords": "Data Tidak Ditemukan",
						"info": "Menampilkan _START_ Sampai _END_ Dari _TOTAL_ Data",
						"infoEmpty": "Tidak Ada Data",

						"decimal": ",",
						"thousands": ".",

						"paginate": {
							"first":      "Pertama",
							"last":       "Terakhir",
							"next":       "Berikutnya",
							"previous":   "Sebelumnya"
						}

				}
		});
});

$(document).ready(function() {
		$('#example2').DataTable( {

				"searching": true,
				"language": {
						"zeroRecords": "Data Tidak Ditemukan",
						"info": "Menampilkan _START_ Sampai _END_ Dari _TOTAL_ Data",
						"infoEmpty": "Tidak Ada Data",

						"decimal": ",",
						"thousands": ".",

						"paginate": {
							"first":      "Pertama",
							"last":       "Terakhir",
							"next":       "Berikutnya",
							"previous":   "Sebelumnya"
						}

				}
		});
});

$(document).ready(function() {
    var dataTable = $('#example').dataTable();
    $("#searchbox").keyup(function() {
        dataTable.fnFilter(this.value);
    });
});

$(document).ready(function() {
    var dataTable = $('#example2').dataTable();
    $("#searchbox").keyup(function() {
        dataTable.fnFilter(this.value);
    });
});

</script>




</body>
</html>
