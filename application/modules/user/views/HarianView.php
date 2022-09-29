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
									<div class="card-title">Kegiatan Harian</div>
									<div class="d-flex align-items-left align-items-md-center flex-column flex-md-row">
                                        <div class="ml-md-auto py-2 py-md-0">
                                            <a href="<?php echo base_url(); ?>user/modal?action=<?php echo $action; ?>" class="btn btn-secondary btn-round ls-modal">
                                                <span class="btn-label">
                                                    <i class="fa fa-plus"></i>
                                                </span> Tambah</a>
                                        </div>
                                    </div>
								</div>
								<div class="card-body">
									<div class="table-responsive">
										<table class="table table-striped" id="datatable">
											<thead>
												<tr>
													<th scope="col">No</th>
													<th scope="col">Tanggal</th>
													<th scope="col">Nama Kegiatan</th>
													<th scope="col">Butir Kegiatan</th>
													<th scope="col">Action</th>
												</tr>

											</thead>
											<tbody>
											<?php
												
												$n=0;
									
												$sql="SELECT a.*,b.butir_kegiatan,DATE_FORMAT(a.tgl_kegiatan,'%d=%m-%Y') tgl FROM harian a JOIN kamus_kegiatan b ON a.kegiatan_id=b.hid AND a.created_by='".$this->session->userdata('userName')."'";
												
												$pangkat = $this->db->query($sql);
												foreach ($pangkat->result() as $rw){
													
													$n++;
													echo '<tr>';
													echo '<td>'.$n.'</td>';
													echo '<td>'.$rw->tgl.'</td>';
													echo '<td>'.$rw->nama_kegiatan.'</td>';
													echo '<td>'.$rw->butir_kegiatan.'</td>';
													echo '<td><div class="form-button-action">';
                                                    echo '<a href="' . base_url() . 'user/modal?hid=' . $rw->hid . '&action=' . $action . '" class="btn btn-link btn-primary btn-lg ls-modal"><i class="fa fa-edit"></i></a>';
                                                    echo '<a href="" class="btn btn-link btn-danger del" data-id="' . md5($rw->hid). '"><i class="fa fa-trash"></a>';
                                                    echo '</div></td>';
													echo '</tr>';

												}
												
													
											?>
											</tbody>
										</table>
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
															url: "<?php echo base_url(); ?>user/hapusHarian",
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
</html>