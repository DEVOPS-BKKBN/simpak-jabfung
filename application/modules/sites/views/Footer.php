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
		$('#largeModal').modal('show').find('.modal-content').load($(this).attr('href'));
	});
</script>