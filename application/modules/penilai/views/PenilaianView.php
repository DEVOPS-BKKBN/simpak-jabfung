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
                                    <div class="card-title">Form Penilaian | <?php echo $rw->namalengkap; ?></div>
                                   
                                </div>

                                <div class="card-body">
                                    <ul class="nav nav-tabs profile-nav mb-4" id="profileTab" role="tablist">
										<li class="nav-item">
											<a class="nav-link<?php if ($tab=='') echo ' active show'; ?>" href="<?php echo base_url(); ?>penilai/penilaian?hid=<?php echo $hid.'&tab='; ?>" role="tab"><i class="flaticon-profile"></i> Data Personal</a>
										</li>
										<li class="nav-item">
											<a class="nav-link<?php if ($tab=='kegiatan') echo ' active show'; ?>" href="<?php echo base_url(); ?>penilai/penilaian?hid=<?php echo $hid; ?>&tab=kegiatan" role="tab"><i class="flaticon-calendar"></i> Kegiatan</a>
										</li>
										<li class="nav-item"> <a class="nav-link <?php if ($this->input->get('tab')=='rangkuman') echo 'active'; ?>" href="<?php echo base_url().'penilai/penilaian?hid='.$this->input->get('hid').'&tab=rangkuman'; ?>"><i class="flaticon-list"></i> Rangkuman</a> </li>
									</ul>
										
									<div class="tab-content mt-2 mb-3" id="pills-with-icon-tabContent">
										<?php if ($tab==''){?>
											<div class="tab-pane fade active show" id="pills-home-icon" role="tabpanel" aria-labelledby="pills-home-tab-icon">
												<div class="table-responsive">
													<?php if ($status==3){ ?><button type="button" class="btn btn-sm waves-effect waves-light btn-info mb-4 mt-4" id="btnkirim" data-id="<?php echo $rw->hid; ?>">SELESAIKAN PENILAIAN</button><?php } ?>
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
										<?php if ($this->input->get('tab')=='kegiatan'){		
										
										?>
										<div class="tab-pane p-20 active" id="tabtask" role="tabpanel">
											<div class="table-responsive">
												 <form id="form1" name="form1" action="<?php echo base_url(); ?>user/simpandupak" method="post">
												 <?php if ($status==3){ ?><button type="button" class="btn btn-sm waves-effect waves-light btn-info mb-4 mt-4" id="btnkirim" data-id="<?php echo $rw->hid; ?>">SELESAIKAN PENILAIAN</button><?php } ?>
												 <input type="hidden" name="hid" value="<?php echo $rw->hid; ?>"/>
												 <input type="hidden" name="kdjab" value="<?php echo $rw->kdjab; ?>"/>
												 <table class="table table-striped table-bordered">
														<thead>
															<tr>
																<th>NO</th><th>BUTIR KEGIATAN</th><th>OUTPUT</th><th>ANGKA KREDIT</th><th>JUMLAH</th><th>TOTAL</th><th>TOTAL PENILAI</th><th>DOKUMEN FISIK</th>
															</tr>
														</thead>
														<tbody>												
															<tr><th colspan="9">A. KEGIATAN UTAMA</th></tr>
															<?php
																$n=0;
																
																$cn2=$this->db->query("SELECT a.*,b.butir_kegiatan,b.output,(SELECT total_nilai FROM dupak_penilai WHERE dupak_id=a.hid AND penilai_id='$penilaiid' )ttlpenilai FROM dupak a JOIN kamus_kegiatan b ON a.kegiatan_id=b.hid WHERE pemohon_id=".$this->db->escape($rw->hid)." AND kategori='Utama' ORDER BY a.hid");
																foreach ($cn2->result() as $rw2){
																	$n++;
																	echo '<tr>';
																	echo '<td>'.$n.'</td>';
																	echo '<td>'.$rw2->butir_kegiatan.'</td>';
																	echo '<td>'.$rw2->output.'</td>';
																	echo '<td>'.$rw2->nilai_ak.'</td>';
																	echo '<td>'.$rw2->jml.'</td>';
																	echo '<td>'.$rw2->total_ak.'</td>';
																	echo '<td>'.$rw2->ttlpenilai.'</td>';
																	echo '<td><ul class="list-group list-group-full">';
																			$sql="SELECT a.*,(SELECT MAX(file_name) FROM dokumen WHERE pemohon_hid='".$rw->hid."' AND dokumen_hid=a.hid) filename,
																			(SELECT MAX(status) FROM dokumen_penilai WHERE penilai_id='".$penilaiid."' AND dokumen_id=a.hid) status_approval,
																			(SELECT MAX(notes) FROM dokumen_penilai WHERE penilai_id='".$penilaiid."' AND dokumen_id=a.hid) notes_approval
																			FROM kamus_dupak a WHERE kegiatan_hid='".$rw2->kegiatan_id."'";$cn3 = $this->db->query($sql);
																			foreach ($cn3->result() as $rw3){
																				if ($rw3->filename!='') echo '<li class="list-group-item d-flex justify-content-between align-items-center list-group-item-success">'.$rw3->output;
																					else echo '<li class="list-group-item d-flex justify-content-between align-items-center">'.$rw3->output;
																				if ($rw3->filename!='' && $rw3->status_approval=='') echo '<a href="'.base_url().'penilai/modal?action=viewdokumennilai&tab=task&hid='.$rw3->hid.'&phid='.$phid.'" class="ls-modal"><span class="badge badge-info badge-pill ml-2"><i class="ti-zoom-in text"></i> APPROVAL</span></a>';
																				if ($rw3->status_approval=='2') { echo '<a href="'.base_url().'penilai/modal?action=viewdokumennilai&tab=task&hid='.$rw3->hid.'&phid='.$phid.'" class="ls-modal"><span class="badge badge-danger badge-pill ml-2"><i class="ti-close text"></i> DITOLAK</span></a>';																			
																				}
																				if ($rw3->status_approval=='3') { echo '<a href="'.base_url().'penilai/modal?action=viewdokumennilai&tab=task&hid='.$rw3->hid.'&phid='.$phid.'" class="ls-modal"><span class="badge badge-warning badge-pill ml-2"><i class="ti-close text"></i> REVISI</span></a>';																			
																				}
																				if ($rw3->status_approval=='1') echo '<a href="'.base_url().'penilai/modal?action=viewdokumennilai&tab=task&hid='.$rw3->hid.'&phid='.$phid.'" class="ls-modal"><span class="badge badge-success badge-pill ml-2"><i class="ti-check text"></i> DISETUJUI</span></a>';
																				echo '</li>';
																				
																				if ($rw3->status_approval=='2' || $rw3->status_approval=='3') echo '<li class="list-group-item d-flex justify-content-between align-items-center list-group-item-danger"><small>Notes: '.$rw3->notes_approval.'</small></li>';
																			}
																	echo '</ul></td>';
																	
																	
																	echo '</tr>';
																}
															?>
															<tr><th colspan="9">B. KEGIATAN PENUNJANG</th></tr>
															<?php
																$n=0;
																$cn2=$this->db->query("SELECT a.*,b.butir_kegiatan,b.output,(SELECT total_nilai FROM dupak_penilai WHERE dupak_id=a.hid AND penilai_id='$penilaiid' )ttlpenilai FROM dupak a JOIN kamus_kegiatan b ON a.kegiatan_id=b.hid WHERE pemohon_id=".$this->db->escape($rw->hid)." AND kategori='Penunjang' ORDER BY a.hid");
																foreach ($cn2->result() as $rw2){
																	$n++;
																	echo '<tr>';
																	echo '<td>'.$n.'</td>';
																	echo '<td>'.$rw2->butir_kegiatan.'</td>';
																	echo '<td>'.$rw2->output.'</td>';
																	echo '<td>'.$rw2->nilai_ak.'</td>';
																	echo '<td>'.$rw2->jml.'</td>';
																	echo '<td>'.$rw2->total_ak.'</td>';
																	echo '<td>'.$rw2->ttlpenilai.'</td>';
																	echo '<td><ul class="list-group list-group-full">';
																			$sql="SELECT a.*,(SELECT MAX(file_name) FROM dokumen WHERE pemohon_hid='".$rw->hid."' AND dokumen_hid=a.hid) filename,
																			(SELECT MAX(status) FROM dokumen_penilai WHERE penilai_id='".$penilaiid."' AND dokumen_id=a.hid) status_approval,
																			(SELECT MAX(notes) FROM dokumen_penilai WHERE penilai_id='".$penilaiid."' AND dokumen_id=a.hid) notes_approval
																			FROM kamus_dupak a WHERE kegiatan_hid='".$rw2->kegiatan_id."'";$cn3 = $this->db->query($sql);
																			foreach ($cn3->result() as $rw3){
																				if ($rw3->filename!='') echo '<li class="list-group-item d-flex justify-content-between align-items-center list-group-item-success">'.$rw3->output;
																					else echo '<li class="list-group-item d-flex justify-content-between align-items-center">'.$rw3->output;
																				if ($rw3->filename!='' && $rw3->status_approval=='') echo '<a href="'.base_url().'penilai/modal?action=viewdokumennilai&tab=task&hid='.$rw3->hid.'&phid='.$phid.'" class="ls-modal"><span class="badge badge-info badge-pill ml-2"><i class="ti-zoom-in text"></i> APPROVAL</span></a>';
																				if ($rw3->status_approval=='2') { echo '<a href="'.base_url().'penilai/modal?action=viewdokumennilai&tab=task&hid='.$rw3->hid.'&phid='.$phid.'" class="ls-modal"><span class="badge badge-danger badge-pill ml-2"><i class="ti-close text"></i> DITOLAK</span></a>';																			
																				}
																				if ($rw3->status_approval=='3') { echo '<a href="'.base_url().'penilai/modal?action=viewdokumennilai&tab=task&hid='.$rw3->hid.'&phid='.$phid.'" class="ls-modal"><span class="badge badge-warning badge-pill ml-2"><i class="ti-close text"></i> REVISI</span></a>';																			
																				}
																				if ($rw3->status_approval=='1') echo '<a href="'.base_url().'penilai/modal?action=viewdokumennilai&tab=task&hid='.$rw3->hid.'&phid='.$phid.'" class="ls-modal"><span class="badge badge-success badge-pill ml-2"><i class="ti-check text"></i> DISETUJUI</span></a>';
																				echo '</li>';
																				
																				if ($rw3->status_approval=='2' || $rw3->status_approval=='3') echo '<li class="list-group-item d-flex justify-content-between align-items-center list-group-item-danger"><small>Notes: '.$rw3->notes_approval.'</small></li>';
																			}
																	echo '</ul></td>';
																																		
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
											$sql="SELECT ROUND(SUM(CASE WHEN kategori='Utama' THEN total_nilai ELSE 0 END),3) utama,
ROUND(SUM(CASE WHEN kategori='Penunjang' THEN total_nilai ELSE 0 END),3) penunjang,
ROUND(SUM(total_nilai),3) total
 FROM dupak a JOIN kamus_kegiatan b ON a.kegiatan_id=b.hid 
 JOIN dupak_penilai c ON a.hid=c.dupak_id
 WHERE pemohon_id='".$rw->hid."' AND penilai_id='$penilaiid'";
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
            <?php $this->load->view('sites/Footer'); ?>
        </div>
    </div>
    <script>
	$(function () {
		$("#btnkirim").on("click", function(e) {
		var hid = $(this).data("id");
		e.preventDefault();
		
		
		swal({
				title: 'Yakin akan SELESAIKAN PENILAIAN ?',
				text: "DUPAK yang sudah dinilai akan terbaca di daftar pleno.",
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
					url: "<?php echo base_url(); ?>penilai/finishdupak",
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
						}else window.location.href = "<?php echo base_url();?>penilai/ongoing";
					}
				})
				}
			});
	})
	})
	</script>

    </html>