<?php if ($action=='viewdokumenpribadi'){
	$hid=$this->input->get('hid');
	$phid=$this->input->get('phid');
	
	$sql="SELECT a.*,b.dokumen,d.createdby,d.periode_hid FROM dokumen a JOIN mdok  b ON a.dokumen_hid=b.hid JOIN pemohon d ON d.hid=a.pemohon_hid WHERE dokumen_hid='$hid' AND pemohon_hid='$phid' AND jenis='administrasi'";
	//echo $sql;
	$cn=$this->db->query($sql);
	$rw=$cn->row();
	//var_dump($rw);
?>
<form method="post" class="form-material" name="formmst" id="formmst" enctype="multipart/form-data" action="<?php echo base_url(); ?>proses/add_dokumen">
<input type="hidden" name="hid" value="<?php echo $hid; ?>"/>
<input type="hidden" name="phid" value="<?php echo $phid; ?>"/>
<div class="modal-header">
	<h4 class="modal-title" id="myLargeModalLabel">View Dokumen</h4>
	<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
</div>
<div class="modal-body">
	<div class="row">
		<div class="col-md-12"><h4><?php echo $rw->dokumen; ?></h4></div>
		<div class="col-md-12">
			<div class="form-group">
				<iframe src="<?php echo base_url().'assets/uploads/dokumen/'.$rw->createdby.'/'.$rw->periode_hid.'/'.$rw->file_name; ?>" style="width:100%;border:0px;min-height: 450px"></iframe>
				
			</div>
		</div>
</div>
<div class="modal-footer">
	<button type="button" class="btn btn-sm btn-danger waves-effect text-left" data-dismiss="modal">Tutup</button>
</div>
</form>
<?php } ?>
<?php if ($action=='viewdokumen'){
	$hid=$this->input->get('hid');
	$phid=$this->input->get('phid');
	
	$sql="SELECT a.*,b.uraian_kegiatan,d.createdby,d.periode_hid FROM dokumen a JOIN kamus_kegiatan  b ON a.dokumen_hid=b.hid JOIN pemohon d ON d.hid=a.pemohon_hid WHERE a.hid='$hid' AND pemohon_hid='$phid' AND a.jenis='pak'";
	
	//echo $sql;
	$cn=$this->db->query($sql);
	$rw=$cn->row();
	//var_dump($rw);
?>
<form method="post" class="form-material" name="formmst" id="formmst" enctype="multipart/form-data" action="<?php echo base_url(); ?>proses/add_dokumen">
<input type="hidden" name="hid" value="<?php echo $hid; ?>"/>
<input type="hidden" name="phid" value="<?php echo $phid; ?>"/>
<div class="modal-header">
	<h4 class="modal-title" id="myLargeModalLabel">View Dokumen</h4>
	<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
</div>
<div class="modal-body">
	<div class="row">
		<div class="col-md-12"><h4><?php echo $rw->uraian_kegiatan; ?></h4></div>
		<div class="col-md-12">
			<div class="form-group">
				<iframe src="<?php echo base_url().'assets/uploads/dokumen/'.$rw->createdby.'/'.$rw->periode_hid.'/'.$rw->file_name; ?>" style="width:100%;border:0px;min-height: 450px"></iframe>
				
			</div>
		</div>
</div>
<div class="modal-footer">
	<button type="button" class="btn btn-sm btn-danger waves-effect text-left" data-dismiss="modal">Tutup</button>
</div>
</form>
<?php } ?>
<?php if ($action=='dokumenpribadi'){
$query=$this->db->get_where('mdok',array('hid'=>$this->input->get('dokumen')));
$rw=$query->row();
	
?>
<form method="post" class="form-material" name="formmodal" id="formmodal" enctype="multipart/form-data" action="<?php echo base_url(); ?>user/add_dokumenpribadi">
<input type="hidden" name="hid" value="<?php echo $this->input->get('dokumen'); ?>"/>
<input type="hidden" name="dokid" value="<?php echo $this->input->get('dokumen'); ?>"/>
<input type="hidden" name="phid" value="<?php echo $this->input->get('phid'); ?>"/>
<div class="modal-header">
	<h4 class="modal-title" id="myLargeModalLabel">Tambah Dokumen Administrasi</h4>
	<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
</div>
<div class="modal-body">
	<div class="row">
		<div class="col-md-12">
			<div class="form-group">
				<label>Nama Dokumen</label>
				<input type="text" readonly class="form-control" value="<?php echo $rw->dokumen; ?>"/>
			</div>
		</div>
		<div class="col-md-12">
			<div class="form-group group">
				<label>Dokumen (PDF/Image)</label>
				<input type="file" name="inputFile" class="dropify" ata-max-file-size="10M" data-allowed-file-extensions="pdf png jpg" required/>
			</div>
		</div>
	</div>
</div>
<div class="modal-footer">
	<button type="button" class="btn btn-sm btn-danger waves-effect text-left" data-dismiss="modal">Tutup</button>
	<button type="submit" class="btn btn-sm btn-primary waves-effect text-left">Simpan</button>
</div>
</form>
<script>
	$('.dropify').dropify();
	$('#formmodal').validate({
        rules: {
        },
        messages: {
        },
        highlight: function(input) {
            $(input).parents('.form-line').addClass('alert-danger');
        },
        unhighlight: function(input) {
            $(input).parents('.form-line').removeClass('alert-danger');
        },
        errorPlacement: function(error, element) {
            $(element).parents('.group').append(error);
        }
    });
</script>
<?php } ?>
<?php if ($action=='dokumen'){
$query=$this->db->get_where('kamus_kegiatan',array('hid'=>$this->input->get('hid')));
$rw=$query->row();
	
?>
<form method="post" class="form-material" name="formmodal" id="formmodal" enctype="multipart/form-data" action="<?php echo base_url(); ?>user/add_dokumen">
<input type="hidden" name="hid" value="<?php echo $this->input->get('hid'); ?>"/>
<input type="hidden" name="dokid" value="<?php echo $this->input->get('hid'); ?>"/>
<input type="hidden" name="phid" value="<?php echo $this->input->get('phid'); ?>"/>
<div class="modal-header">
	<h4 class="modal-title" id="myLargeModalLabel">Tambah Dokumen</h4>
	<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
</div>
<div class="modal-body">
	<div class="row">
		<div class="col-md-12">
			<div class="form-group">
				<label>Nama Dokumen</label>
				<input type="text" readonly class="form-control" value="<?php echo $rw->uraian_kegiatan; ?>"/>
			</div>
		</div>
		<div class="col-md-12">
			<div class="form-group group">
				<label>Dokumen (PDF/Image)</label>
				<input type="file" name="inputFile" class="dropify" ata-max-file-size="10M" data-allowed-file-extensions="pdf png jpg" required/>
			</div>
		</div>
	</div>
</div>
<div class="modal-footer">
	<button type="button" class="btn btn-sm btn-danger waves-effect text-left" data-dismiss="modal">Tutup</button>
	<button type="submit" class="btn btn-sm btn-primary waves-effect text-left">Simpan</button>
</div>
</form>
<script>
	$('.dropify').dropify();
	$('#formmodal').validate({
        rules: {
        },
        messages: {
        },
        highlight: function(input) {
            $(input).parents('.form-line').addClass('alert-danger');
        },
        unhighlight: function(input) {
            $(input).parents('.form-line').removeClass('alert-danger');
        },
        errorPlacement: function(error, element) {
            $(element).parents('.group').append(error);
        }
    });
</script>
<?php } ?>