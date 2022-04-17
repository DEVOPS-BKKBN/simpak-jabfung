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
                                    <h4 class="card-title">Distribusi Penilaian</h4>
                                </div>

                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table id="datatable" class="display table table-striped table-hover dataTable">
                                            <thead>
                                                <tr>
                                                    <th>No</th>
                                                    <th scope="col">Periode Penilaian</th>
													<th scope="col"># Kandidat</th>
													<th scope="col"># Belum Ada Penilai</th>
													<th scope="col"># Sudah Ada Penilai</th>
													<th scope="col"># Belum Dinilai</th>
													<th scope="col"># Sudah Dinilai</th>
													<th scope="col"># Selesai</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            <?php
												$n=0;

												$sql="SELECT hid,namaperiode,
														(SELECT COUNT(*) FROM pemohon WHERE periode_hid=a.hid AND status IN(2,3,4,5)) jmlpeserta,
														(SELECT COUNT(*) FROM pemohon WHERE periode_hid=a.hid AND status IN(2,3,4,5) AND penilai_id IS NOT NULL AND penilaiandate IS NOT NULL) sdhdinilai,
														(SELECT COUNT(*) FROM pemohon WHERE periode_hid=a.hid AND status IN(2,3,4,5) AND penilai_id IS NOT NULL AND penilaiandate IS NULL) blmdinilai,
														(SELECT COUNT(*) FROM pemohon WHERE periode_hid=a.hid AND status='5') selesai,
														(SELECT COUNT(*) FROM pemohon WHERE periode_hid=a.hid AND status IN(2,3,4,5) AND penilai_id IS NOT NULL) ada,
														(SELECT COUNT(*) FROM pemohon WHERE periode_hid=a.hid AND status IN(2,3,4,5) AND penilai_id IS NULL) belum
														 FROM periode a WHERE status='1'";
												$pangkat = $this->db->query($sql);
												foreach ($pangkat->result() as $rw){
													
													$n++;
													echo '<tr>';
													echo '<td>'.$n.'</td>';
													echo '<td>'.$rw->namaperiode.'</td>';
													echo '<td><a href="'.base_url().'penilaian/dtldistribusi?phid='.md5(TOKEN_DOP.$rw->hid).'&jenis=peserta">'.$rw->jmlpeserta.'</a></td>';
													echo '<td><a href="'.base_url().'penilaian/dtldistribusi?phid='.md5(TOKEN_DOP.$rw->hid).'&jenis=belum">'.$rw->belum.'</a></td>';
													echo '<td><a href="'.base_url().'penilaian/dtldistribusi?phid='.md5(TOKEN_DOP.$rw->hid).'&jenis=ada">'.$rw->ada.'</a></td>';
													echo '<td><a href="'.base_url().'penilaian/dtldistribusi?phid='.md5(TOKEN_DOP.$rw->hid).'&jenis=blmdinilai">'.$rw->blmdinilai.'</a></td>';
													echo '<td><a href="'.base_url().'penilaian/dtldistribusi?phid='.md5(TOKEN_DOP.$rw->hid).'&jenis=sdhdinilai">'.$rw->sdhdinilai.'</a></td>';
													echo '<td><a href="'.base_url().'penilaian/dtldistribusi?phid='.md5(TOKEN_DOP.$rw->hid).'&jenis=selesai">'.$rw->selesai.'</a></td>';
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