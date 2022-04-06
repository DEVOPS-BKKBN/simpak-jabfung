<?php if ($action == 'pengumuman') {

    $query = $this->db->get_where('pengumuman', array('id' => $hid));
    $rw = $query->row();

?>
    <form action="<?php echo base_url(); ?>content/updatePengumuman" method="post" name="formmodal" id="formmodal" enctype="multipart/form-data">
        <input type="hidden" name="hid" value="<?php echo $hid; ?>" />
        <input type="hidden" name="action" value="<?php echo $action; ?>" />
        <div class="modal-header">
            <h4 class="modal-title">Pengumuman</h4>
            <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>

        <div class="modal-body">
            <div class="row">

                <div class="col-md-12 group">
                    <div class="form-group">
                        <label for="isian">Pansel</label>
                        <?php
                        if (!empty($rw)) $pansel = $rw->id_pansel;
                        else $pansel = "";
                        $sql = "SELECT id kode,CONCAT(format_nomor_pendaftaran,' - ',nama_pansel) nilai FROM pansel";
                        echo $this->ReferensiModel->LoadListMaster($sql, 'pansel', $pansel, 'class="form-control" required');
                        ?>
                    </div>
                </div>

                <div class="col-md-4 group">
                    <div class="form-group">
                        <label>Tanggal Publish</label>
                        <div class="input-group">
                            <input type="text" class="form-control datepicker" id="tgl" name="tgl" value="<?php if (!empty($rw)) echo $this->ReferensiModel->YMDtoDMY($rw->tanggal_pengumuman); ?>" required>
                            <div class="input-group-append">
                                <span class="input-group-text">
                                    <i class="fa fa-calendar-check"></i>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-8 group">
                    <div class="form-group">
                        <label for="isian">Judul</label>
                        <input type="text" class="form-control" id="judul" name="judul" value="<?php if (!empty($rw)) echo $rw->judul; ?>" required>
                    </div>
                </div>
                <div class="col-md-6 group">
                    <div class="form-group">
                        <label for="isian">Pengumuman</label>
                        <input type="file" name="inputFile" class="dropify" ata-max-file-size="10M" data-allowed-file-extensions="pdf" <?php if ($hid=='') echo 'required'; ?>/>
                    </div>
                </div>
                <div class="col-md-6 group">
                    <div class="form-group">
                        <label for="isian">Lampiran</label>
                        <input type="file" name="inputFile2" class="dropify" ata-max-file-size="10M" data-allowed-file-extensions="pdf"/>
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
        $('.dropify').dropify();
        $('#formmodal').validate({
            rules: {},
            messages: {},
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

<?php if ($action == 'unduhan') {

$query = $this->db->get_where('download_pages', array('id' => $hid));
$rw = $query->row();

?>
<form action="<?php echo base_url(); ?>content/updateUnduhan" method="post" name="formmodal" id="formmodal" enctype="multipart/form-data">
    <input type="hidden" name="hid" value="<?php echo $hid; ?>" />
    <input type="hidden" name="action" value="<?php echo $action; ?>" />
    <div class="modal-header">
        <h4 class="modal-title">Unduhan</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
    </div>

    <div class="modal-body">
        <div class="row">

            <div class="col-md-12 group">
                <div class="form-group">
                    <label for="isian">Pansel</label>
                    <?php
                    if (!empty($rw)) $pansel = $rw->id_pansel;
                    else $pansel = "";
                    $sql = "SELECT id kode,CONCAT(format_nomor_pendaftaran,' - ',nama_pansel) nilai FROM pansel";
                    echo $this->ReferensiModel->LoadListMaster($sql, 'pansel', $pansel, 'class="form-control" required');
                    ?>
                </div>
            </div>
            

            <div class="col-md-12 group">
                <div class="form-group">
                    <label for="isian">Judul</label>
                    <input type="text" class="form-control" id="judul" name="judul" value="<?php if (!empty($rw)) echo $rw->judul; ?>" required>
                </div>
            </div>
            <div class="col-md-12 group">
                <div class="form-group">
                    <label for="isian">File</label>
                    <input type="file" name="inputFile" class="dropify" ata-max-file-size="10M" data-allowed-file-extensions="pdf doc docx ppt pptx" <?php if ($hid=='') echo 'required'; ?>/>
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
    $('.dropify').dropify();
    $('#formmodal').validate({
        rules: {},
        messages: {},
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

<?php if ($action == 'panduan') {

$query = $this->db->get_where('panduan', array('id' => $hid));
$rw = $query->row();

?>
<form action="<?php echo base_url(); ?>content/updatePanduan" method="post" name="formmodal" id="formmodal" enctype="multipart/form-data">
    <input type="hidden" name="hid" value="<?php echo $hid; ?>" />
    <input type="hidden" name="action" value="<?php echo $action; ?>" />
    <div class="modal-header">
        <h4 class="modal-title">Panduan</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
    </div>

    <div class="modal-body" style="max-height:500px;overflow-y:scroll">
        <div class="row">

            <div class="col-md-12 group">
                <div class="form-group">
                    <label for="isian">Pansel</label>
                    <?php
                    if (!empty($rw)) $pansel = $rw->id_pansel;
                    else $pansel = "";
                    $sql = "SELECT id kode,CONCAT(format_nomor_pendaftaran,' - ',nama_pansel) nilai FROM pansel";
                    echo $this->ReferensiModel->LoadListMaster($sql, 'pansel', $pansel, 'class="form-control" required');
                    ?>
                </div>
            </div>
            

            <div class="col-md-12 group">
                <div class="form-group">
                    <label for="isian">Judul</label>
                    <input type="text" class="form-control" id="judul" name="judul" value="<?php if (!empty($rw)) echo $rw->judul; ?>" required>
                </div>
            </div>
            <div class="col-md-12 group">
                <div class="form-group">
                    <label for="isian">Penjelasan</label>
                    <textarea name="penjelasan" id="penjelasan" class="form-control" required><?php if (!empty($rw)) echo $rw->penjelasan; ?></textarea>
                </div>
            </div>
            <div class="col-md-6 group">
                <div class="form-group">
                    <label for="isian">Icon</label>
                    <input type="file" name="inputFile" class="dropify" ata-max-file-size="10M" data-allowed-file-extensions="jpg png gif jpeg" <?php if ($hid=='') echo 'required'; ?>/>
                </div>
            </div>
            <div class="col-md-6 group">
                <div class="form-group">
                    <label for="isian">File</label>
                    <input type="file" name="inputFile2" class="dropify" ata-max-file-size="10M" data-allowed-file-extensions="pdf doc docx ppt pptx" <?php if ($hid=='') echo 'required'; ?>/>
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
    $('#penjelasan')
	.trumbowyg({
		btnsDef: {
			// Create a new dropdown
			image: {
				dropdown: ['insertImage', 'upload'],
				ico: 'insertImage'
			}
		},
		// Redefine the button pane
		btns: [
			['viewHTML'],
			['formatting'],
			['strong', 'em', 'del'],
			['superscript', 'subscript'],
			['link'],
			['image'], // Our fresh created dropdown
			['justifyLeft', 'justifyCenter', 'justifyRight', 'justifyFull'],
			['unorderedList', 'orderedList'],
			['horizontalRule'],
			['removeformat'],
			['fullscreen']
		],
		plugins: {
			// Add imagur parameters to upload plugin for demo purposes
			upload: {
				serverPath: '<?php echo base_url(); ?>content/imageUpload',
				fileFieldName: 'imagewyg',
				urlPropertyName: 'url'
			},
			resizimg: {
				minSize: 64,
				step: 16,
			}
		}
	});
    $('.datepicker').datetimepicker({
        format: 'DD-MM-YYYY',
    });
    $('.dropify').dropify();
    $('#formmodal').validate({
        rules: {},
        messages: {},
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

<?php if ($action == 'faq') {

$query = $this->db->get_where('faq', array('id' => $hid));
$rw = $query->row();

?>
<form action="<?php echo base_url(); ?>content/updateFaq" method="post" name="formmodal" id="formmodal" enctype="multipart/form-data">
    <input type="hidden" name="hid" value="<?php echo $hid; ?>" />
    <input type="hidden" name="action" value="<?php echo $action; ?>" />
    <div class="modal-header">
        <h4 class="modal-title">Panduan</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
    </div>

    <div class="modal-body" style="max-height:500px;overflow-y:scroll">
        <div class="row">

            <div class="col-md-12 group">
                <div class="form-group">
                    <label for="isian">Pansel</label>
                    <?php
                    if (!empty($rw)) $pansel = $rw->id_pansel;
                    else $pansel = "";
                    $sql = "SELECT id kode,CONCAT(format_nomor_pendaftaran,' - ',nama_pansel) nilai FROM pansel";
                    echo $this->ReferensiModel->LoadListMaster($sql, 'pansel', $pansel, 'class="form-control" required');
                    ?>
                </div>
            </div>
            
            <div class="col-md-12 group">
                <div class="form-group">
                    <label for="isian">Kategori</label>
                    <?php
                    if (!empty($rw)) $kategori = $rw->kategori;
                    else $kategori = "";
                    $sql = "SELECT DISTINCT kategori kode, kategori nilai  FROM faq ORDER BY kategori";
                    echo $this->ReferensiModel->LoadListMaster($sql, 'kategori', $kategori, 'class="form-control" required');
                    ?>
                </div>
            </div>
            <div class="col-md-12 group">
                <div class="form-group">
                    <label for="isian">Pertanyaan</label>
                    <input type="text" class="form-control" id="judul" name="judul" value="<?php if (!empty($rw)) echo $rw->pertanyaan; ?>" required>
                </div>
            </div>
            <div class="col-md-12 group">
                <div class="form-group">
                    <label for="isian">Jawaban</label>
                    <textarea name="penjelasan" id="penjelasan" class="form-control" required><?php if (!empty($rw)) echo $rw->jawaban; ?></textarea>
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
    $('#kategori').select2({
        width:'100%',
        allowClear: true,
        placeholder: '', 
        tags:true,
    });
    $('#penjelasan')
	.trumbowyg({
		btnsDef: {
			// Create a new dropdown
			image: {
				dropdown: ['insertImage', 'upload'],
				ico: 'insertImage'
			}
		},
		// Redefine the button pane
		btns: [
			['viewHTML'],
			['formatting'],
			['strong', 'em', 'del'],
			['superscript', 'subscript'],
			['link'],
			['image'], // Our fresh created dropdown
			['justifyLeft', 'justifyCenter', 'justifyRight', 'justifyFull'],
			['unorderedList', 'orderedList'],
			['horizontalRule'],
			['removeformat'],
			['fullscreen']
		],
		plugins: {
			// Add imagur parameters to upload plugin for demo purposes
			upload: {
				serverPath: '<?php echo base_url(); ?>content/imageUpload',
				fileFieldName: 'imagewyg',
				urlPropertyName: 'url'
			},
			resizimg: {
				minSize: 64,
				step: 16,
			}
		}
	});
    $('.datepicker').datetimepicker({
        format: 'DD-MM-YYYY',
    });
    $('.dropify').dropify();
    $('#formmodal').validate({
        rules: {},
        messages: {},
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

<?php if ($action == 'contact') {

$query = $this->db->get_where('faq', array('id' => $hid));
$rw = $query->row();

?>
<form action="<?php echo base_url(); ?>content/updateContact" method="post" name="formmodal" id="formmodal" enctype="multipart/form-data">
    <input type="hidden" name="hid" value="<?php echo $hid; ?>" />
    <input type="hidden" name="action" value="<?php echo $action; ?>" />
    <div class="modal-header">
        <h4 class="modal-title">Contact</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
    </div>

    <div class="modal-body">
        <div class="row">

            <div class="col-md-12 group">
                <div class="form-group">
                    <label for="isian">Pansel</label>
                    <?php
                    if (!empty($rw)) $pansel = $rw->id_pansel;
                    else $pansel = "";
                    $sql = "SELECT id kode,CONCAT(format_nomor_pendaftaran,' - ',nama_pansel) nilai FROM pansel";
                    echo $this->ReferensiModel->LoadListMaster($sql, 'pansel', $pansel, 'class="form-control" required');
                    ?>
                </div>
            </div>
            
            <div class="col-md-12 group">
                <div class="form-group">
                    <label for="isian">Kategori</label>
                    <?php
                    if (!empty($rw)) $kategori = $rw->kategori;
                    else $kategori = "";
                    $sql = "SELECT DISTINCT kategori kode, kategori nilai  FROM contact ORDER BY kategori";
                    echo $this->ReferensiModel->LoadListMaster($sql, 'kategori', $kategori, 'class="form-control" required');
                    ?>
                </div>
            </div>
            <div class="col-md-12 group">
                <div class="form-group">
                    <label for="isian">Nama</label>
                    <?php
                    if (!empty($rw)) $nama = $rw->id_user;
                    else $nama = "";
                    $sql = "SELECT id kode, nama nilai  FROM users WHERE roles_id IS NOT NULL ORDER BY nama";
                    echo $this->ReferensiModel->LoadListMaster($sql, 'nama', $nama, 'class="form-control" required');
                    ?>
                </div>
            </div>
            <div class="col-md-12 group">
                <div class="form-group">
                    <label for="isian">Contact</label>
                    <input type="text" class="form-control" id="contact" name="contact" value="<?php if (!empty($rw)) echo $rw->contact; ?>" required>
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
    $('#kategori').select2({
        width:'100%',
        allowClear: true,
        placeholder: '', 
        tags:true,
    });
    $('#nama').select2({
        width:'100%',
        allowClear: true,
        placeholder: '', 
    });
    $('.datepicker').datetimepicker({
        format: 'DD-MM-YYYY',
    });
    $('.dropify').dropify();
    $('#formmodal').validate({
        rules: {},
        messages: {},
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

<?php if ($action == 'viewdok') {

if ($this->input->get('jenis')=='pengumuman' || $this->input->get('jenis')=='lampiran'){
    $query = $this->db->get_where('pengumuman', array('id' => $hid));
    $rw = $query->row();

    if ($this->input->get('jenis')=='pengumuman') $file=$rw->file();
        else $file=$rw->lampiran;

}
if ($this->input->get('jenis')=='panduanicon' || $this->input->get('jenis')=='panduanfile'){
    $query = $this->db->get_where('panduan', array('id' => $hid));
    $rw = $query->row();
    
    if ($this->input->get('jenis')=='panduanfile') $file=$rw->file;
        else $file=$rw->icon;

}
if ($this->input->get('jenis')=='unduhan'){
    $query = $this->db->get_where('download_pages', array('id' => $hid));
    $rw = $query->row();

    $file=$rw->file;
}
?>
<form action="<?php echo base_url(); ?>content/updatePengumuman" method="post" name="formmodal" id="formmodal" enctype="multipart/form-data">
    <input type="hidden" name="hid" value="<?php echo $hid; ?>" />
    <input type="hidden" name="action" value="<?php echo $action; ?>" />
    <div class="modal-header">
        <h4 class="modal-title">View Dokumen</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
    </div>

    <div class="modal-body">
        <div class="row">
        <div class="col-md-12 group">
            <div class="form-group">
            <?php 
            if ($this->input->get('jenis')=='pengumuman' || $this->input->get('jenis')=='lampiran')
                echo '<iframe src="'.base_url().'assets/uploads/pengumuman/'.$file.'" style="width:100%;border:0px;min-height: 500px"></iframe>';
            if ($this->input->get('jenis')=='unduhan')
                echo '<iframe src="'.base_url().'assets/uploads/downloads/'.$file.'" style="width:100%;border:0px;min-height: 500px"></iframe>';
            if ($this->input->get('jenis')=='panduanicon' || $this->input->get('jenis')=='panduanfile')
                echo '<iframe src="'.base_url().'assets/uploads/panduan/'.$file.'" style="width:100%;border:0px;min-height: 500px"></iframe>';
                    
            ?>
            </div>
        </div>    	
        </div>
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Tutup</button>
    </div>
</form>
<script>
    $('.datepicker').datetimepicker({
        format: 'DD-MM-YYYY',
    });
    $('.dropify').dropify();
    $('#formmodal').validate({
        rules: {},
        messages: {},
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