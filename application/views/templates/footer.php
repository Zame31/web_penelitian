<script src="<?php echo base_url() ?>assets/js/jquery.min.js"></script>
<script src="<?php echo base_url() ?>assets/vendor/materialize/materialize.min.js"></script>

<script type="text/javascript" src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.12/js/dataTables.bootstrap.min.js"></script>

<script src='https://cdnjs.cloudflare.com/ajax/libs/Chart.js/1.0.2/Chart.min.js'></script>

<!-- MATERIALIZE -->
<script type="text/javascript">
	$(document).ready(function(){
		$('.modal-trigger').leanModal();
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

	$(function() {
	  $('input.autocomplete').autocomplete({
	    data: {
	      "STIKes Dharma Husada Bandung": null,
	      "Universitas Komputer Indonesia (UNIKOM)": null,
				"Universitas Padjajaran (UNPAD)": null,
	      "STIK Immanuel Bandung": null,
	      "STIKes Jenderal Achmad Yani (UNJANI)": null,
	      "Universitas Telkom": null,
				"Universitas Islam Bandung (UNISBA)":null,
				"STIKep PPNI jawa Barat":null,
				"STMIK (AMIKBANDUNG)":null,
				"STIKes Bhakti Kencana":null,
				"Institut Teknologi Nasional (ITENAS)":null,
				"STIKep PPNI jawa Barat":null,
				"Bina Sarana Informatika (BSI)":null,
				"Sekolah Tinggi Farmasi Bandung (STFB)":null
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
		} );
} );

$(document).ready(function() {
    var dataTable = $('#example').dataTable();
    $("#searchbox").keyup(function() {
        dataTable.fnFilter(this.value);
    });
});


</script>






</body>
</html>
