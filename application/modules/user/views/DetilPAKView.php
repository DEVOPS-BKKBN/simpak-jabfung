<?php $this->load->view('sites/Header'); ?>
<?php $this->load->view('sites/Loader'); ?>

<body>
    <div class="wrapper">
        <?php $this->load->view('sites/Navigation'); ?>
        <?php $this->load->view('sites/Sidebar'); ?>
        <div class="main-panel">
            <div class="content">
                <div class="page-inner">
                    <?php 
						echo $this->session->flashdata('response'); 
						$sql="SELECT COUNT(*) judul FROM kamus_kegiatan a JOIN jabatan b ON a.jabatan_id=b.hid 
WHERE b.hid IN(SELECT hid FROM jabatan WHERE kode_jab='".$rw->kdjab."' AND deleted_at IS NULL) AND kategori='Utama' ORDER BY a.hid";
						
						$num=$this->ReferensiModel->LoadSQL($sql);

						if ($num<1) echo '<div class="alert alert-danger">Master Kegiatan tidak ada yang sesuai dengan jabatan anda, hubungi Admin Sekretariat.</div>';
					?>
					
                    <div class="row">
						<div class="col-md-12">
							<div class="card">
								<div class="card-header">
									<div class="card-title">FORM DUPAK | <?php echo $nomor; ?></div>
								</div>
								<div class="card-body">
									<ul class="nav nav-tabs profile-nav mb-4" id="profileTab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link<?php if ($tab=='') echo ' active show'; ?>" href="<?php echo base_url(); ?>user/detildupak?hid=<?php echo $hid.'&tab='; ?>" role="tab"><i class="flaticon-profile"></i> Data Personal</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link<?php if ($tab=='kegiatan') echo ' active show'; ?>" href="<?php echo base_url(); ?>user/detildupak?hid=<?php echo $hid; ?>&tab=kegiatan" role="tab"><i class="flaticon-calendar"></i> Kegiatan</a>
                        </li>
						<li class="nav-item"> <a class="nav-link <?php if ($this->input->get('tab')=='rangkuman') echo 'active'; ?>" href="<?php echo base_url().'user/detildupak?hid='.$this->input->get('hid').'&tab=rangkuman'; ?>"><i class="flaticon-list"></i> Rangkuman</a> </li>
                    </ul>
                <div class="tab-content mt-2 mb-3" id="pills-with-icon-tabContent">
                    <?php if ($tab==''){?>
                    <div class="tab-pane fade active show" id="pills-home-icon" role="tabpanel" aria-labelledby="pills-home-tab-icon">
                        <div class="table-responsive">
							<?php if ($status==1){ ?><button type="button" class="btn btn-sm waves-effect waves-light btn-info mb-4 mt-4" id="btnkirim" data-id="<?php echo $rw->hid; ?>">KIRIM KE ADMIN SEKRETARIAT</button><?php } ?>
                                    <table class="table table-striped">
                                        <tbody>
                                            <tr>
                                                <td width="30%" rowspan="7"><img src="<?php echo URL_FOTO_SIMSDM.$rw->fotopegawai; ?>" alt="<?php echo $rw->namalengkap; ?>" class="img-circle" width="260"></td>
																<td width="20%">No DUPAK</td>
                                                <td width="50%"><?php echo $nomor; ?></td>
                                            </tr>
														  <tr>
																<td width="20%">Periode</td>
                                                <td width="50%"><?php echo $rw->periode; ?></td>
                                            </tr>
														  <tr>
																<td width="20%">Nama</td>
                                                <td width="50%"><?php echo $rw->namalengkap; ?></td>
                                            </tr>
														  <tr>
																<td width="20%">NIP</td>
                                                <td width="50%"><?php echo $rw->nip; ?></td>
                                            </tr>
														  <tr>
																<td width="20%">Jenis Kelamin</td>
                                                <td width="50%"><?php echo $rw->jeniskelamin; ?></td>
                                            </tr>
														  <tr>
																<td width="20%">Unit Kerja</td>
                                                <td width="50%"><?php echo $rw->unitkerja; ?></td>
                                            </tr>
														  <tr>
																<td width="20%">Jabatan</td>
                                                <td width="50%"><?php echo $rw->kdjab.'-'.$rw->jabatan; ?></td>
                                            </tr>	
											<tr><th colspan="2">UPLOAD DOKUMEN ADMINISTRASI</th></tr>
											<?php
												$sql="SELECT * FROM mdok ORDER BY dokumen";
												$query=$this->db->query($sql);
												foreach ($query->result() as $rw2){
													$cn=$this->db->get_where('dokumen',array('pemohon_hid'=>$phid,'dokumen_hid'=>$rw2->hid,'jenis'=>'administrasi'));
													$rw3=$cn->row();
													echo '<tr>';
													echo '<td>'.$rw2->dokumen.'</td>';
													if ($status==1) echo '<td><button type="button" class="btn btn-sm btn-info btn-circle dokumenpribadi" data-id="'.$phid.'" data-dokumen="'.$rw2->hid.'"><i class="fa fa-plus"></i> </button></td>'; else echo '<td></td>';
													if (!empty($rw3->file_name)) {
														echo '<td>';
														echo '<a href="'.base_url().'user/modal?action=viewdokumenpribadi&hid='.$rw2->hid.'&phid='.$phid.'" class="ls-modal">Dokumen</a>';
														if ($status==1) echo '<a href="" class="delpribadi" data-hid="'.$rw2->hid.'" data-phid="'.$phid.'"><i class="icon-trash"></i></a>';
														echo '</td>';
													} else echo '<td></td>';
													echo '</tr>';
													
												}
												
											
											?>
                                        </tbody>
                                    </table>
                                </div>
                    </div>
                    <?php } ?>
                    <?php if ($tab=='dokumen'){?>
                    <div class="tab-pane active show" id="pills-profile-icon" role="tabpanel" aria-labelledby="pills-profile-tab-icon">
                        <?php //$this->load->view('DokumenPendukungView',array('hid'=>$hid));?>
                    </div>
                    <?php } ?>
					<?php if ($this->input->get('tab')=='kegiatan'){		
								// cek jika master kosong info ke admin
								
								
								// cari data tersimpan
								/*
									$sql="SELECT * FROM dupak WHERE pemohon_id='".$rw->hid."'";
									$cn2 = $this->db->query($sql);
									foreach ($cn2->result() as $rw2){
										$alama[$rw2->kegiatan_id]=$rw2->ak_lama;
										$abaru[$rw2->kegiatan_id]=$rw2->ak_baru;
										$atotal[$rw2->kegiatan_id]=$rw2->ttl;
									}
								*/
								?>
								<div class="tab-pane p-20 active" id="tabtask" role="tabpanel">
									<div class="table-responsive">
										 <form id="form1" name="form1" action="<?php echo base_url(); ?>user/simpandupak" method="post">
										 <?php if ($status==1){ ?><button type="button" class="btn waves-effect waves-light btn-info btn-sm mb-4" id="btnkirim" data-id="<?php echo $rw->hid; ?>">KIRIM KE ADMIN SEKRETARIAT</button><?php } ?>
										 <?php if ($status==1){ ?><a href="<?php echo base_url(); ?>user/modal?action=butirkegiatan&phid=<?php echo $this->input->get('hid');?>" class="btn waves-effect waves-light btn-primary btn-sm mb-4 ls-modal">TAMBAH BUTIR KEGIATAN</a><?php } ?>
										
										 <input type="hidden" name="hid" value="<?php echo $rw->hid; ?>"/>
										 <input type="hidden" name="kdjab" value="<?php echo $rw->kdjab; ?>"/>
										 <table class="table table-striped table-bordered">
												<thead>
													<tr>
														<th>NO</th><th>BUTIR KEGIATAN</th><th>OUTPUT</th><th>ANGKA KREDIT</th><th>JUMLAH</th><th>TOTAL</th><th>DOKUMEN FISIK</th><?php if ($status==1){ ?><th>AKSI</th><?php } ?>
													</tr>
												</thead>
												<tbody>												
													<tr><th <?php if ($status==1){?>colspan="8"<?php } else  echo 'colspan="7"';?>>A. KEGIATAN UTAMA</th></tr>
													<?php
														$n=0;
														$cn2=$this->db->query("SELECT a.*,b.butir_kegiatan,b.output FROM dupak a JOIN kamus_kegiatan b ON a.kegiatan_id=b.hid WHERE pemohon_id=".$this->db->escape($rw->hid)." AND kategori='Utama' ORDER BY a.hid");
														foreach ($cn2->result() as $rw2){
															$n++;
															echo '<tr>';
															echo '<td>'.$n.'</td>';
															echo '<td>'.$rw2->butir_kegiatan.'</td>';
															echo '<td>'.$rw2->output.'</td>';
															echo '<td>'.$rw2->nilai_ak.'</td>';
															echo '<td>'.$rw2->jml.'</td>';
															echo '<td>'.$rw2->total_ak.'</td>';
															echo '<td><ul class="list-group list-group-full">';
																	$sql="SELECT a.*,(SELECT MAX(file_name) FROM dokumen WHERE pemohon_hid='".$rw->hid."' AND dokumen_hid=a.hid) filename FROM kamus_dupak a WHERE kegiatan_hid='".$rw2->kegiatan_id."'";
																	$cn3 = $this->db->query($sql);
																	foreach ($cn3->result() as $rw3){
																		if ($rw3->filename!='') echo '<li class="list-group-item d-flex justify-content-between align-items-center list-group-item-success">'.$rw3->output;
																			else echo '<li class="list-group-item d-flex justify-content-between align-items-center">'.$rw3->output;
																		if ($rw3->filename!='') echo '<a href="'.base_url().'user/modal?action=viewdokumen&hid='.$rw3->hid.'&phid='.$phid.'" class="ls-modal"><span class="badge badge-info badge-pill ml-2"><i class="ti-zoom-in text"></i> LIHAT</span></a>';
																		if ($status==1) echo '<a href="" class="dokumen" data-hid="'.$rw2->hid.'" data-dokid="'.$rw3->hid.'"><span class="badge badge-primary badge-pill ml-2"><i class="ti-export text" aria-hidden="true"></i> UPLOAD</span></a></li>';
																	}
															echo '</ul></td>';
															if ($status==1){
																echo '<td><div class="form-button-action">';															
																echo '<a href="' . base_url() . 'user/modal?hid=' . $rw2->hid . '&action=butirkegiatan&phid='.$hid.'" class="btn btn-link btn-primary btn-lg ls-modal"><i class="fa fa-edit"></i></a>';
																echo '<a href="" class="btn btn-link btn-danger del" data-id="' . md5($rw2->hid). '"><i class="fa fa-trash"></i></a>';
															echo '</div></td>';
															}
															
															echo '</tr>';
														}
													?>
													<tr><th colspan="8">B. KEGIATAN PENUNJANG</th></tr>
													<?php
														$n=0;
														$cn2=$this->db->query("SELECT a.*,b.butir_kegiatan,b.output FROM dupak a JOIN kamus_kegiatan b ON a.kegiatan_id=b.hid WHERE pemohon_id=".$this->db->escape($rw->hid)." AND kategori='Penunjang' ORDER BY a.hid");
														foreach ($cn2->result() as $rw2){
															$n++;
															echo '<tr>';
															echo '<td>'.$n.'</td>';
															echo '<td>'.$rw2->butir_kegiatan.'</td>';
															echo '<td>'.$rw2->output.'</td>';
															echo '<td>'.$rw2->nilai_ak.'</td>';
															echo '<td>'.$rw2->jml.'</td>';
															echo '<td>'.$rw2->total_ak.'</td>';
															echo '<td><ul class="list-group list-group-full">';
																	$sql="SELECT a.*,(SELECT MAX(file_name) FROM dokumen WHERE pemohon_hid='".$rw->hid."' AND dokumen_hid=a.hid) filename FROM kamus_dupak a WHERE kegiatan_hid='".$rw2->kegiatan_id."'";
																	$cn3 = $this->db->query($sql);
																	foreach ($cn3->result() as $rw3){
																		if ($rw3->filename!='') echo '<li class="list-group-item d-flex justify-content-between align-items-center list-group-item-success">'.$rw3->output;
																			else echo '<li class="list-group-item d-flex justify-content-between align-items-center">'.$rw3->output;
																		if ($rw3->filename!='') echo '<a href="'.base_url().'user/modal?action=viewdokumen&hid='.$rw3->hid.'&phid='.$phid.'" class="ls-modal"><span class="badge badge-info badge-pill ml-2"><i class="ti-zoom-in text"></i> LIHAT</span></a>';
																		if ($status==1) echo '<a href="" class="dokumen" data-hid="'.$rw2->hid.'" data-dokid="'.$rw3->hid.'"><span class="badge badge-primary badge-pill ml-2"><i class="ti-export text" aria-hidden="true"></i> UPLOAD</span></a></li>';
																	}
															echo '</ul></td>';
															if ($status==1){
															echo '<td><div class="form-button-action">';															
																echo '<a href="' . base_url() . 'user/modal?hid=' . $rw2->hid . '&action=butirkegiatan&phid='.$hid.'" class="btn btn-link btn-primary btn-lg ls-modal"><i class="fa fa-edit"></i></a>';
																echo '<a href="" class="btn btn-link btn-danger del" data-id="' . md5($rw2->hid). '"><i class="fa fa-trash"></i></a>';
															echo '</div></td>';
															}
															
															echo '</tr>';
														}
													?>
												</tbody>
										 </table>
										 </form>
									</div>
								</div>
								<?php } ?>
					<?php if ($this->input->get('tab')=='rangkuman'){		
								
								?>
								<div class="tab-pane p-20 active" id="tabtask" role="tabpanel">
									<div class="table-responsive">
										 <?php if ($status==1){ ?><button type="button" class="btn waves-effect waves-light btn-info btn-sm mb-4" id="btnkirim" data-id="<?php echo $rw->hid; ?>">KIRIM KE ADMIN SEKRETARIAT</button><?php } ?>
										 <?php
											$sql="SELECT ROUND(SUM(CASE WHEN kategori='Utama' THEN total_ak ELSE 0 END),3) utama,
ROUND(SUM(CASE WHEN kategori='Penunjang' THEN total_ak ELSE 0 END),3) penunjang,
ROUND(SUM(total_ak),3) total
 FROM dupak a JOIN kamus_kegiatan b ON a.kegiatan_id=b.hid WHERE pemohon_id='".$rw->hid."'";
											$cn2=$this->db->query($sql);
											$rw2=$cn2->row();
 
										 ?>
										 <input type="hidden" name="hid" value="<?php echo $rw->hid; ?>"/>
										 <input type="hidden" name="kdjab" value="<?php echo $rw->kdjab; ?>"/>
										 <table class="table table-striped table-bordered">
												
												<th colspan="2">TOTAL UTAMA</th>
												<th><?php echo $rw2->utama; ?></th>
												</tr>
												
												<th colspan="2">TOTAL PENUNJANG</th>
												<th><?php echo $rw2->penunjang; ?></th>
												</tr>
												<tr>
												
												<th colspan="2">TOTAL UTAMA DAN PENUNJANG</th>
												<th><?php echo $rw2->total; ?></th>
												</tr>
												</tbody>
										 </table>
									</div>
								</div>
								<?php } ?>
                </div>
								</div>
								
							</div>
						</div>
					</div>
                </div>
            </div>
			<script>
