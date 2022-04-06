<?php $this->load->view('sites/Header'); ?>
<?php $this->load->view('sites/Loader'); ?>

<body>
    <div class="wrapper">
        <?php $this->load->view('sites/Navigation'); ?>
        <?php $this->load->view('sites/Sidebar'); ?>
        <div class="main-panel">
            <div class="content">
                <div class="page-inner">
                    <?php echo $this->session->flashdata('response'); ?>
                    <form action="<?php echo base_url(); ?>user/updatePwd" method="post" name="formmodal" id="formmodal" enctype="multipart/form-data">
            <div class="card">
                <div class="card-header">
                    <div class="card-title">Ubah Password</div>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-6 col-lg-4">
                            <div class="form-group">
                                <label for="nama">Nama</label>
                                <input type="text" class="form-control" id="nama" value="<?php echo $this->session->userdata("fullName"); ?>" disabled>

                            </div>
                            <div class="form-group">
                                <label for="username">Username</label>
                                <input type="text" class="form-control" id="username" value="<?php echo $this->session->userdata("userName"); ?>" disabled>
                            </div>
                            <div class="form-group group">
                                <label for="pwdbaru">Password Baru</label>
                                <input type="password" class="form-control" id="pwdbaru" name="pwdbaru" autocomplete="off" required>
                            </div>
                            <div class="form-group group">
                                <label for="cpwdbaru">Konfirmasi Password Baru</label>
                                <input type="password" class="form-control" id="cpwdbaru" name="cpwdbaru" autocomplete="off" required>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-action">
                    <button class="btn btn-success" type="submit">Simpan</button>
                </div>
            </div>
        </form>
                </div>
            </div>
            <?php $this->load->view('sites/Footer'); ?>
        </div>
    </div>
    <script>
    $('#formmodal').validate({
        rules: {
            pwdbaru: {
                required: true,
                minlength: 6,
            },
            cpwdbaru: {
                required: true,
                equalTo: '#pwdbaru',
            },
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
    </html>