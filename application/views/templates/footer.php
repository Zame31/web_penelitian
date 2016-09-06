<script src="<?php echo base_url() ?>assets/js/jquery.min.js"></script>
<script src="<?php echo base_url() ?>assets/vendor/materialize/materialize.min.js"></script>


<script>
$(function() {
  $('input.autocomplete').autocomplete({
    data: {
      "STIKes Dharma Husada Bandung": null,
      "Universitas Komputer Indonesia (UNIKOM)": null,
			"Universitas Padjajaran (UNPAD)": null
    }
  });
});
</script>


<script type="text/javascript" src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.12/js/dataTables.bootstrap.min.js"></script>

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
						"zeroRecords": "Nothing found - sorry",
						"info": "Menampilkan _START_ Sampai _END_ Dari _TOTAL_ Data",
						"infoEmpty": "Tidak Ada Data",
						"lengthMenu": "",
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
</script>

<script type="text/javascript">
$('.datepicker').pickadate({
 selectMonths: true, // Creates a dropdown to control month
 selectYears: true, // Creates a dropdown of 15 years to control year
 format: 'yyyy/mm/dd',
 formatSubmit: 'yyyy/mm/dd',
 today: '',
 clear: '',
 close: 'OK'
});
</script>

<script type="text/javascript">
$(document).ready(function(){
// the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
$('.modal-trigger').leanModal();
});

$(document).ready(function() {
	$('select').material_select();
});
</script>


</body>
</html>
