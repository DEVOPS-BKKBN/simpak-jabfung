
<?php if ($action == 'periode') {

$query = $this->db->get_where('periode', array('hid' => $hid));
$rw = $query->row_array();

?>
<form action="<?php echo base_url(); ?>penilaian/updatePeriode" method="post" name="formmodal" id="formmodal" enctype="multipart/form-data">
    <input type="hidden" name="hid" value="<?php echo $hid; ?>" />
    <input type="hidden" name="action" value="<?php echo $action; ?>" />
    <div class="modal-header">
        <h4 class="modal-title">Periode</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
    </div>

    <div class="modal-body">
        <div class="row">
            <div class="col-md-6 group">
                <div class="form-group">
                    <label>Periode Awal</label>
                    <input type="text" name="tgl1" class="form-control datepicker" value="<?php if (!empty($rw)) echo substr($this->ReferensiModel->YMDtoDMY($rw['startdate']),3,7); ?>" required> 
                </div>
            </div>	
            <div class="col-md-6 group">
                <div class="form-group">
                    <label>Periode Akhir</label>
                    <input type="text" name="tgl2" class="form-control datepicker" value="<?php if (!empty($rw)) echo substr($this->ReferensiModel->YMDtoDMY($rw['enddate']),3,7); ?>" required> 
                </div>
            </div>
            <div class="col-md-4 group">
                <div class="form-group">
                    <label>Nama Periode</label>
                    <input type="text" name="nama" class="form-control" value="<?php if (!empty($rw)) echo $rw['namaperiode']; ?>" required> 
                </div>
            </div>
            <div class="col-md-2 group">
                <div class="form-group">
                    <label>Status</label>
                    <?php
                        if (!empty($rw)) $status=$rw['status']; else $status="";
                        $list=array('Aktif','Tidak Aktif');
                        $list2=array('1','0');
                        echo $this->ReferensiModel->LoadList($list,$list2,'status',$status,'class="form-control custom-select" required','');
                    ?>
                </div>
            </div>
            <div class="col-md-4 group">
                <div class="form-group">
                    <label>Format Penomoran</label>
                    <input type="text" name="format" class="form-control" value="<?php if (!empty($rw)) echo $rw['format_nomor']; ?>" required> 
                </div>
            </div>
            <div class="col-md-2 group">
                <div class="form-group">
                    <label>Nomor Awal</label>
                    <input type="text" name="nomor" class="form-control" value="<?php if (!empty($rw)) echo $rw['nomor_awal']; ?>" required> 
                </div>
            </div>
            <div class="col-md-4 group">
                <div class="form-group">
                    <label>Kota Ditetapkan</label>
                    <input type="text" name="kota" class="form-control" value="<?php if (!empty($rw)) echo $rw['kota_pak']; ?>" required> 
                </div>
            </div>
            <div class="col-md-8 group">
                <div class="form-group">
                    <label>Pejabat Penandatangan</label>
                    <?php
                        if (!empty($rw)) $pejabat = $rw['nippejabat_pak'].'|'.$rw['nippejabat_pak'].'|'.$rw['nippejabat_pak'].'.jpg';
                        else $pejabat = "";
                        $sql = "SELECT CONCAT(nippejabat_pak,'|',nippejabat_pak,'|',nippejabat_pak,'.jpg') kode,CONCAT(pejabat_pak,' ',nippejabat_pak) nilai FROM periode WHERE hid='$hid'";
                        echo $this->ReferensiModel->LoadListMaster($sql, 'pegawai', $pejabat, 'class="form-control" required');
                    ?>
                    
                </div>
            </div>
            <div class="col-md-12 group">	
                <div class="form-group">
                    <label>Keterangan</label>
                    <textarea name="keterangan" class="form-control" rows="2"><?php if (!empty($rw)) echo $rw['notes']; ?></textarea>
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
    $('.datepicker').datetimepicker({
            format: 'MM-YYYY',
        });
    $("#pegawai").select2({
		ajax: {
			url: "<?php echo base_url(); ?>master/caripegawai",
			dataType: 'json',
			delay: 250,
			data: function(params) {
				return {
					q: params.term // search term
				};
			},
			processResults: function(data) {
				return {
					results: data
				};
			},
			cache: true
		},
		minimumInputLength: 5,
		width: "100%",
		dropdownParent: $("#largeModal")
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
<?php if ($action == 'penilai') {

?>
<form action="<?php echo base_url(); ?>penilaian/updatePenilai" method="post" name="formmodal" id="formmodal" enctype="multipart/form-data">
    <input type="hidden" name="hid" value="<?php echo $hid; ?>" />
    <input type="hidden" name="action" value="<?php echo $action; ?>" />
    <div class="modal-header">
        <h4 class="modal-title">Penilai</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
    </div>

    <div class="modal-body">
        <div class="row">
            <div class="col-md-12 group">
                <div class="form-group">
                    <label>Pegawai</label>
                    <select name="pegawai" id="pegawai" class="form-control custom-select" required/> 
                </div>
            </div>
            <div class="col-md-6 group">
                <div class="form-group">
                    <label>Sebagai</label>
                    <?php
                        if (!empty($rw)) $status=$rw['sebagai']; else $status="";
                        $list=array('Anggota','Ketua');
                        echo $this->ReferensiModel->LoadList($list,$list,'sebagai',$status,'class="form-control custom-select" required','');
                    ?>
                </div>
            </div>
            <div class="col-md-6 group">
                <div class="form-group">
                    <label>Jenjang Jabatan</label>
                    <?php
                        if (!empty($rw)) $jenjang=$rw['jenjang']; else $jenjang="";
                        $sql = "SELECT jenjang kode, jenjang nilai FROM jenjang ";
                        echo $this->ReferensiModel->LoadListMaster($sql, 'jenjang', $jenjang, 'class="form-control" required');
                    ?>
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
    $('.datepicker').datetimepicker({
            format: 'DD-MM-YYYY',
        });
    $("#pegawai").select2({
		ajax: {
			url: "<?php echo base_url(); ?>master/caripegawai",
			dataType: 'json',
			delay: 250,
			data: function(params) {
				return {
					q: params.term // search term
				};
			},
			processResults: function(data) {
				return {
					results: data
				};
			},
			cache: true
		},
		minimumInputLength: 5,
		width: "100%",
		dropdownParent: $("#largeModal")
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
<?php if ($action == 'updatepenilai') {
    $query = $this->db->get_where('penilai',array('hid' => $hid));
	$rw=$query->row_array();
?>
<form action="<?php echo base_url(); ?>penilaian/updateEditPenilai" method="post" name="formmodal" id="formmodal" enctype="multipart/form-data">
    <input type="hidden" name="hid" value="<?php echo $hid; ?>" />
    <input type="hidden" name="action" value="<?php echo $action; ?>" />
    <div class="modal-header">
        <h4 class="modal-title">Penilai</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
    </div>

    <div class="modal-body">
        <div class="row">
            <div class="col-md-6 group">
                <div class="form-group">
                    <label>Nama Lengkap</label>
                    <input type="text" name="nama" class="form-control" value="<?php if (!empty($rw)) echo $rw['namalengkap']; ?>" required> 
                </div>
            </div>	
            <div class="col-md-6 group">
                <div class="form-group">
                    <label>Jabatan</label>
                    <input type="text" name="jbt" class="form-control" value="<?php if (!empty($rw)) echo $rw['jabatan']; ?>" required> 
                </div>
            </div>
            <div class="col-md-6 group">
                <div class="form-group">
                    <label>Golongan Pangkat</label>
                    <input type="text" name="golongan" class="form-control" value="<?php if (!empty($rw)) echo $rw['golonganpangkat']; ?>" required> 
                </div>
            </div>
            <div class="col-md-6 group">
                <div class="form-group">
                    <label>Sebagai</label>
                    <?php
                        if (!empty($rw)) $status=$rw['sebagai']; else $status="";
                        $list=array('Anggota','Ketua');
                        echo $this->ReferensiModel->LoadList($list,$list,'sebagai',$status,'class="form-control custom-select" required','');
                    ?>
                </div>
            </div>
            <div class="col-md-6 group">
                <div class="form-group">
                    <label>Unit Kerja</label>
                    <input type="text" name="unitkerja" class="form-control" value="<?php if (!empty($rw)) echo $rw['unitkerja']; ?>" required> 
                </div>
            </div>
            <div class="col-md-6 group">
                <div class="form-group">
                    <label>Jenjang Jabatan</label>
                    <?php
                        if (!empty($rw)) $jenjang=$rw['jenjang']; else $jenjang="";
                        $sql = "SELECT jenjang kode, jenjang nilai FROM jenjang ";
                        echo $this->ReferensiModel->LoadListMaster($sql, 'jenjang', $jenjang, 'class="form-control" required');
                    ?>
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
    $('.datepicker').datetimepicker({
            format: 'DD-MM-YYYY',
        });
    $("#pegawai").select2({
		ajax: {
			url: "<?php echo base_url(); ?>master/caripegawai",
			dataType: 'json',
			delay: 250,
			data: function(params) {
				return {
					q: params.term // search term
				};
			},
			processResults: function(data) {
				return {
					results: data
				};
			},
			cache: true
		},
		minimumInputLength: 5,
		width: "100%",
		dropdownParent: $("#largeModal")
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