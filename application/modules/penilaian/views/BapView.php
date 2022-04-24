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
                                    <h4 class="card-title">Berita Acara Penandatanganan</h4>
                                </div>

                                <div class="card-body">
									<form action="<?php echo base_url(); ?>penilaian/bap" method="GET">
									<input type="hidden" name="tab" value="<?php echo $this->input->get('tab'); ?>"/>
									<div class="row">                        
										<div class="col-md-5">
											<div class="form-group">
												<label for="defaultSelect">Periode</label>
												<?php

												$sql = "SELECT hid kode,namaperiode nilai FROM periode";
												echo $this->ReferensiModel->LoadListMaster($sql, 'periode', $this->input->get('periode'), 'class="form-control" onchange="this.form.submit()"');
												?>
											</div>
										</div>
										
									</div>
								</form>
								
                                    <ul class="nav nav-tabs profile-nav mb-4" id="profileTab" role="tablist">
										<li class="nav-item">
											<a class="nav-link<?php if ($tab=='') echo ' active show'; ?>" href="<?php echo base_url(); ?>penilaian/bap?hid=<?php echo $hid.'&tab=&periode='.$periode; ?>" role="tab"><i class="fas fa-file-download"></i> Daftar DUPAK</a>
										</li>
										<li class="nav-item">
											<a class="nav-link<?php if ($tab=='outstanding') echo ' active show'; ?>" href="<?php echo base_url(); ?>penilaian/bap?hid=<?php echo $hid; ?>&tab=outstanding&periode=<?php echo $periode; ?>" role="tab"><i class="fas fa-file-signature"></i> Outstanding DUPAK</a>
										</li>
									</ul>
									<div class="tab-content mt-2 mb-3" id="pills-with-icon-tabContent">
										<?php if ($tab==''){?>
										<div class="tab-pane fade active show" id="pills-home-icon" role="tabpanel" aria-labelledby="pills-home-tab-icon">
										
										<div class="table-responsive">
											<table id="datatable" class="display table table-striped dataTable">
												<thead>
													<tr>
														<th scope="col">NO
														</th>
														<th>AKSI</th>
														<th>NOMOR</th>
														<th>NO BAP</th>
														<th>TGL BAP</th>
														<th>TGL SURAT</th>
														<th>PENILAI</th>
														<th>FOTO</th>
														<th>NAMA</th>
														<th>NIP</th>
														<th>PANGKAT/GOL</th>
														<th>TMT GOL</th>
														<th>JABATAN</th>
														<th>UNIT KERJA</th>
														<th>TOTAL PAK</th>
													</tr>
												</thead>
												<tbody>
												<?php
													$n=0;
													$sql2="";
													if ($periode!="") $sql2=" AND a.periode_hid=".$this->db->escape($periode);
													$sql="SELECT a.*,
															DATE_FORMAT(a.tgl_bap,'%d-%m-%Y') tglbap,DATE_FORMAT(a.tgl_surat,'%d-%m-%Y') tglsurat,DATE_FORMAT(a.tmtjab,'%d-%m-%Y') tmtjab,
															DATE_FORMAT(a.tmtjab,'%d-%m-%Y') tmtjab,b.foto,c.namalengkap penilai,pl.hid hidpl,pl.status,CASE WHEN pl.status=1 THEN 'Sudah diproses' ELSE 'Belum diproses' END statuspleno
															FROM pemohon a JOIN users b ON a.nip=b.username
															JOIN pleno_lines pl ON a.hid=pl.pemohon_id
															LEFT JOIN penilai c ON a.penilai_id=c.hid WHERE a.status='6' $sql2";
													//echo $sql;
													$pangkat = $this->db->query($sql);
													foreach ($pangkat->result() as $rw2){
														
														$n++;
														echo '<tr>';
														echo '<td>'.$n.'</td>';
														echo '<td>';
														echo '<a href="'.base_url().'penilaian/cetakpak?hid='.md5(TOKEN_DOP.$rw2->hid).'" title="Download" target="_blank"><i class="icon-cloud-download fa-2x"></a>';
													
														echo '</td>';															
														echo '<td>'.$this->ReferensiModel->NomorDUPAK($rw2->hid).'</td>';														
														echo '<td>'.$rw2->no_bap.'</td>';															
														echo '<td>'.$rw2->tglbap.'</td>';															
														echo '<td>'.$rw2->tglsurat.'</td>';	
														echo '<td>'.$rw2->penilai.'</td>';	
														echo '<td><img src="'.URL_FOTO_SIMSDM.$rw2->foto.'"  class="img-circle" width="60"></td>';
														echo '<td>'.$rw2->namalengkap.'</td>';
														echo '<td>'.$rw2->nip.'</td>';
														echo '<td>'.$rw2->pangkatgol.'</td>';
														echo '<td>'.date("d-m-Y",strtotime($rw2->tmtgol)).'</td>';
														echo '<td>'.$rw2->jabatan.'</td>';
														echo '<td>'.$rw2->unitkerja.'</td>';
														echo '<td>'.$this->ProsesModel->NilaiTotalPAKFinal($rw2->hid).'</td>';
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
										<div class="row">
													<div class="col-md-3 group">
														<div class="form-group form-group-default">
															<label>Tanggl BAP</label>
															<input type="text" name="tgl1" id="tgl1" class="form-control datepicker" value="" required> 
														</div>
													</div>	
													<div class="col-md-3 group">
														<div class="form-group form-group-default">
															<label>Tanggl Surat</label>
															<input type="text" name="tgl2" id="tgl2" class="form-control datepicker" value="" required> 
														</div>
													</div>	
													<div class="col-md-4 group">
														<div class="form-group form-group-default">
															<label>No BAP</label>
															<input type="text" name="nomor" id="nomor" class="form-control" value="" required> 
														</div>
													</div>
													<div class="col-md-6 group">
														<div class="form-group form-group-default">
															<label>Notes BAP</label>
															<textarea name="ket" id="ket" class="form-control"></textarea>
														</div>
													</div>
													
												</div>
										<div class="col-md-12 mb-2">
											
											<button type="button" id="simpan" class="btn btn-sm btn-primary waves-effect text-left">Simpan BAP</button>
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
														<th>NOMOR</th>
														<th>FOTO</th>
														<th>NAMA</th>
														<th>NIP</th>
														<th>PANGKAT/GOL</th>
														<th>TMT GOL</th>
														<th>JABATAN</th>
														<th>UNIT KERJA</th>
														<th>TOTAL PAK</th>
													</tr>
												</thead>
												<tbody>
												<?php
													$n=0;
													$sql2="";
													if ($periode!="") $sql2=" AND a.periode_hid=".$this->db->escape($periode);													
													
													$sql="SELECT a.*,DATE_FORMAT(a.tmtjab,'%d-%m-%Y') tmtjab,b.foto,c.namalengkap penilai
															FROM pemohon a JOIN users b ON a.nip=b.username JOIN pleno_lines pl ON a.hid=pl.pemohon_id
															LEFT JOIN penilai c ON a.penilai_id=c.hid 
															WHERE a.status='5' AND pl.status='1' $sql2";
													//echo $sql;
													$pangkat = $this->db->query($sql);
													foreach ($pangkat->result() as $rw2){
														
														$n++;
														echo '<tr>';
														echo '<td><div class="form-check"><label class="form-check-label"><input class="form-check-input ckdel" type="checkbox" value="'.$rw2->hid.'"><span class="form-check-sign"></span></label></div></td>';	
														//echo '<td>'.$rw2->penilai.'</td>';		
														echo '<td>'.$this->ReferensiModel->NomorDUPAK($rw2->hid).'</td>';
														echo '<td><img src="'.URL_FOTO_SIMSDM.$rw2->foto.'"  class="img-circle" width="60"></td>';
														echo '<td>'.$rw2->namalengkap.'</td>';
														echo '<td>'.$rw2->nip.'</td>';
														echo '<td>'.$rw2->pangkatgol.'</td>';
														echo '<td>'.date("d-m-Y",strtotime($rw2->tmtgol)).'</td>';
														echo '<td>'.$rw2->jabatan.'</td>';
														echo '<td>'.$rw2->unitkerja.'</td>';
														echo '<td>'.$this->ProsesModel->NilaiTotalPAKFinal($rw2->hid).'</td>';
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
		$('.datepicker').datetimepicker({
            format: 'DD-MM-YYYY',
        });
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
			if ($('#tgl1').val()=='') {
				swal({
					type: 'error',
					title: 'Error!',
					text: 'Tgl BAP kosong.',
					confirmButtonText: 'Tutup',
					buttonsStyling: false,
					confirmButtonClass: 'btn btn-lg btn-danger'
				})
				return false;
			}
			if ($('#tgl2').val()=='') {
				swal({
					type: 'error',
					title: 'Error!',
					text: 'Tgl Surat kosong.',
					confirmButtonText: 'Tutup',
					buttonsStyling: false,
					confirmButtonClass: 'btn btn-lg btn-danger'
				})
				return false;
			}
			if ($('#nomor').val()=='') {
				swal({
					type: 'error',
					title: 'Error!',
					text: 'Nomor BAP kosong.',
					confirmButtonText: 'Tutup',
					buttonsStyling: false,
					confirmButtonClass: 'btn btn-lg btn-danger'
				})
				return false;
			}
			
			swal({
				title: 'Yakin simpan ?',
				text: "Data yang sudah di simpan BAP nya bisa dicetak.",
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
						url: "<?php echo base_url(); ?>penilaian/simpanbap",
						data: "ids=" + ids+"&tgl1="+$('#tgl1').val()+"&tgl2="+$('#tgl2').val()+"&nomor="+$('#nomor').val()+"&ket="+$('#ket').val(),
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