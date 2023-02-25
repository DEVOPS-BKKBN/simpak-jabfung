<?php if ($action=='viewdokumennilai'){
	$hid=$this->input->get('hid');
	$phid=$this->input->get('phid');
	$penilaiid=$this->ReferensiModel->LoadSQL("SELECT hid judul FROM penilai WHERE nip='".$this->session->userdata('userName')."'");
	
	
	$sql="SELECT a.*,kegiatan_id,c.butir_kegiatan kegiatan,periode_hid,total_ak_penilai,total_ak,dupak_hid,butir_kegiatan,jumlah_ak,c.jenis,c.unsur_kegiatan,
	c.subunsur_kegiatan,c.output
	FROM dokumen a JOIN dupak b ON a.dupak_hid=b.hid JOIN kamus_kegiatan c ON b.kegiatan_id=c.hid JOIN pemohon d ON d.hid=a.pemohon_hid 
	WHERE dokumen_hid='$hid' AND pemohon_hid='$phid'";
	//echo $sql;
	$cn=$this->db->query($sql);
	$rw=$cn->row();
	
	
	
	$sql="SELECT * FROM dokumen_penilai WHERE dokumen_id='$hid' AND penilai_id='$penilaiid'";
	$cn=$this->db->query($sql);
	$rw2=$cn->row();
	
	$sql="SELECT * FROM dupak_penilai WHERE dupak_id='".$rw->dupak_hid."' AND penilai_id='$penilaiid'";
	$cn=$this->db->query($sql);
	$rw3=$cn->row();
	
	if (!empty($rw3->total_nilai)) $nilaiak=$rw3->total_nilai; else $nilaiak=$rw->total_ak;
	
?>
<form method="post" class="form-material" name="formmodal" id="formmodal" enctype="multipart/form-data" action="<?php echo base_url(); ?>penilai/add_dokumennilai">
<input type="hidden" name="hid" value="<?php echo $hid; ?>"/>
<input type="hidden" name="phid" value="<?php echo $phid; ?>"/>
<input type="hidden" name="dupakhid" value="<?php echo $rw->dupak_hid; ?>"/>
<input type="hidden" name="tab" value="<?php echo $this->input->get('tab'); ?>"/>
<div class="modal-header">
	<h4 class="modal-title" id="myLargeModalLabel">Nilai Dokumen</h4>
	<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
</div>
<div class="modal-body">
	<div class="row">
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
		
		<div class="col-md-6">
			<div class="form-group group">
				<label><b>Keputusan</b></label>
				<?php
					$list=array('SETUJUI','REVISI');
					$list2=array('1','3');
					
					if (!empty($rw2)) $status=$rw2->status; else $status="";
					
					echo $this->ReferensiModel->LoadList($list,$list2,'seleksi',$status,'class="form-control custom-select" required','');
				?>
			</div>
		</div>
		<div class="col-md-6"><label><b>Nilai AK Akhir</b><small> * merupakan nilai butir kegiatan</small></label><input type="text" class="form-control number" name="nilai" required value="<?php echo $nilaiak; ?>"/></div>
		<div class="col-md-6" id="divtglr">
			<div class="form-group group">
				<label><b>Maks Tgl Revisi</b></label>
				<input type="text" class="form-control datepicker" name="tglr" id="tglr" value="<?php if (!empty($rw2->maxrev_date)) echo $this->ReferensiModel->YMDtoDMY($rw2->maxrev_date); ?>" />
			</div>
		</div>
		<div class="col-md-12">
			<div class="form-group group">
				<label><b>Keterangan</b></label>
				<textarea name="ket" id="ket" class="form-control"><?php if (!empty($rw2)) echo $rw2->notes; ?></textarea>
			</div>
		</div>
		<div class="col-md-12">
			<div class="form-group group">
				<iframe src="<?php if ($rw->dokumen_name=='File') echo base_url().'assets/uploads/dokumen/'.$rw->createdby.'/'.$rw->periode_hid.'/'.$rw->file_name.'?time='.date("YmdHis"); else echo $rw->file_name; ?>" style="width:100%;border:0px;min-height: 450px"></iframe>
				
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
$('.datepicker').datetimepicker({
    format: 'DD-MM-YYYY',
});
$("#seleksi").change(function(){
	if ($(this).val()=='2' || $(this).val()=='3'){
		$('#divtglr').show();
		$("#ket").prop('required',true);
		$("#tglr").prop('required',true);
		$("#tglr").val('<?php echo date('d-m-Y', strtotime(date('Y-m-d') . ' +14 day')) ?>');
	}else{
		$("#ket").prop('required',false);
		$('#divtglr').hide();
		$("#tglr").prop('required',false);
		$("#tglr").val('');
	}
});
$(".number").keydown(function(event){
		if (event.shiftKey == true) {
            event.preventDefault();
        }

        if ((event.keyCode >= 48 && event.keyCode <= 57) || 
            (event.keyCode >= 96 && event.keyCode <= 105) || 
            event.keyCode == 8 || event.keyCode == 9 || event.keyCode == 37 ||
            event.keyCode == 39 || event.keyCode == 46 || event.keyCode == 190 || event.keyCode == 110) {

        } else {
            event.preventDefault();
        }

        if($(this).val().indexOf('.') !== -1 && event.keyCode == 190)
            event.preventDefault(); 
        //if a decimal has been added, disable the "."-button
	})
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