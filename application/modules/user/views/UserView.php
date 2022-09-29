<?php $this->load->view('sites/Header'); ?>
<?php $this->load->view('sites/Loader'); ?>

<body>
    <div class="wrapper">
        <?php $this->load->view('sites/Navigation'); ?>
        <?php $this->load->view('sites/Sidebar'); ?>
        <form action="<?php echo base_url(); ?>user/updateProfil" method="post" name="formmodal" id="formmodal" enctype="multipart/form-data">
            <div class="main-panel">
                <div class="content">
                    <div class="page-inner">
                        <?php echo $this->session->flashdata('response'); ?>
                        <h4 class="page-title">User Profil</h4>
                        <div class="row">

                            <div class="col-md-8">
                                <div class="card card-with-nav">
                                    <div class="card-header">
                                        <div class="row row-nav-line">
                                            <ul class="nav nav-tabs nav-line nav-color-secondary w-100 pl-3" role="tablist">
                                                <li class="nav-item"> <a class="nav-link <?php if ($this->input->get('tab') == '') echo 'active show'; ?>" href="<?php echo base_url(); ?>login/profil" role="tab">Profil</a> </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <?php if ($this->session->userdata('leveluser')=='') { ?>
                                            <div class="row mt-3">
                                                <div class="col-md-6">
                                                    <div class="form-group form-group-default">
                                                        <label>Nama</label>
                                                        <?php if (!empty($rw)) echo $rw->DisplayName; ?>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group form-group-default">
                                                        <label>NIP</label>
                                                        <?php echo $this->session->userdata("userName"); ?>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row mt-3">
                                                <div class="col-md-12">
                                                    <div class="form-group form-group-default group">
                                                        <label>Atasan Langsung</label>
                                                        <?php
															$atasan=$this->ReferensiModel->LoadSQL("SELECT CONCAT(NIPAtasan,'|',NIPLamaAtasan) judul FROM users WHERE username='".$this->session->userdata('userName')."'");
														
															$sql="SELECT CONCAT(NIPAtasan,'|',NIPLamaAtasan) kode, CONCAT(NamaAtasan,' ',NIPAtasan) nilai FROM users WHERE username='".$this->session->userdata('userName')."'";
															echo $this->ReferensiModel->LoadListMaster($sql,'atasan',$atasan,'class="form-control select2" required');
														?>
                                                    </div>
                                                </div>
												
                                            </div>

                                            <div class="text-right mt-3 mb-3">
                                                <button class="btn btn-success" type="submit">Simpan</button>
                                            </div>
                                        <?php } else {?>
											<div class="row mt-3">
                                                <div class="col-md-6">
                                                    <div class="form-group form-group-default">
                                                        <label>Nama</label>
                                                        <input type="text" class="form-control" id="nama" name="nama" value="<?php if (!empty($rw)) echo $rw->DisplayName; ?>" required>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group form-group-default">
                                                        <label>Username</label>
                                                        <?php echo $this->session->userdata("userName"); ?>
                                                    </div>
                                                </div>
												<div class="col-md-4">
                                                    <div class="form-group form-group-default">
                                                        <label>Level</label>
                                                        <?php 
														$alevel=array('1'=>'Administrator','2'=>'Admin Sekretariat','3'=>'Penilai','4'=>'Direktur');
														echo $alevel[$this->session->userdata("leveluser")]; ?>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="text-right mt-3 mb-3">
                                                <button class="btn btn-success" type="submit">Simpan</button>
                                            </div>
										<?php } ?>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="card card-profile">
                                    <div class="card-header" style="background-image: url('<?php echo base_url(); ?>assets/img/blogpost.jpg')">
                                        <div class="profile-picture">
                                            <div class="avatar avatar-xxl">
                                                <input type="file" id="imgupload" name="imgupload" onchange="readURL(this)" accept="image/*" style="display:none" />
                                                <?php
												
                                                if ($this->session->userdata('leveluser')=='') echo '<img src="'.URL_FOTO_SIMSDM.'/'.$this->session->userdata('foto').'" alt="..." class="avatar-img rounded-circle">';
                                                else{
                                                   if ($this->session->userdata('foto')=='')
													echo '<a href="#" onclick="$(\'#imgupload\').trigger(\'click\'); return false;"><img id="imgprofil" src="' . base_url() . 'assets/img/profile.jpg" alt="' . $rw->DisplayName . '" class="avatar-img rounded-circle"></a>';
													else
													echo '<a href="#" onclick="$(\'#imgupload\').trigger(\'click\'); return false;"><img id="imgprofil" src="' . base_url() . 'assets/uploads/profil/' . $rw->Foto . '" alt="' . $rw->DisplayName . '" class="avatar-img rounded-circle"></a>';
                                                }
												?>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <div class="user-profile text-center">
                                            <div class="name"><?php if (!empty($rw)) echo $rw->DisplayName; ?></div>
                                            <div class="job"><?php if (!empty($rw)) echo $rw->Username; ?></div>
                                            <div class="desc"><?php if (!empty($rw)) echo $rw->Jabatan.', '.$this->ReferensiModel->YMDtoDMY($rw->TmtJab); ?></div>
											<div class="desc"><?php if (!empty($rw)) echo $rw->PangkatGol.', '.$this->ReferensiModel->YMDtoDMY($rw->TmtGol).', '.$rw->Karpeg; ?></div>
											<div class="desc"><?php if (!empty($rw)) echo $rw->BiroName; ?></div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

            </div>

        </form>
		<script>
			$("#atasan").select2({
				ajax: {
					url: "<?php echo base_url(); ?>user/caripegawai",
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
			});

		</script>
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

            function readURL(e) {
                var file = e.files[0];
                var reader = new FileReader();
                reader.onload = function() {
                    document.getElementById('imgprofil').src = this.result;
                };
                reader.readAsDataURL(file);

            }
            /*
            var inp = document.querySelector('input');
            inp.addEventListener('change', function(e){
                var file = this.files[0];
                var reader = new FileReader();
                reader.onload = function(){
                    document.getElementById('imgprofil').src = this.result;
                    };
                reader.readAsDataURL(file);
                },false);
            */
        </script>
    </div>
    </div>
    <?php $this->load->view('sites/Footer'); ?>
    </div>
    </div>

    </html>