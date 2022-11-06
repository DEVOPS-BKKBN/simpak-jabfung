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
                                    <h4 class="card-title">Notifikasi</h4>
                                </div>

                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table id="datatable" class="display table table-striped table-hover dataTable">
                                            <thead>
                                                <tr>
                                                <th>No</th>
                                                <th>Perihal</th>
                                                <th>Tanggal</th>
                                                <th>Aksi</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php
                                                $n = 0;
                                                
                                                $sql="SELECT a.*,DATE_FORMAT(creation_date,'%d %b %Y %H:%i:%s') tgl FROM notifikasi a WHERE sendto='".$this->session->userdata("userName")."' ORDER BY creation_date DESC LIMIT 5";
									
                                                $query = $this->db->query($sql);
                                                foreach ($query->result() as $rw){
                                                    $n++;
                                                    echo '<tr>';
                                                    echo '<td>'.$n.'</td>';
                                                    echo '<td>'.$rw->subject.'</td>';
                                                    echo '<td>'.$rw->tgl.'</td>';
                                                    echo '<td>';
                                                    if ($rw->statusinbox=='-1') 
                                                        echo '<a href="'.base_url().'dashboard/modal?action=notifikasi&hid='.$rw->id.'" class="ls-modal"><i class="fas fa-envelope-open"></i></a>'; 
                                                        else
                                                        echo '<a href="'.base_url().'dashboard/modal?action=notifikasi&hid='.$rw->id.'" class="ls-modal"><i class="fas fa-envelope"></i></a>'; 	
                                                    echo '</td>';
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
                        url: "<?php echo base_url(); ?>master/hapusJenjang",
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