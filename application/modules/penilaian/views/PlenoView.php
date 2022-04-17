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
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">Jadwal Pleno</h4>
                                    <div class="d-flex align-items-left align-items-md-center flex-column flex-md-row">
                                        <div class="ml-md-auto py-2 py-md-0">
                                            <a href="<?php echo base_url(); ?>penilaian/modal?action=<?php echo $action; ?>" class="btn btn-secondary btn-round ls-modal">
                                                <span class="btn-label">
                                                    <i class="fa fa-plus"></i>
                                                </span> Tambah</a>
                                        </div>
                                    </div>
                                </div>

                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table id="datatable" class="display table table-striped table-hover dataTable">
                                            <thead>
                                                <tr>
                                                <th class="text-nowrap">Action</th>
                                                    <th>Nama Pleno</th>
                                                    <th>Tanggal</th>
                                                    <th>Keterangan</th>
                                                    <th>Jumlah DUPAK</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php
                                                $n = 0;
                                                $sql="SELECT a.*,DATE_FORMAT(tgl_pleno,'%d-%m-%Y') tglpleno,(SELECT SUM(1) FROM pleno_lines WHERE pleno_id=a.hid) jmlpak FROM pleno_header a ORDER BY tgl_pleno DESC";
                                                
							                    $cn = $this->db->query($sql);
                                                foreach ($cn->result_array() as $rw) {
                                                    $n++;
                                                    
                                                    echo '<tr>';
                                                    echo '<td><div class="form-button-action">';
                                                    echo '<a href="' . base_url() . 'penilaian/dtlpleno?hid=' .md5(TOKEN_DOP.$rw['hid']). '&action=' . $action . '" class="btn btn-link btn-primary btn-lg"><i class="fa fa-align-justify"></i></a>';
                                                    echo '<a href="' . base_url() . 'penilaian/modal?hid=' .$rw['hid']. '&action=' . $action . '" class="btn btn-link btn-primary btn-lg ls-modal"><i class="fa fa-edit"></i></a>';
                                                    echo '<a href="" class="btn btn-link btn-danger  btn-lg del" data-id="' . md5($rw['hid']). '"><i class="fa fa-trash"></a>';
                                                    echo '</div></td>';
                                                    echo '<td>'.$rw['nama_pleno'].'</td>';
                                                    echo '<td>'.$rw['tglpleno'].'</td>';
                                                    echo '<td>'.$rw['keterangan'].'</td>';
                                                    echo '<td>'.$rw['jmlpak'].'</td>';
                                                    echo '</tr>';
                                                    
                                                }
                                                ?>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <?php $this->load->view('sites/Footer'); ?>
        </div>
    </div>
    <script>
        
        $("#datatable").on("click", ".del", function(e) {
            var hid = $(this).data("id");
            //alert(hid);
            e.preventDefault();

            swal({
                title: 'Yakin akan menghapus ?',
                text: "Data yang dihapus tidak bisa dikembalikan lagi.",
                type: 'warning',
                buttons: {
                    cancel: {
                        visible: true,
                        text: 'Batal',
                        className: 'btn btn-danger'
                    },
                    confirm: {
                        text: 'Ya, hapus saja.',
                        className: 'btn btn-success'
                    }
                }
            }).then((willDelete) => {
                if (willDelete) {
                    $('#preloader-active').show();
                    $.ajax({
                        url: "<?php echo base_url(); ?>penilaian/hapusPeriode",
                        data: "hid=" + hid+"&action=<?php echo $action; ?>",
                        cache: false,
                        method: 'post',
                        success: function(data) {
                            //alert(data);
                            location.reload();
                        }
                    })
                } 
            });
        })
        $('#datatable').DataTable({});
    </script>

    </html>