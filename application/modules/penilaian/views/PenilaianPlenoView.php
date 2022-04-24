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
                                    <div class="card-title"><a href="<?php echo base_url(); ?>penilaian/dtlpleno?hid=<?php echo $this->input->get('phid'); ?>&action=pleno"> <i class="icon-arrow-left"></i></a>Form Penilaian | <?php echo $rw->namalengkap; ?></div>
                                   
                                </div>

                                <div class="card-body">
                                    <ul class="nav nav-tabs profile-nav mb-4" id="profileTab" role="tablist">
										<li class="nav-item">
											<a class="nav-link<?php if ($tab=='') echo ' active show'; ?>" href="<?php echo base_url(); ?>penilaian/penilaianpleno?hid=<?php echo $hid.'&tab='; ?>&phid=<?php echo $this->input->get('phid'); ?>" role="tab"><i class="flaticon-profile"></i> Data Personal</a>
										</li>
										<li class="nav-item">
											<a class="nav-link<?php if ($tab=='penilaian') echo ' active show'; ?>" href="<?php echo base_url(); ?>penilaian/penilaianpleno?hid=<?php echo $hid; ?>&phid=<?php echo $this->input->get('phid'); ?>&tab=penilaian" role="tab"><i class="flaticon-calendar"></i> Penilaian</a>
										</li>
									</ul>
										
									<div class="tab-content mt-2 mb-3" id="pills-with-icon-tabContent">
										<?php if ($tab==''){?>
											<div class="tab-pane fade active show" id="pills-home-icon" role="tabpanel" aria-labelledby="pills-home-tab-icon">
												<div class="table-responsive">
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
																	
																</tbody>
															</table>
														</div>
												</div>
										<?php } ?>
										<?php if ($this->input->get('tab')=='penilaian'){		
										
										?>
										<div class="tab-pane p-20 active" id="tabtask" role="tabpanel">
											<div class="table-responsive">
												 <form id="form1" name="form1" action="<?php echo base_url(); ?>user/simpannilaipleno" method="post">
												 <input type="hidden" name="hid" value="<?php echo $rw->hid; ?>"/>
												 <input type="hidden" name="kdjab" value="<?php echo $rw->kdjab; ?>"/>
												 <table class="table table-striped table-bordered">
														<thead>
															<tr>
																<th>NO</th><th>BUTIR KEGIATAN</th><th>OUTPUT</th><th>ANGKA KREDIT</th><th>JUMLAH</th><th>TOTAL</th>
																<?php
																	for ($i=1;$i<=NUM_PENILAI;$i++){
																		echo '<th>PENILAI '.$i.'</th>';
																	}
																	?>
																<th style="width:150px">NILAI FINAL</th>
															</tr>
														</thead>
														<tbody>												
															<tr><th colspan="9">A. KEGIATAN UTAMA</th></tr>
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
																	for ($i=1;$i<=NUM_PENILAI;$i++){
																		$penilaiid=$this->ReferensiModel->LoadSQL("SELECT b.hid judul FROM pemohon_penilai a JOIN penilai b ON a.penilai_id=b.hid WHERE a.pemohon_id='".$rw->hid."' AND a.penilai_ke='$i'");
																		$nilai=$this->ReferensiModel->LoadSQL("SELECT total_nilai judul FROM dupak_penilai WHERE dupak_id='".$rw2->hid."' AND penilai_id='$penilaiid'");
																		echo '<td>'.$nilai.'</td>';
																	}	
																	
																	echo '<td><input type="text" class="form-control number nilaipleno" data-hid="'.$rw2->hid.'" name="nilai'.$rw2->hid.'" value="'.$rw2->total_ak_penilai.'"/></td>';
																	echo '</tr>';
																}
																
															?>
															<tr><th colspan="9">B. KEGIATAN PENUNJANG</th></tr>
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
																	for ($i=1;$i<=NUM_PENILAI;$i++){
																		$penilaiid=$this->ReferensiModel->LoadSQL("SELECT b.hid judul FROM pemohon_penilai a JOIN penilai b ON a.penilai_id=b.hid WHERE a.pemohon_id='".$rw->hid."' AND a.penilai_ke='$i'");
																		$nilai=$this->ReferensiModel->LoadSQL("SELECT total_nilai judul FROM dupak_penilai WHERE dupak_id='".$rw2->hid."' AND penilai_id='$penilaiid'");
																		echo '<td>'.$nilai.'</td>';
																	}	
																	
																	echo '<td><input type="text" class="form-control number nilaipleno" data-hid="'.$rw2->hid.'" name="nilai'.$rw2->hid.'" value="'.$rw2->total_ak_penilai.'"/></td>';
																	echo '</tr>';
																}
																
															?>
														</tbody>
												 </table>
												 </form>
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
		$(".number").keydown(function(event){
			if (event.shiftKey == true) {
				event.preventDefault();
			}

			if ((event.keyCode >= 48 && event.keyCode <= 57) || 
				(event.keyCode >= 96 && event.keyCode <= 105) || 
				event.keyCode == 8 || event.keyCode == 9 || event.keyCode == 37 ||
				event.keyCode == 39 || event.keyCode == 46 || event.keyCode == 190 || event.keyCode == 110) {

			} else {
				event.preventDefault();
			}

			if($(this).val().indexOf('.') !== -1 && event.keyCode == 190)
				event.preventDefault(); 
			//if a decimal has been added, disable the "."-button
		})
		$(".nilaipleno").keyup(function(event){
			var hid = $(this).data("hid");
			//console.log(hid+':'+$(this).val());
			$.ajax({
				url: "<?php echo base_url(); ?>penilaian/nilaipleno",
				data: 'hid='+hid+'&value='+$(this).val(),
				method: 'post',
				cache: false,
				success: function(data) {
												
					Toastify({
					text: "Berhasil disimpan.",
					duration: 3000
					}).showToast();

				}
			})
		})
	})
	</script>

    </html>