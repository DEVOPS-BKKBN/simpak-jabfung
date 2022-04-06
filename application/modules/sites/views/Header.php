<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="robots" content="noindex,nofollow">
    <title><?php echo $judulpage; ?> | <?php echo APP_SHORT_TITLE ?></title>
	<link rel="icon" href="<?php echo base_url();?>assets/img/logo.png" type="image/png">
	<!-- Fonts and icons -->
	<script src="<?php echo base_url();?>assets/js/plugin/webfont/webfont.min.js"></script>
	<script>
		WebFont.load({
			google: {"families":["Lato:300,400,700,900"]},
			custom: {"families":["Flaticon", "Font Awesome 5 Solid", "Font Awesome 5 Regular", "Font Awesome 5 Brands", "simple-line-icons"], urls: ['<?php echo base_url();?>assets/css/fonts.min.css']},
			active: function() {
				sessionStorage.fonts = true;
			}
		});
	</script>
	<!-- CSS Files -->
	<link rel="stylesheet" href="<?php echo base_url();?>assets/js/plugin/line-awesome-1.3.0/css/line-awesome.min.css">
	<link rel="stylesheet" href="<?php echo base_url();?>assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="<?php echo base_url();?>assets/css/atlantis.css">
	<link rel="stylesheet" href="<?php echo base_url();?>assets/css/styles.css">
	<link href="<?php echo base_url();?>assets/js/plugin/dropify/dist/css/dropify.min.css" rel="stylesheet">
	
	<!--   Core JS Files   -->
	<script src="<?php echo base_url();?>assets/js/core/jquery.3.2.1.min.js"></script>
	<script src="<?php echo base_url();?>assets/js/core/popper.min.js"></script>
	<script src="<?php echo base_url();?>assets/js/core/bootstrap.min.js"></script>

	<!-- jQuery UI -->
	<script src="<?php echo base_url();?>assets/js/plugin/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
	<script src="<?php echo base_url();?>assets/js/plugin/jquery-ui-touch-punch/jquery.ui.touch-punch.min.js"></script>

	<!-- jQuery Scrollbar -->
	<script src="<?php echo base_url();?>assets/js/plugin/jquery-scrollbar/jquery.scrollbar.min.js"></script>
	
	<!-- select2 -->
	<link rel="stylesheet" href="<?php echo base_url();?>assets/js/plugin/select2/select2.min.css">
	<script src="<?php echo base_url();?>assets/js/plugin/select2/select2.min.js"></script>

	<!-- Chart JS -->
	<script src="<?php echo base_url();?>assets/js/plugin/chart.js/chart.min.js"></script>
	<!-- Chart Circle -->
	<script src="<?php echo base_url();?>assets/js/plugin/chart-circle/circles.min.js"></script>
	<!-- Datatables -->
	<script src="<?php echo base_url();?>assets/js/plugin/datatables/datatables.min.js"></script>
	<link rel="stylesheet" href="<?php echo base_url();?>assets/js/plugin/datatables/fixedColumns.bootstrap4.min.css">
	<script src="<?php echo base_url();?>assets/js/plugin/datatables/dataTables.fixedColumns.min.js"></script>

	<!-- Bootstrap Notify -->
	<script src="<?php echo base_url();?>assets/js/plugin/bootstrap-notify/bootstrap-notify.min.js"></script>


	<!-- Sweet Alert -->
	<script src="<?php echo base_url();?>assets/js/plugin/sweetalert/sweetalert.min.js"></script>

	<!-- Atlantis JS -->
	<script src="<?php echo base_url();?>assets/js/atlantis.min.js"></script>
	<!-- Jquery Validate -->
	<script src="<?php echo base_url();?>assets/js/plugin/jquery-validation/jquery.validate.js"></script>
	<script src="<?php echo base_url();?>assets/js/plugin/dropify/dist/js/dropify.min.js"></script>
	<script src="<?php echo base_url();?>assets/js/plugin/datepicker/moment.min.js"></script>
	<script src="<?php echo base_url();?>assets/js/plugin/datepicker/datetimepicker.min.js"></script>
	<script src="<?php echo base_url();?>assets/js/plugin/trumbowyg/dist/trumbowyg.min.js"></script>
	<script src="<?php echo base_url();?>assets/js/plugin/trumbowyg/dist/plugins/upload/trumbowyg.upload.min.js"></script>
	<script src="<?php echo base_url();?>assets/js/plugin/trumbowyg/dist/plugins/resizimg/resizable-resolveconflict.min.js"></script>
	<script src="<?php echo base_url();?>assets/js/plugin/trumbowyg/dist/plugins/resizimg/jquery-resizable.min.js"></script>
	<script src="<?php echo base_url();?>assets/js/plugin/trumbowyg/dist/plugins/resizimg/trumbowyg.resizimg.min.js"></script>
	<link rel="stylesheet" type="text/css" href="<?php echo base_url();?>assets/js/plugin/trumbowyg/dist/ui/trumbowyg.min.css">
</head>