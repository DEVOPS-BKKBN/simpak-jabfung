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
                                    <h4 class="card-title">Detil Pleno | <?php echo $rw->nama_pleno; ?></h4>
                                </div>

                                <div class="card-body">
                                    <ul class="nav nav-tabs profile-nav mb-4" id="profileTab" role="tablist">
										<li class="nav-item">
											<a class="nav-link<?php if ($tab=='') echo ' active show'; ?>" href="<?php echo base_url(); ?>penilaian/dtlpleno?hid=<?php echo $hid.'&tab='; ?>" role="tab"><i class="flaticon-check"></i> Daftar DUPAK</a>
										</li>
										<li class="nav-item">
											<a class="nav-link<?php if ($tab=='outstanding') echo ' active show'; ?>" href="<?php echo base_url(); ?>penilaian/dtlpleno?hid=<?php echo $hid; ?>&tab=outstanding" role="tab"><i class="flaticon-cross-1"></i> Outstanding DUPAK</a>
										</li>
									</ul>
									<div class="tab-content mt-2 mb-3" id="pills-with-icon-tabContent">
										<?php if ($tab==''){?>
										<div class="tab-pane fade active show" id="pills-home-icon" role="tabpanel" aria-labelledby="pills-home-tab-icon">
										<div class="col-md-12 mb-2">
											<button type="button" id="proses" class="btn btn-sm btn-primary waves-effect text-left">Proses</button>
										</div>
										<hr>
										<div class="table-responsive">
											<table id="datatable" class="display table table-striped dataTable">
												<thead>
													<tr>
														<th scope="col">
														<div class="form-check">
															<label class="form-check-label">
																<input class="form-check-input" type="checkbox" value="1" id="ckall">
																<span class="form-check-sign"></span>
															</label>
														</div>
														</th>
														<?php 
														for ($i=1;$i<=NUM_PENILAI;$i++){
															echo '<th>PENILAI '.$i.'</th>';
														}
														?>
														<th>NOMOR</th>
														<th>FOTO</th>
														<th>NAMA</th>
														<th>NIP</th>
														<th>PANGKAT/GOL</th>
														<th>TMT GOL</th>
														<th>JABATAN</th>
														<th>UNIT KERJA</th>
														<th>UNSUR UTAMA</th>
														<th>UNSUR PENUNJANG</th>
														<th>NILAI TOTAL</th>
														<?php
														for ($i=1;$i<=NUM_PENILAI;$i++){
															echo '<th>PAK PENILAI '.$i.'</th>';
														}
														?>
														<th>PAK FINAL</th>
														<th>STATUS</th>
													</tr>
												</thead>
												<tbody>
												<?php
													$n=0;
													$sql2="";
													
													$sql="SELECT a.*,DATE_FORMAT(a.tmtjab,'%d-%m-%Y') tmtjab,b.foto,c.namalengkap penilai,pl.hid hidpl,pl.status,CASE WHEN pl.status=1 THEN 'Sudah diproses' ELSE 'Belum diproses' END statuspleno
															FROM pemohon a JOIN users b ON a.nip=b.username
															JOIN pleno_lines pl ON a.hid=pl.pemohon_id
															LEFT JOIN penilai c ON a.penilai_id=c.hid WHERE md5(CONCAT('".TOKEN_DOP."',a.pleno_id))=".$this->db->escape($this->input->get('hid'));
													//echo $sql;
													$pangkat = $this->db->query($sql);
													foreach ($pangkat->result() as $rw2){
														
														$n++;
														echo '<tr>';
														echo '<td>';
														if ($rw2->status!=1) {
															echo '<div class="form-check"><label class="form-check-label"><input class="form-check-input ckdel" type="checkbox" value="'.$rw2->hidpl.'"><span class="form-check-sign"></span></label></div>';	
															echo '<a href="'.base_url().'penilaian/penilaianpleno?hid='.md5(TOKEN_DOP.$rw2->hid).'&phid='.$this->input->get('hid').'" class="mr-2" title="Penilaian Pleno"><i class="icon-note fa-2x"></i></a>';
													
														}
														echo '</td>';
														for ($i=1;$i<=NUM_PENILAI;$i++){
															$penilai=$this->ReferensiModel->LoadSQL("SELECT namalengkap judul FROM pemohon_penilai a JOIN penilai b ON a.penilai_id=b.hid WHERE a.pemohon_id='".$rw2->hid."' AND a.penilai_ke='$i'");
															echo '<td>'.$penilai.'</td>';
														}		
														echo '<td>'.$this->ReferensiModel->NomorDUPAK($rw2->hid).'</td>';
														echo '<td><img src="'.URL_FOTO_SIMSDM.$rw2->foto.'"  class="img-circle" width="60"></td>';
														echo '<td>'.$rw2->namalengkap.'</td>';
														echo '<td>'.$rw2->nip.'</td>';
														echo '<td>'.$rw2->pangkatgol.'</td>';
														echo '<td>'.date("d-m-Y",strtotime($rw2->tmtgol)).'</td>';
														echo '<td>'.$rw2->jabatan.'</td>';
														echo '<td>'.$rw2->unitkerja.'</td>';
														
														$npenunjang=$this->ProsesModel->NilaiTotalPAKKategori($rw2->hid,'Penunjang');
														$nutama=$this->ProsesModel->NilaiTotalPAKKategori($rw2->hid,'Utama');
														$npak=$this->ProsesModel->NilaiTotalPAK($rw2->hid);
														
														if ($npak>0) $psnp=$npenunjang/$npak; else $psnp=0;
														if ($npak>0) $psnu=$nutama/$npak; else $psnu=0;

														if ($psnu<0.8) echo '<td style="background-color:yellow;">'.$nutama.' (Nilai Unsur Utama kurang dari 80%)</td>';
															else echo '<td>'.$nutama.'</td>';
														if ($psnp>0.2) echo '<td style="background-color:red;color:white">'.$npenunjang.' (Nilai Unsur Penunjang melebihi 20%)</td>';
															else echo '<td>'.$npenunjang.'</td>';							
														if ($npak>17.5) echo '<td style="background-color:red;color:white">'.$npak.' (Nilai sudah melebihi 17,5. Mohon menjadi perhatian)</td>';
															else echo '<td>'.$npak.'</td>';

														for ($i=1;$i<=NUM_PENILAI;$i++){
															$penilaiid=$this->ReferensiModel->LoadSQL("SELECT b.hid judul FROM pemohon_penilai a JOIN penilai b ON a.penilai_id=b.hid WHERE a.pemohon_id='".$rw2->hid."' AND a.penilai_ke='$i'");
															$nilai=$this->ReferensiModel->LoadSQL("SELECT ROUND(SUM(total_nilai),3) judul FROM dupak a JOIN kamus_kegiatan b ON a.kegiatan_id=b.hid JOIN dupak_penilai c ON a.hid=c.dupak_id WHERE pemohon_id='".$rw2->hid."' AND penilai_id='$penilaiid'");
															echo '<td>'.$nilai.'</td>';
														}

														
														echo '<td>'.$this->ProsesModel->NilaiTotalPAKFinal($rw2->hid).'</td>';
														echo '<td>'.$rw2->statuspleno.'</td>';
														echo '</tr>';

													}

														
												?>
												</tbody>
											</table>
										</div>
										</div>
										<?php } ?>
										<?php if ($tab=='outstanding'){?>
										<div class="tab-pane fade active show" id="pills-home-icon" role="tabpanel" aria-labelledby="pills-home-tab-icon">
										<div class="col-md-12 mb-2">
											<button type="button" id="simpan" class="btn btn-sm btn-primary waves-effect text-left">Tambahkan ke Pleno</button>
										</div>
										<hr>
										<div class="table-responsive">
											<table id="datatable" class="display table table-striped dataTable">
												<thead>
													<tr>
														<th scope="col">
														<div class="form-check">
															<label class="form-check-label">
																<input class="form-check-input" type="checkbox" value="1" id="ckall">
																<span class="form-check-sign"></span>
															</label>
														</div>
														</th>
														<?php 
														for ($i=1;$i<=NUM_PENILAI;$i++){
															echo '<th>PENILAI '.$i.'</th>';
														}
														?>
														<th>NOMOR</th>
														<th>FOTO</th>
														<th>NAMA</th>
														<th>NIP</th>
														<th>PANGKAT/GOL</th>
														<th>TMT GOL</th>
														<th>JABATAN</th>
														<th>UNIT KERJA</th>
														<th>UNSUR UTAMA</th>
														<th>UNSUR PENUNJANG</th>
														<th>NILAI TOTAL</th>
														<?php
														for ($i=1;$i<=NUM_PENILAI;$i++){
															echo '<th>PAK PENILAI '.$i.'</th>';
														}
														?>
													</tr>
												</thead>
												<tbody>
												<?php
													$n=0;
													$sql2="";
													
													$sql="SELECT a.*,DATE_FORMAT(a.tmtjab,'%d-%m-%Y') tmtjab,b.foto,c.namalengkap penilai
															FROM pemohon a JOIN users b ON a.nip=b.username
															LEFT JOIN penilai c ON a.penilai_id=c.hid WHERE a.status='4' AND pleno_date IS NULL";
													//echo $sql;
													$pangkat = $this->db->query($sql);
													foreach ($pangkat->result() as $rw2){
														
														$n++;
														echo '<tr>';
														echo '<td>';
														if ($rw2->status=='4') echo '<div class="form-check"><label class="form-check-label"><input class="form-check-input ckdel" type="checkbox" value="'.$rw2->hid.'"><span class="form-check-sign"></span></label></div>';
														echo '</td>';	
														for ($i=1;$i<=NUM_PENILAI;$i++){
															$penilai=$this->ReferensiModel->LoadSQL("SELECT namalengkap judul FROM pemohon_penilai a JOIN penilai b ON a.penilai_id=b.hid WHERE a.pemohon_id='".$rw2->hid."' AND a.penilai_ke='$i'");
															echo '<td>'.$penilai.'</td>';
														}	
														echo '<td>'.$this->ReferensiModel->NomorDUPAK($rw2->hid).'</td>';
														echo '<td><img src="'.URL_FOTO_SIMSDM.$rw2->foto.'"  class="img-circle" width="60"></td>';
														echo '<td>'.$rw2->namalengkap.'</td>';
														echo '<td>'.$rw2->nip.'</td>';
														echo '<td>'.$rw2->pangkatgol.'</td>';
														echo '<td>'.date("d-m-Y",strtotime($rw2->tmtgol)).'</td>';
														echo '<td>'.$rw2->jabatan.'</td>';
														echo '<td>'.$rw2->unitkerja.'</td>';
														
														$npenunjang=$this->ProsesModel->NilaiTotalPAKKategori($rw2->hid,'Penunjang');
														$nutama=$this->ProsesModel->NilaiTotalPAKKategori($rw2->hid,'Utama');
														$npak=$this->ProsesModel->NilaiTotalPAK($rw2->hid);
														
														if ($npak>0) $psnp=$npenunjang/$npak; else $psnp=0;
														if ($npak>0) $psnu=$nutama/$npak; else $psnu=0;

														if ($psnu<0.8) echo '<td style="background-color:yellow;">'.$nutama.' (Nilai Unsur Utama kurang dari 80%)</td>';
															else echo '<td>'.$nutama.'</td>';
														if ($psnp>0.2) echo '<td style="background-color:red;color:white">'.$npenunjang.' (Nilai Unsur Penunjang melebihi 20%)</td>';
															else echo '<td>'.$npenunjang.'</td>';							
														if ($npak>17.5) echo '<td style="background-color:red;color:white">'.$npak.' (Nilai sudah melebihi 17,5. Mohon menjadi perhatian)</td>';
															else echo '<td>'.$npak.'</td>';

														for ($i=1;$i<=NUM_PENILAI;$i++){
															$penilaiid=$this->ReferensiModel->LoadSQL("SELECT b.hid judul FROM pemohon_penilai a JOIN penilai b ON a.penilai_id=b.hid WHERE a.pemohon_id='".$rw2->hid."' AND a.penilai_ke='$i'");
															$nilai=$this->ReferensiModel->LoadSQL("SELECT ROUND(SUM(total_nilai),3) judul FROM dupak a JOIN kamus_kegiatan b ON a.kegiatan_id=b.hid JOIN dupak_penilai c ON a.hid=c.dupak_id WHERE pemohon_id='".$rw2->hid."' AND penilai_id='$penilaiid'");
															echo '<td>'.$nilai.'</td>';
														}
														//echo '<td>'.$this->ProsesModel->NilaiTotalPAKFinal($rw2->hid).'</td>';
														echo '</tr>';

													}

														
												?>
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
         $('#ckall').on('click', function() {
			// Get all rows with search applied
			var rows = table.rows({
				'search': 'applied'
			}).nodes();
			// Check/uncheck checkboxes for all rows in the table
			$('input[type="checkbox"]', rows).prop('checked', this.checked);
		});
		$("#simpan").click(function() {
		
			ids = new Array();
			a = 0;
			$("input.ckdel:checked").each(function() {
				ids[a] = $(this).val();
				a++;
			})
			if (a < 1) {
				swal({
					type: 'error',
					title: 'Error!',
					text: 'Tidak ada data yang dipilih !',
					confirmButtonText: 'Tutup',
					buttonsStyling: false,
					confirmButtonClass: 'btn btn-lg btn-danger'
				})
				return false;
			}
			
			swal({
				title: 'Yakin tambahkan ke Pleno ini ?',
				text: "",
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
			}).then((result) => {
				if (result) {
					$('#preloader-active').show();
					$.ajax({
						url: "<?php echo base_url(); ?>penilaian/addto_pleno",
						data: "ids=" + ids+"&plenoid=<?php echo $rw->hid; ?>",
						cache: false,
						method: 'post',
						success: function(data) {
							//alert(data);
							location.reload();
						}
					})
				}
			})

		})
		$("#proses").click(function() {
		
			ids = new Array();
			a = 0;
			$("input.ckdel:checked").each(function() {
				ids[a] = $(this).val();
				a++;
			})
			if (a < 1) {
				swal({
					type: 'error',
					title: 'Error!',
					text: 'Tidak ada data yang dipilih !',
					confirmButtonText: 'Tutup',
					buttonsStyling: false,
					confirmButtonClass: 'btn btn-lg btn-danger'
				})
				return false;
			}
			
			swal({
				title: 'Yakin proses ?',
				text: "Data akan di tandai sudah di proses dan akan muncul di proses tanda tangan.",
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
			}).then((result) => {
				if (result) {
					$('#preloader-active').show();
					$.ajax({
						url: "<?php echo base_url(); ?>penilaian/proses_pleno",
						data: "ids=" + ids+"&plenoid=<?php echo $rw->hid; ?>",
						cache: false,
						method: 'post',
						success: function(data) {
							//alert(data);
							location.reload();
						}
					})
				}
			})

		})
		var table = $('#datatable').DataTable({
			"order": [], //Initial no order.
			//Set column definition initialisation properties.
			'columnDefs': [{
				'targets': 5,
				'searchable': false,
				'orderable': false
			}],
			"pageLength": 50

		});
    </script>

    </html>