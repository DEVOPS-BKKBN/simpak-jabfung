<?php if ($action == 'users') {

$query = $this->db->get_where('users', array('id' => $hid));
$rw = $query->row();

?>
<form action="<?php echo base_url(); ?>master/updateUser" method="post" name="formmodal" id="formmodal" enctype="multipart/form-data">
    <input type="hidden" name="hid" value="<?php echo $hid; ?>" />
    <input type="hidden" name="action" value="<?php echo $action; ?>" />
    <div class="modal-header">
        <h4 class="modal-title">User</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
    </div>

    <div class="modal-body">
        <div class="row">
            <div class="col-md-6 group">
                <div class="form-group">
                    <label for="isian">Nama</label>
                    <input type="text" class="form-control" id="nama" name="nama" value="<?php if (!empty($rw)) echo $rw->DisplayName; ?>" required>
                </div>
            </div>
            <div class="col-md-6 group">
                <div class="form-group">
                    <label for="isian">Username</label>
                    <input type="text" class="form-control" id="uname" name="uname" <?php if ($hid != '') echo 'readonly'; ?> value="<?php if (!empty($rw)) echo $rw->Username; ?>" required>
                </div>
            </div>
            
            <div class="col-md-6 group">
                <div class="form-group">
                    <label for="isian">Password</label>
                    <input type="password" class="form-control" id="pwd" name="pwd" value="" <?php if ($hid == '') echo 'required'; ?>>
                </div>
            </div>
            <div class="col-md-6 group">
                <div class="form-group">
                    <label for="isian">Konfirmasi Password</label>
                    <input type="password" class="form-control" id="cpwd" name="cpwd" value="" <?php if ($hid == '') echo 'required'; ?>>
                </div>
            </div>
            
            <div class="col-md-12 group">
                <div class="form-group">
                    <label for="isian">Role</label>
                    <?php
                        if (!empty($rw)) $status=$rw->RolesId; else $status="";
                        $list=array('Administrator','Admin Sekretariat');
                        $list2=array('1','2');
                        echo $this->ReferensiModel->LoadList($list,$list2,'roles',$status,'class="form-control custom-select" required','');
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
    $('#kecamatan').select2({
        'width': '100%'
    });
    $('#formmodal').validate({
        rules: {
            pwd: {
                minlength: 8
            },
            cpwd: {
                minlength: 8,
                equalTo: "#pwd"
            },
            <?php if ($hid=='') {?>            
            uname: {
                required: true,
                remote: {
                    url: "<?php echo base_url(); ?>master/checkUsername",
                    type: "post",
                    data: {
                      email: function() {
                        return $( "#uname" ).val();
                      }
                    }
                  }     
            }
            <?php } ?>
        },
        messages: {
            uname: {
                remote: "Username sudah ada."
            },
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
<?php if ($action=='dokumen'){?>
<form method="post" class="form-material" name="formmst" id="formmst" action="<?php echo base_url(); ?>master/add_dokumen">
<input type="hidden" name="hid" value="<?php echo $hid; ?>"/>
<input type="hidden" name="jabatan" value="<?php echo $this->input->get('jabatan'); ?>"/>
<input type="hidden" name="jenisjab" value="<?php echo $this->input->get('jenisjab'); ?>"/>
<div class="modal-header">
	<h4 class="modal-title" id="myLargeModalLabel">Master Dokumen Fisik</h4>
	<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
</div>
<div class="modal-body">
	<div class="row">
		<div class="col-md-12">
			<div class="form-group">
				<label>Nama Dokumen</label>
				<input type="text" name="nama" class="form-control" value="<?php if (!empty($rw)) echo $rw['Judul']; ?>" required> 
			</div>
		</div>
	</div>
</div>
<div class="modal-footer">
	<button type="button" class="btn btn-danger waves-effect text-left" data-dismiss="modal">Tutup</button>
	<button type="submit" class="btn btn-primary waves-effect text-left">Simpan</button>
</div>
</form>
<?php } ?>
<?php if ($action == 'kamus') {

$query = $this->db->get_where('kamus_kegiatan', array('hid' => $hid));
$rw = $query->row();

?>
<form action="<?php echo base_url(); ?>master/updateKamus" method="post" name="formmodal" id="formmodal" enctype="multipart/form-data">
    <input type="hidden" name="hid" value="<?php echo $hid; ?>" />
    <input type="hidden" name="action" value="<?php echo $action; ?>" />
    <div class="modal-header">
        <h4 class="modal-title">User</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
    </div>

    <div class="modal-body" style="max-height:500px;overflow-y:auto">
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
			<div class="col-md-8 group">
                <div class="form-group">
                    <label for="kategori">Unsur Kegiatan</label>
                    <?php
                        if (!empty($rw)) $status=$rw->unsur_kegiatan; else $status="";
                        $sql="SELECT DISTINCT  unsur_kegiatan kode,unsur_kegiatan nilai FROM kamus_kegiatan WHERE deleted_at IS NULL ORDER BY unsur_kegiatan";
                        echo $this->ReferensiModel->LoadListMaster($sql,'unsur',$status,'class="form-control" required','');
                    ?>
                </div>
            </div>
			<div class="col-md-12 group">
                <div class="form-group">
                    <label for="kategori">Sub Unsur Kegiatan</label>
                    <?php
                        if (!empty($rw)) $status=$rw->subunsur_kegiatan; else $status="";
                        $sql="SELECT DISTINCT  subunsur_kegiatan kode,subunsur_kegiatan nilai FROM kamus_kegiatan WHERE deleted_at IS NULL ORDER BY subunsur_kegiatan";
                        echo $this->ReferensiModel->LoadListMaster($sql,'subunsur',$status,'class="form-control" required','');
                    ?>
                </div>
            </div>
			
            <div class="col-md-12 group">
                <div class="form-group">
                    <label for="nama">Kegiatan</label>
                    <textarea class="form-control" id="nama" name="nama" required><?php if (!empty($rw)) echo $rw->butir_kegiatan; ?></textarea>
                    
                </div>
            </div>      
			<div class="col-md-6 group">
                <div class="form-group">
                    <label for="nama">Output</label>
                    <input type="text" class="form-control" id="output" name="output" value="<?php if (!empty($rw)) echo $rw->output; ?>" required>
                    
                </div>
            </div>
			<div class="col-md-3 group">
                <div class="form-group">
                    <label for="kategori">Jenis</label>
                    <?php
                        if (!empty($rw)) $status=$rw->jenis; else $status="";
                        $list=array('Nilai','Prosen');
                        echo $this->ReferensiModel->LoadList($list,$list,'jenisak',$status,'class="form-control" required','');
                    ?>
                </div>
            </div>
			<div class="col-md-3 group">
                <div class="form-group">
                    <label for="nama">Angka Kredit</label>
                    <input type="text" class="form-control" id="ak" name="ak" value="<?php if (!empty($rw)) echo $rw->jumlah_ak; ?>" required>
                    
                </div>
            </div>
			<div class="col-md-4 group">
                <div class="form-group">
                    <label for="kategori">Jenis Jabatan</label>
                    <?php
                        if (!empty($rw)) $status=$rw->jenisjabatan_id; else $status="";
                        $sql="SELECT hid kode, jenis_jabatan nilai FROM jenis_jabatan ORDER BY jenis_jabatan";
                        echo $this->ReferensiModel->LoadListMaster($sql,'jjab',$status,'class="form-control custom-select" required','');
                    ?>
                </div>
            </div>
			<div class="col-md-8">
				<div class="form-group">
				<label for="defaultSelect">Kelompok Jabatan <small>(* kosongkan jika untuk semua kelompok jabatan)</small></label>
				<?php
												
					$list=array('Ahli','Terampil');
					echo $this->ReferensiModel->LoadList($list,$list,'kelompok',$this->input->get('kelompok'),'class="form-control"','');
				?>
				</div>
			</div>
			<div class="col-md-12 group">
                <div class="form-group">
                    <label for="kategori">Jabatan Fungsional <small>(* kosongkan jika untuk semua jenjang)</small></label>
                    <?php
                        if (!empty($rw)) $status=$rw->jabatan_id; else $status="";
                        $sql="SELECT hid kode, CONCAT(kode_jab,'-',jabatan) nilai FROM jabatan ORDER BY jabatan";
                        echo $this->ReferensiModel->LoadListMaster($sql,'mjabatan',$status,'class="form-control custom-select"','');
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
    $('#mjabatan').select2({
        'width': '100%',
		'dropdownParent': $("#largeModal")
    });
	$('#unsur,#subunsur').select2({
        'width': '100%',
		tags:true,
		'dropdownParent': $("#largeModal")
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
<?php if ($action == 'jenjang') {

$query = $this->db->get_where('jenjang', array('hid' => $hid));
$rw = $query->row();

?>
<form action="<?php echo base_url(); ?>master/updateJenjang" method="post" name="formmodal" id="formmodal" enctype="multipart/form-data">
    <input type="hidden" name="hid" value="<?php echo $hid; ?>" />
    <input type="hidden" name="action" value="<?php echo $action; ?>" />
    <div class="modal-header">
        <h4 class="modal-title">Jenis Jabatan</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
    </div>

    <div class="modal-body">
        <div class="row">
            <div class="col-md-12 group">
                <div class="form-group">
                    <label for="nama">Jenis Jabatan</label>
                    <input type="text" class="form-control" id="nama" name="nama" required value="<?php if (!empty($rw)) echo $rw->jenjang; ?>"/>
                    
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
    $('#kecamatan').select2({
        'width': '100%'
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
<?php if ($action == 'jabatan') {

$query = $this->db->get_where('jenjang_jabatan', array('hid' => $hid));
$rw = $query->row();

?>
<form action="<?php echo base_url(); ?>master/updateJabatan" method="post" name="formmodal" id="formmodal" enctype="multipart/form-data">
    <input type="hidden" name="hid" value="<?php echo $hid; ?>" />
    <input type="hidden" name="action" value="<?php echo $action; ?>" />
    <div class="modal-header">
        <h4 class="modal-title">Jabatan</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
    </div>

    <div class="modal-body">
        <div class="row">
			<div class="col-md-4 group">
                <div class="form-group">
                    <label for="nama">Kode Jabatan</label>
                    <input type="text" class="form-control" id="kdjab" name="kdjab" required value="<?php if (!empty($rw)) echo $rw->kode_jab; ?>"/>
                    
                </div>
            </div>
            <div class="col-md-8 group">
                <div class="form-group">
                    <label for="nama">Jabatan</label>
                    <input type="text" class="form-control" id="nama" name="nama" required value="<?php if (!empty($rw)) echo $rw->jabatan; ?>"/>
                    
                </div>
            </div>
			<div class="col-md-8 group">
                <div class="form-group">
                    <label for="kategori">Jenis Jabatan</label>
                    <?php
                        if (!empty($rw)) $status=$rw->jenisjabatan_id; else $status="";
                        $sql="SELECT hid kode, jenis_jabatan nilai FROM jenis_jabatan ORDER BY jenis_jabatan";
                        echo $this->ReferensiModel->LoadListMaster($sql,'jjabatan',$status,'class="form-control" required','');
                    ?>
                </div>
            </div>
			<div class="col-md-4 group">
                <div class="form-group">
                    <label for="kategori">Kelompok Jabatan</label>
                    <?php
                        if (!empty($rw)) $status=$rw->kelompok_jabatan; else $status="";
                        $list=array('Ahli','Terampil');
                        echo $this->ReferensiModel->LoadList($list,$list,'kelompok',$status,'class="form-control" required','');
                    ?>
                </div>
            </div>
			<div class="col-md-4 group">
                <div class="form-group">
                    <label for="nama">AK Kenaikan</label>
                    <input type="number" class="form-control" id="ak" name="ak" required value="<?php if (!empty($rw)) echo $rw->ak_kenaikan; ?>"/>
                    
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
<?php if ($action == 'listkelompok') {



?>
<form action="<?php echo base_url(); ?>master/updateListKelompok" method="post" name="formmodal" id="formmodal" enctype="multipart/form-data">
    <input type="hidden" name="hid" value="<?php echo $hid; ?>" />
    <input type="hidden" name="action" value="<?php echo $action; ?>" />
    <div class="modal-header">
        <h4 class="modal-title">Tambah Detil Kelompok Jabatan</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
    </div>

    <div class="modal-body" style="max-height:500px;overflow-y:auto">
        <div class="row">
			
            <table id="tablelist" class="display table table-striped table-hover dataTable">
                                            <thead>
                                                <tr>
                                                    <th>
														<div class="form-check">
															<label class="form-check-label">
																<input class="form-check-input" type="checkbox" value="1" id="ckall">
																<span class="form-check-sign"></span>
															</label>
														</div>
													</th>
                                                    <th scope="col">Kode Jab</th>
                                                    <th scope="col">Jabatan</th>
													<th scope="col">Jenis Jabatan</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                             <?php
                                                $n = 0;
                                                $sql="SELECT * FROM jabatan";
							                    $cn = $this->db->query($sql);
                                                foreach ($cn->result() as $rw) {
                                                    $n++;
                                                    echo '<tr>';
                                                    echo '<td>';
													echo '<div class="form-check"><label class="form-check-label"><input class="form-check-input" name="ckjabatan[]" type="checkbox" value="'.$rw->hid.'"><span class="form-check-sign"></span></label></div>';
													echo '</td>';
                                                    echo '<td>'.$rw->kode_jab.'</td>';
                                                    echo '<td>'.$rw->jabatan.'</td>';
													echo '<td>'.$rw->jenis_jab.'</td>';
                                                    echo '</tr>';
                                                }
                                                ?>   
                                            </tbody>
            </table>

        </div>
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Tutup</button>
        <button type="submit" class="btn btn-primary" id="btnsimpan">Simpan</button>
    </div>
</form>
<script>
	var table = $('#tablelist').DataTable({
        "order": [], //Initial no order.
        //Set column definition initialisation properties.
        'columnDefs': [{
            'targets': 0,
            'searchable': false,
            'orderable': false
        }],
        "pageLength": 50

    });
	$('#ckall').on('click', function() {
        // Get all rows with search applied
        var rows = table.rows({
            'search': 'applied'
        }).nodes();
        // Check/uncheck checkboxes for all rows in the table
        $('input[type="checkbox"]', rows).prop('checked', this.checked);
    });
    //$('#datatable2').DataTable({});
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
<?php if ($action == 'kelompok') {

$query = $this->db->get_where('kelompok', array('hid' => $hid));
$rw = $query->row();

?>
<form action="<?php echo base_url(); ?>master/updateKelompok" method="post" name="formmodal" id="formmodal" enctype="multipart/form-data">
    <input type="hidden" name="hid" value="<?php echo $hid; ?>" />
    <input type="hidden" name="action" value="<?php echo $action; ?>" />
    <div class="modal-header">
        <h4 class="modal-title">Kelompok Jabatan</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
    </div>

    <div class="modal-body">
        <div class="row">
			
            <div class="col-md-12 group">
                <div class="form-group">
                    <label for="nama">Kelompok</label>
                    <input type="text" class="form-control" id="nama" name="nama" required value="<?php if (!empty($rw)) echo $rw->kelompok; ?>"/>
                    
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
