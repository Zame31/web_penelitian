<script src="<?php echo base_url() ?>assets/js/jquery.min.js"></script>
<script src="<?php echo base_url() ?>assets/vendor/materialize/materialize.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.12/js/dataTables.bootstrap.min.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
    $('#example').DataTable();
} );
	</script>


<script type="text/javascript">
$('.datepicker').pickadate({
 selectMonths: true, // Creates a dropdown to control month
 selectYears: 15, // Creates a dropdown of 15 years to control year
 format: 'yyyy/mm/dd'
});
</script>

<script type="text/javascript">
$(document).ready(function(){
// the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
$('.modal-trigger').leanModal();
});
</script>

</body>
</html>
