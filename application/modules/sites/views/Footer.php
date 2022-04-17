<footer class="footer">
	<div class="container-fluid">
		<div class="copyright ml-auto">
			<?php echo PAGE_FOOTER; ?>
		</div>
	</div>
</footer>
<!-- Modal -->
<div id="largeModal" class="modal fade" role="dialog">
	<div class="modal-dialog  modal-lg">
		<!-- Modal content-->
		<div class="modal-content">
		</div>
	</div>
</div>
<script>
	$(window).on('load',function(){$('#preloader-active').delay(450).fadeOut('slow');});
	$('.ls-modal').on('click', function(e) {
		e.preventDefault();
		$('#largeModal').modal('show').find('.modal-content').html('<div class="spinner-grow text-primary mt-2 mb-2 ml-2" role="status"><span class="sr-only">Loading...</span></div>').load($(this).attr('href'));
	});
</script>