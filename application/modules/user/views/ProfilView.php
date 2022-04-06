<div class="row">
    <div class="col-md-12">
        <form action="<?php echo base_url(); ?>user/updateProfil" method="post" name="formmodal" id="formmodal" enctype="multipart/form-data">
            <div class="card">
                <div class="card-header">
                    <div class="card-title">Profil</div>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-6 col-lg-4">
                            <div class="form-group group">
                                <label for="nama">Nama</label>
                                <input type="text" class="form-control" id="nama" name="nama" value="<?php if(!empty($rw)) echo $rw->nama; ?>" required>
                            </div>                            
                        </div>
                        <div class="col-md-6 col-lg-4">
                            <div class="form-group">
                                <label for="nik">NIP/NIK</label>
                                <input type="text" class="form-control" id="nik" name="nik" value="<?php echo $this->session->userdata("userNameAPEL"); ?>" required disabled>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4">
                            <div class="form-group">
                                <label for="username">Username</label>
                                <input type="text" class="form-control" id="username" value="<?php echo $this->session->userdata("userNameAPEL"); ?>" disabled>
                            </div>
                        </div>
                        <!--
                        <div class="col-md-6 col-lg-4">
                            <div class="form-group group">
                                <label for="pwdlama">Password Lama</label>
                                <input type="password" class="form-control" id="pwdlama" name="pwdlama" autocomplete="off" required>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4">
                            <div class="form-group group">
                                <label for="pwdbaru">Password Baru</label>
                                <input type="password" class="form-control" id="pwdbaru" name="pwdbaru" autocomplete="off" required>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4">
                            <div class="form-group group">
                                <label for="cpwdbaru">Konfirmasi Password Baru</label>
                                <input type="password" class="form-control" id="cpwdbaru" name="cpwdbaru" autocomplete="off" required>
                            </div>
                        </div>
                        -->
                        <div class="col-md-6 col-lg-4">
                            <div class="form-group group">
                                <label for="email">Email</label>
                                <input type="text" class="form-control" id="email" name="email" value="<?php if(!empty($rw)) echo $rw->email; ?>" required>
                            </div>
                        </div>
                        <?php
                            if (!empty($rw->id_profesi)){
                        ?>
                        <div class="col-md-6 col-lg-4">
                            <div class="form-group group">
                                <label for="telp">No Telpon</label>
                                <input type="text" class="form-control" id="telp" name="telp" value="<?php if(!empty($rw)) echo $rw->nomor_telp; ?>">
                            </div>                            
                        </div>
                        <div class="col-md-6 col-lg-4">
                            <div class="form-group group">
                                <label for="nik">Profesi</label>
                                <?php
                                    if (!empty($rw)) $profesi = $rw->id_profesi;
                                    else $profesi = "";
                                    $sql = "SELECT id kode,profesi nilai FROM profesi WHERE deleted_at IS NULL";
                                    echo $this->ReferensiModel->LoadListMaster($sql, 'profesi', $profesi, 'class="form-control" required');
                                ?>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4">
                            <div class="form-group group">
                                <label for="nik">Pendidikan</label>
                                <?php
                                    if (!empty($rw)) $pendidikan = $rw->id_jenjang_pendidikan;
                                    else $pendidikan = "";
                                    $sql = "SELECT id kode,jenjang nilai FROM jenjang_pendidikan WHERE deleted_at IS NULL ORDER BY urutan";
                                    echo $this->ReferensiModel->LoadListMaster($sql, 'pendidikan', $pendidikan, 'class="form-control" required');
                                ?>
                            </div>
                        </div>
                        <?php } ?>
                    </div>
                </div>
                <div class="card-action">
                    <button class="btn btn-success" type="submit">Simpan</button>
                </div>
            </div>
        </form>
    </div>
</div>
<script>
    $('#formmodal').validate({
        rules: {/*
            pwdbaru: {
                required: true,
                minlength: 6,
            },
            cpwdbaru: {
                required: true,
                equalTo: '#pwdbaru',
            },
            pwdlama: {
                required: true,
                minlength: 6,
                number: true,
                remote: {
                    url: "<?php echo base_url(); ?>user/checkPwdlama",
                    type: "post",
                    data: {
                        nohp: function() {
                            return $("#pwdlama").val();
                        }
                    }
                }
            }
            */
            email: {
                required: true,
                minlength: 6,
                email: true,
                remote: {
                    url: "<?php echo base_url(); ?>user/checkEmail",
                    type: "post",
                    data: {
                        email: function() {
                            return $("#email").val();
                        }
                    }
                }
            }
        },
        messages: {
            email: {
                remote: "Alamat email sudah dipakai."
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