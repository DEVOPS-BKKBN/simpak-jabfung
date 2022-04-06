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
                                    <h4 class="card-title">Unduhan</h4>
                                    <div class="d-flex align-items-left align-items-md-center flex-column flex-md-row">
                                        <div class="ml-md-auto py-2 py-md-0">
                                            <a href="<?php echo base_url(); ?>content/modal?action=<?php echo $action; ?>" class="btn btn-secondary btn-round ls-modal">
                                                <span class="btn-label">
                                                    <i class="fa fa-plus"></i>
                                                </span> Tambah</a>
                                        </div>
                                    </div>
                                </div>

                                <div class="card-body">
                                <form action="<?php echo base_url(); ?>content/unduhan" method="GET">
                                    <div class="form-group">
                                        <label for="defaultSelect">Pansel</label>
                                        <?php
                                            
                                            $sql="SELECT id kode,CONCAT(format_nomor_pendaftaran,' - ',nama_pansel) nilai FROM pansel";
                                            echo $this->ReferensiModel->LoadListMaster($sql,'pansel',$this->input->get('pansel'),'class="form-control" onchange="this.form.submit()"');
                                        ?>
                                    </div>
                                    <div class="table-responsive">
                                        <table id="datatable" class="display table table-striped table-hover dataTable">
                                            <thead>
                                                <tr>
                                                    <th>No</th>
                                                    <th>Tanggal</th>
                                                    <th>Pansel</th>
                                                    <th>Judul</th>
                                                    <th>Unduhan</th>
                                                    <th>Aksi</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php
                                                $n = 0;$sql2="";
                                                if ($this->input->get('pansel')!='') $sql2=" AND a.id_pansel='".$this->input->get('pansel')."'";
                                                $sql = "SELECT a.*,b.format_nomor_pendaftaran,DATE_FORMAT(a.created_at,'%d-%m-%Y') tgl FROM download_pages a JOIN pansel b ON a.id_pansel=b.id WHERE a.deleted_at IS NULL $sql2 ORDER BY a.created_at DESC";
                                                $cn = $this->db->query($sql);
                                                foreach ($cn->result() as $rw) {
                                                    $n++;
                                                    echo '<tr>';
                                                    echo '<td>' . $n . '</td>';
                                                    echo '<td>' . $rw->tgl. '</td>';
                                                    echo '<td>' . $rw->format_nomor_pendaftaran. '</td>';
                                                    echo '<td>' . $rw->judul. '</td>';
                                                    echo '<td><a href="'.base_url().'content/modal?action=viewdok&jenis=unduhan&hid='.$rw->id.'" class="ls-modal">'. $rw->file.'</a></td>';
                                                    echo '<td><div class="form-button-action">';
                                                    echo '<a href="' . base_url() . 'content/modal?hid=' . $rw->id . '&action=' . $action . '" class="btn btn-link btn-primary btn-lg ls-modal"><i class="fa fa-edit"></i></a>';
                                                    echo '<a href="" class="btn btn-link btn-danger del" data-id="' . $rw->id . '"><i class="fa fa-trash"></a>';
                                                    echo '</div></td>';
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
                        url: "<?php echo base_url(); ?>content/hapusUnduhan",
                        data: "hid=" + hid + "&action=<?php echo $action; ?>",
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