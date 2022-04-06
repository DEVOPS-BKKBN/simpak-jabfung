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
					<?php if ($action=='listkelompok') { ?>
					<div class="row">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">Kelompok Jabatan | <?php echo $this->ReferensiModel->LoadSQL("SELECT kelompok judul FROM kelompok WHERE hid='$hid'"); ?></h4>
                                    <div class="d-flex align-items-left align-items-md-center flex-column flex-md-row">
                                        <div class="ml-md-auto py-2 py-md-0">
                                            <a href="<?php echo base_url(); ?>master/modal?action=<?php echo $action; ?>&hid=<?php echo $hid; ?>" class="btn btn-secondary btn-round ls-modal">
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
                                                    <th>No</th>
                                                    <th scope="col">Kode Jabatan</th>
													<th scope="col">Jabatan</th>
													<th scope="col">Jenis Jabatan</th>
                                                    <th>Aksi</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                             <?php
                                                $n = 0;
                                                $sql="SELECT b.*,a.hid hidlines FROM kelompok_lines a JOIN jabatan b ON a.jabatan_id=b.hid WHERE a.kelompok_id='$hid'";
							                    $cn = $this->db->query($sql);
                                                foreach ($cn->result() as $rw) {
                                                    $n++;
                                                    echo '<tr>';
                                                    echo '<td>' . $n . '</td>';
                                                    echo '<td>'.$rw->kode_jab.'</td>';
													echo '<td>'.$rw->jabatan.'</td>';
													echo '<td>'.$rw->jenis_jab.'</td>';
                                                    echo '<td><div class="form-button-action">';
                                                    echo '<a href="" class="btn btn-link btn-danger del" data-id="' . md5($rw->hidlines). '"><i class="fa fa-trash"></i></a>';
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
										url: "<?php echo base_url(); ?>master/hapusListKelompok",
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
					<?php } ?>
					<?php if ($action=='kelompok') { ?>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">Kelompok Jabatan</h4>
                                    <div class="d-flex align-items-left align-items-md-center flex-column flex-md-row">
                                        <div class="ml-md-auto py-2 py-md-0">
                                            <a href="<?php echo base_url(); ?>master/modal?action=<?php echo $action; ?>" class="btn btn-secondary btn-round ls-modal">
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
                                                    <th>No</th>
                                                    <th scope="col">Kelompok Jabatan</th>
                                                    <th>Aksi</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                             <?php
                                                $n = 0;
                                                $sql="SELECT * FROM kelompok";
							                    $cn = $this->db->query($sql);
                                                foreach ($cn->result() as $rw) {
                                                    $n++;
                                                    echo '<tr>';
                                                    echo '<td>' . $n . '</td>';
                                                    echo '<td>'.$rw->kelompok.'</td>';
                                                    echo '<td><div class="form-button-action">';
                                                    echo '<a href="' . base_url() . 'master/listkelompok?hid=' . $rw->hid . '&action=' . $action . '" class="btn btn-link btn-primary btn-lg" title="Detil"><i class="fas fa-align-justify"></i></a>';
                                                    echo '<a href="' . base_url() . 'master/modal?hid=' . $rw->hid . '&action=' . $action . '" class="btn btn-link btn-primary btn-lg ls-modal"><i class="fa fa-edit"></i></a>';
                                                    echo '<a href="" class="btn btn-link btn-danger del" data-id="' . md5($rw->hid). '"><i class="fa fa-trash"></i></a>';
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
										url: "<?php echo base_url(); ?>master/hapusKelompok",
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
					<?php } ?>
                </div>
            </div>
            <?php $this->load->view('sites/Footer'); ?>
        </div>
    </div>
    

    </html>