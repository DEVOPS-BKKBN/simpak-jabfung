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
	
	$sql="SELECT a.*,b.butir_kegiatan,d.createdby,d.periode_hid FROM dokumen a JOIN kamus_kegiatan  b ON a.dokumen_hid=b.hid JOIN pemohon d ON d.hid=a.pemohon_hid WHERE a.dokumen_hid='$hid' AND pemohon_hid='$phid' AND a.jenis='pak'";
	
	
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
		<div class="col-md-12"><h4><?php echo $rw->butir_kegiatan; ?></h4></div>
		<div class="col-md-12">
			<div class="form-group">
				<iframe src="<?php if ($rw->dokumen_name=='File') echo base_url().'assets/uploads/dokumen/'.$rw->createdby.'/'.$rw->periode_hid.'/'.$rw->file_name; else echo $rw->file_name; ?>" style="width:100%;border:0px;min-height: 450px"></iframe>
				
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
	$sql="SELECT a.output,b.butir_kegiatan,a.hid FROM kamus_dupak a JOIN kamus_kegiatan b ON a.kegiatan_hid=b.hid WHERE a.hid=".$this->db->escape($this->input->get('dokid'));
	//echo $sql;
	$cn=$this->db->query($sql);
	$rw=$cn->row();
	
?>
<form method="post" class="form-material" name="formmodal" id="formmodal" enctype="multipart/form-data" action="<?php echo base_url(); ?>user/add_dokumen">
<input type="hidden" name="hid" value="<?php echo $this->input->get('hid'); ?>"/>
<input type="hidden" name="dokid" value="<?php echo $rw->hid; ?>"/>
<input type="hidden" name="phid" value="<?php echo $this->input->get('phid'); ?>"/>
<div class="modal-header">
	<h4 class="modal-title" id="myLargeModalLabel">Tambah Dokumen</h4>
	<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
