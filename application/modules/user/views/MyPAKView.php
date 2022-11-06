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
									<div class="card-title">PAK Saya</div>
								</div>
								<div class="card-body">
									<div class="table-responsive">
										<table class="table table-striped" id="datatable">
											<thead>
												<tr>
                                                    <th scope="col">No</th>
                                                    <th scope="col">No PAK</th>
													<th scope="col">Periode PAK</th>
													<th scope="col">Penandatangan</th>
													<th scope="col">Tanggal PAK</th>
													<th scope="col">QR Code</th>
													<th scope="col">Action</th>
												</tr>

											</thead>
											<tbody>
											<?php
												
												$n=0;
                                                
												$sql="SELECT a.hid,namaperiode,CONCAT(DATE_FORMAT(startdate,'%d %b %Y'),' s.d ',DATE_FORMAT(enddate,'%d %b %Y')) periode,
															b.hid hiddupak,DATE_FORMAT(b.creationdate,'%d %b %Y %H:%i') tgldaftar,b.status statusdupak,
															DATE_FORMAT(b.creationdate,'%d-%m-%Y') tglbap
														FROM periode a LEFT JOIN pemohon b ON a.hid=b.periode_hid WHERE b.status='6' AND b.nip='".$this->session->userdata('userName')."'";
												
												$pangkat = $this->db->query($sql);
												foreach ($pangkat->result() as $rw){
													
													$n++;
													echo '<tr>';
                                                    echo '<td>'.$n.'</td>';
													echo '<td>'.$this->ReferensiModel->NomorDUPAK($rw->hiddupak).'</td>';
													echo '<td>'.$rw->tgldaftar.'</td>';
													echo '<td>'.$rw->periode.'</td>';
													echo '<td>'.$this->ProsesModel->NilaiTotalPAK($rw->hiddupak).'</td>';
													echo '<td>';
													echo '<a href="'.base_url().'user/cetakpaktte?hid='.md5(TOKEN_DOP.$rw->hiddupak).'" title="Download" target="_blank"><i class="fas fa-barcode fa-2x"></a>';
													
													echo '</td>';
													echo '<td>';
													echo '<a href="'.base_url().'login/cetakpak?hid='.md5(TOKEN_DOP.$rw->hiddupak).'" title="Download" target="_blank"><i class="icon-cloud-download fa-2x"></a>';
													echo '</td>';
													echo '</tr>';

												}
												
													
											?>
											</tbody>
										</table>
										<script>
											var table = $('#datatable').DataTable();
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