$(function () {
	$("#btnkirim").on("click", function(e) {
		var hid = $(this).data("id");
		e.preventDefault();
		
		
		swal({
				title: 'Yakin akan kirim ke ADMIN SEKRETARIAT ?',
				text: "Pastikan semua data dan dokumen yang diperlukan sudah di lengkapi karena data tidak akan bisa dirubah lagi.",
				type: 'warning',
				buttons: {
					cancel: {
						visible: true,
						text: 'Batal',
						className: 'btn btn-danger'
					},
					confirm: {
						text: 'Ya',
						className: 'btn btn-success'
					}
				}
			}).then((willDelete) => {
				if (willDelete) {
					$('#preloader-active').show();
					$.ajax({
					url: "<?php echo base_url(); ?>user/kirimdupak",
					data: "hid=" + hid,
					cache: false,
					method: 'post',
					success: function(data) {
						$('#preloader-active').hide();
						if (data!='sukses'){							
							swal({
								type: 'error',
								title: 'Error!',
								text: data,
								confirmButtonText: 'Tutup',
								buttonsStyling: false,
								confirmButtonClass: 'btn btn-lg btn-danger'
							});
						}else location.reload();
					}
				})
				}
			});
	})
	$(".dokumen").on("click", function(e) {
		e.preventDefault();
		var hid = $(this).data("hid");
		var dokid = $(this).data("dokid");
		console.log('id',hid);
		$('#largeModal').modal('show').find('.modal-content').html('<div class="spinner-grow text-primary mt-2 mb-2 ml-2" role="status"><span class="sr-only">Loading...</span></div>').load('<?php echo base_url(); ?>user/modal?action=dokumen&phid=<?php echo $phid; ?>&hid='+hid+"&dokid="+dokid);
	})
	$(".dokumenpribadi").on("click", function(e) {
		var dokumen = $(this).data("dokumen");
		//console.log('id',dokumen);
		$('#largeModal').modal('show').find('.modal-content').html('<div class="spinner-grow text-primary mt-2 mb-2 ml-2" role="status"><span class="sr-only">Loading...</span></div>').load('<?php echo base_url(); ?>user/modal?action=dokumenpribadi&phid=<?php echo $phid; ?>&dokumen='+dokumen);
	})
	$(".number").keydown(function(event){
									if (event.shiftKey == true) {
										event.preventDefault();
									}
							
									if ((event.keyCode >= 48 && event.keyCode <= 57) || 
										(event.keyCode >= 96 && event.keyCode <= 105) || 
										event.keyCode == 8 || event.keyCode == 9 || event.keyCode == 37 ||
										event.keyCode == 39 || event.keyCode == 46 || event.keyCode == 190 || event.keyCode == 110 || event.keyCode == 86) {
										
																	
							
									} else {
										event.preventDefault();
									}
									console.log(event.keyCode);
									if($(this).val().indexOf('.') !== -1 && event.keyCode == 190)
										event.preventDefault(); 
									//if a decimal has been added, disable the "."-button
								})
	$(".del").on("click",function(e){
		var hid=$(this).data("id");
		//var phid=$(this).data("phid");
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
						text: 'Ya',
						className: 'btn btn-success'
					}
				}
			}).then((willDelete) => {
				if (willDelete) {
					$('#preloader-active').show();
					$.ajax({
					url: "<?php echo base_url(); ?>user/delbutir",
					data:"hid="+hid,
					cache: false,
					method: 'post',
					success: function(data) {
						location.reload();
					}
				})
				}
			});
	})
	$(".delpribadi").on("click",function(e){
		var hid=$(this).data("hid");
		var phid=$(this).data("phid");
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
						text: 'Ya',
						className: 'btn btn-success'
					}
				}
			}).then((willDelete) => {
				if (willDelete) {
					$('#preloader-active').show();
					$.ajax({
					url: "<?php echo base_url(); ?>user/del_dokumenpribadi",
					data:"hid="+hid+"&phid="+phid,
					cache: false,
					method: 'post',
					success: function(data) {
						location.reload();
					}
				})
				}
			});
	})

})
</script>
            <?php $this->load->view('sites/Footer'); ?>
        </div>
    </div>
</html>