</div>
<div class="modal-body">
	<div class="row">
		<div class="col-md-8">
			<div class="form-group form-group-default">
				<label>Butir Kegiatan</label>
				<b><?php echo $rw->butir_kegiatan; ?></b>
			</div>
		</div>
		<div class="col-md-4">
			<div class="form-group form-group-default">
				<label>Nama Dokumen</label>
				<b><?php echo $rw->output; ?></b>
			</div>
		</div>
		<div class="col-md-4">
			<div class="form-group group">
				<label>Jenis Template</label>
				<?php
                        
                        $list=array('File','Link');
                        $list2=array('1','2');
                        echo $this->ReferensiModel->LoadList($list,$list,'dokname','','class="form-control" required','');
                ?>
			</div>
		</div>
		<div class="col-md-8" id="divlink">
			<div class="form-group group">
				<label>Link Dokumen</label>
				<input type="text" name="linkdok" id="linkdok" class="form-control" value=""> 
			</div>
		</div>
		<div class="col-md-12" id="divfile">
			<div class="form-group group">
				<label>Dokumen (PDF/Image)</label>
				<input type="file" name="inputFile" id="inputFile" class="dropify" data-max-file-size="10M" data-allowed-file-extensions="pdf png jpg" required/>
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
	$("#dokname").change(function(){
		if ($(this).val()=='Link'){
			$('#divlink').show();
			$('#divfile').hide();
			$("#linkdok").prop('required',true);
			$("#inputFile").prop('required',false);
		} else {
			$('#divfile').show();
			$('#divlink').hide();
			$("#inputFile").prop('required',true);
			$("#linkdok").prop('required',false);
		}
	});
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
<?php if ($action=='butirkegiatan'){

$query=$this->db->query("SELECT a.jml,a.kegiatan_id,b.* FROM dupak a JOIN kamus_kegiatan b ON a.kegiatan_id=b.hid WHERE a.hid=".$this->db->escape($this->input->get('hid')));
$rw=$query->row();
	
?>
<form method="post" class="form-material" name="formmodal" id="formmodal" enctype="multipart/form-data" action="<?php echo base_url(); ?>user/add_butir">
<input type="hidden" name="hid" value="<?php echo $this->input->get('hid'); ?>"/>
<input type="hidden" name="phid" value="<?php echo $this->input->get('phid'); ?>"/>
<div class="modal-header">
	<h4 class="modal-title" id="myLargeModalLabel">Butir Kegiatan</h4>
	<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
</div>
<div class="modal-body">
	<div class="row">
		<div class="col-md-4 group">
                <div class="form-group">
                    <label for="kategori">Kategori</label>
                    <?php
                        if (!empty($rw)) $status=$rw->kategori; else $status="";
                        $list=array('Utama','Penunjang');
                        $list2=array('1','2');
                        echo $this->ReferensiModel->LoadList($list,$list,'kategori',$status,'class="form-control" required','');
                    ?>
                </div>
        </div>
		<div class="col-md-8">
			<div class="form-group">
				<label>Butir Kegiatan</label>
				<?php
					if (!empty($rw)) $item=$rw->kegiatan_id; else $item="";								
					$sql="SELECT hid kode,butir_kegiatan nilai FROM kamus_kegiatan WHERE hid='$item'";
					echo $this->ReferensiModel->LoadListMaster($sql,'butir',$item,'class="form-control" required','');
				?>
			</div>
		</div>
	</div>
	<div class="row" id="dtlopt" style="<?php if (empty($rw)) echo 'display:none'; ?>">
		<div class="col-md-8">
			<div class="form-group form-group-default">
			<label>Butir Kegiatan</label>
				<b id="lblbutir"><?php if(!empty($rw)) echo $rw->butir_kegiatan; ?></b>
			</div>
		</div>
		<div class="col-md-4">
			<div class="form-group form-group-default">
			<label>Angka Kredit</label>
				<b id="lblak"><?php if(!empty($rw)) echo $rw->jumlah_ak.' '.$rw->jenis; ?></b>
			</div>
		</div>
		<div class="col-md-4">
			<div class="form-group form-group-default">
				<label>Unsur Kegiatan</label>
				<b id="lblunsur"><?php if(!empty($rw)) echo $rw->unsur_kegiatan; ?></b>
			</div>
		</div>
		<div class="col-md-4">
			<div class="form-group form-group-default">
				<label>Sub Unsur Kegiatan</label>
				<b id="lblsubunsur"><?php if(!empty($rw)) echo $rw->subunsur_kegiatan; ?></b>
			</div>
		</div>
		<div class="col-md-4">
			<div class="form-group form-group-default">
				<label>Output</label>
				<b id="lbloutput"><?php if(!empty($rw)) echo $rw->output; ?></b>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-3">
			<div class="form-group">
				<label>Jumlah Kegiatan</label>
				<input type="number" name="jml" id="jml" class="form-control" required value="<?php if (!empty($rw)) echo $rw->jml; ?>"/>
			</div>
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
	$('#kategori').select2({width:'100%'});
	$("#butir").change(function(){
		var prop = $("#prop").val();
		$.ajax({
			url: "<?php echo base_url(); ?>user/detilbutir",
			data: "hid="+$(this).val(),
			cache: false,
			success: function(data){
				// show dtlopt
				$('#dtlopt').show();
				$('#lblbutir').html(data.butir_kegiatan);
				$('#lblunsur').html(data.unsur_kegiatan);
				$('#lblsubunsur').html(data.subunsur_kegiatan);
				$('#lbloutput').html(data.output);
				$('#lblak').html(data.jumlah_ak+' '+data.jenis);
				
			}
		});
	});
	$( "#butir").select2({        
						ajax: {
							url: "<?php echo base_url(); ?>user/carikamus",
							dataType: 'json',
							delay: 250,
							data: function (params) {
								return {
									sub:"search",
									kategori:$('#kategori').val(),
									phid:'<?php echo $this->input->get('phid'); ?>',
									q: params.term // search term
								};
							},
							processResults: function (data) {
								return {
									results: data
								};
							},
							cache: true
						},
						//minimumInputLength: 2,
						width:"100%",
						allowClear: true,
						placeholder: ""
	});
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
<?php if ($action == 'harian') {

$query = $this->db->get_where('harian', array('hid' => $hid));
$rw = $query->row();

?>
<form action="<?php echo base_url(); ?>user/updateHarian" method="post" name="formmodal" id="formmodal" enctype="multipart/form-data">
    <input type="hidden" name="hid" value="<?php echo $hid; ?>" />
    <input type="hidden" name="action" value="<?php echo $action; ?>" />
    <div class="modal-header">
        <h4 class="modal-title">Kegiatan Harian</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
    </div>

    <div class="modal-body" style="max-height:500px;overflow-y:auto">
        <div class="row">
			<div class="col-md-12 group">
                <div class="form-group">
                    <label for="kategori">Butir Kegiatan</label>
                    <?php
                        if (!empty($rw)) $status=$rw->kegiatan_id; else $status="";
                        $sql="SELECT DISTINCT  hid kode,CONCAT(butir_kegiatan,', AK: ',jumlah_ak) nilai FROM kamus_kegiatan WHERE deleted_at IS NULL ORDER BY butir_kegiatan";
                        echo $this->ReferensiModel->LoadListMaster($sql,'butir',$status,'class="form-control" required','');
                    ?>
                </div>
            </div>
			
            <div class="col-md-12 group">
                <div class="form-group">
                    <label for="nama">Nama Kegiatan</label>
                    <textarea class="form-control" id="nama" name="nama" required><?php if (!empty($rw)) echo $rw->nama_kegiatan; ?></textarea>
                    
                </div>
            </div>
			 <div class="col-md-4 group">
                <div class="form-group">
                    <label>Tanggl Kegiatan</label>
                    <input type="text" name="tgl" class="form-control datepicker" value="<?php if (!empty($rw)) echo $this->ReferensiModel->YMDtoDMY($rw->tgl_kegiatan); ?>" required> 
                </div>
            </div>	

        </div>
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Tutup</button>
        <button type="submit" class="btn btn-primary" id="btnsimpan">Simpan</button>
    </div>
</form>
<script>
    $('#butir').select2({
        'width': '100%',
		'dropdownParent': $("#largeModal")
    });
	 $('.datepicker').datetimepicker({
            format: 'DD-MM-YYYY',
        });
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