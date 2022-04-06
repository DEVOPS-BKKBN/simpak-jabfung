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
																<td width="20%">Kabupaten/Kota</td>
                                                <td width="50%"><?php echo $rw->kabkota; ?></td>
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
														echo '<a href="'.base_url().'user/modal?action=viewdokumenpribadi&hid='.$rw2->hid.'&phid='.$phid.'" class="ls-modal">'.$rw3->file_name.'</a>';
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
								// cari data tersimpan
									$sql="SELECT kegiatan_id,ak_lama,ak_baru,ROUND(total_ak,3) ttl FROM dupak WHERE pemohon_id='".$rw->hid."'";
									$cn2 = $this->db->query($sql);
									foreach ($cn2->result() as $rw2){
										$alama[$rw2->kegiatan_id]=$rw2->ak_lama;
										$abaru[$rw2->kegiatan_id]=$rw2->ak_baru;
										$atotal[$rw2->kegiatan_id]=$rw2->ttl;
									}
								?>
								<div class="tab-pane p-20 active" id="tabtask" role="tabpanel">
									<div class="table-responsive">
										 <form id="form1" name="form1" action="<?php echo base_url(); ?>user/simpandupak" method="post">
										 <?php if ($status==1){ ?><button type="button" class="btn waves-effect waves-light btn-info btn-sm mb-4" id="btnkirim" data-id="<?php echo $rw->hid; ?>">KIRIM KE ADMIN SEKRETARIAT</button><?php } ?>
										 <?php if ($status==1){ ?>
										  <button type="submit" class="btn waves-effect waves-light btn-sm btn-primary mb-4">SIMPAN</button>
										 <?php } ?>
										 <input type="hidden" name="hid" value="<?php echo $rw->hid; ?>"/>
										 <input type="hidden" name="kdjab" value="<?php echo $rw->kdjab; ?>"/>
										 <table class="table table-striped table-bordered">
												<thead>
													<tr>
														<th>NO</th><th>URAIAN KEGIATAN</th><th>LAMA</th><th>BARU</th><th>TOTAL</th><th>DOKUMEN FISIK</th>
													</tr>
												</thead>
												<tbody>
												<tr>
													<th colspan="6">UNSUR UTAMA</th>
												</tr>
												<?php
													$sql="SELECT a.* FROM kamus_kegiatan a JOIN kelompok b ON a.kelompok_id=b.hid 
WHERE b.hid IN(SELECT kelompok_id FROM kelompok_lines a JOIN jabatan b ON a.jabatan_id=b.hid WHERE kode_jab='".$rw->kdjab."') AND kategori='Utama' ORDER BY a.hid";
													//echo $sql;
													
													$n=0;
													$query=$this->db->query($sql);
													foreach ($query->result() as $rw2){
														$n++;
														echo '<tr>';
														echo '<td>'.$n.'</td>';
														echo '<td>'.$rw2->uraian_kegiatan.'</td>';
														if (!empty($alama[$rw2->hid])) $lama=$alama[$rw2->hid]; else $lama="";
														if (!empty($abaru[$rw2->hid])) $baru=$abaru[$rw2->hid]; else $baru="";
														if (!empty($atotal[$rw2->hid])) $total=$atotal[$rw2->hid]; else $total="";
														
														
														echo '<td><input type="text" class="form-control number" value="'.$lama.'" name="lama'.$rw2->hid.'"/></td>';
														echo '<td><input type="text" class="form-control number" value="'.$baru.'" name="baru'.$rw2->hid.'"/></td>';
														echo '<td><input type="text" class="form-control" readonly value="'.$total.'" name="total'.$rw2->hid.'"/></td>';
														echo '<td><ul class="list-group list-group-full">';
																	$sql="SELECT * FROM dokumen  WHERE pemohon_hid='".$rw->hid."' AND dupak_hid='".$rw2->hid."' AND jenis='pak'";
																	//echo $sql;
																	$cn4 = $this->db->query($sql);
																	$rw4=$cn4->row();
																	//var_dump($rw4);
																	
																	if (!empty($rw4->file_name)) echo '<a href="'.base_url().'user/modal?action=viewdokumen&hid='.$rw4->hid.'&phid='.$phid.'" class="ls-modal"><span class="badge badge-info badge-pill"><i class="ti-zoom-in text"></i> LIHAT</span></a>';
																	if ($status==1) echo '<a href="" class="dokumen" data-hid="'.$rw2->hid.'"><span class="badge badge-primary badge-pill"><i class="ti-export text" aria-hidden="true"></i> UPLOAD</span></a></li>';
																	
																	echo '</ul></td>';
														echo '</tr>';
													}
												?>
												<tr>
													<th colspan="6">UNSUR PENUNJANG</th>
												</tr>
												<?php
													$sql="SELECT a.* FROM kamus_kegiatan a JOIN kelompok b ON a.kelompok_id=b.hid 
WHERE b.hid IN(SELECT kelompok_id FROM kelompok_lines a JOIN jabatan b ON a.jabatan_id=b.hid WHERE kode_jab='".$rw->kdjab."') AND kategori='Penunjang' ORDER BY a.hid";
													//echo $sql;
													
													$n=0;
													$query=$this->db->query($sql);
													foreach ($query->result() as $rw2){
														$n++;
														echo '<tr>';
														echo '<td>'.$n.'</td>';
														echo '<td>'.$rw2->uraian_kegiatan.'</td>';
														if (!empty($alama[$rw2->hid])) $lama=$alama[$rw2->hid]; else $lama="";
														if (!empty($abaru[$rw2->hid])) $baru=$abaru[$rw2->hid]; else $baru="";
														if (!empty($atotal[$rw2->hid])) $total=$atotal[$rw2->hid]; else $total="";
														
														
														echo '<td><input type="text" class="form-control number" value="'.$lama.'" name="lama'.$rw2->hid.'"/></td>';
														echo '<td><input type="text" class="form-control number" value="'.$baru.'" name="baru'.$rw2->hid.'"/></td>';
														echo '<td><input type="text" class="form-control" readonly value="'.$total.'" name="total'.$rw2->hid.'"/></td>';
														echo '<td><ul class="list-group list-group-full">';
																	$sql="SELECT * FROM dokumen  WHERE pemohon_hid='".$rw->hid."' AND dupak_hid='".$rw2->hid."' AND jenis='pak'";
																	//echo $sql;
																	$cn4 = $this->db->query($sql);
																	$rw4=$cn4->row();
																	//var_dump($rw4);
																	
																	if (!empty($rw4->file_name)) echo '<a href="'.base_url().'user/modal?action=viewdokumen&hid='.$rw4->hid.'&phid='.$phid.'" class="ls-modal"><span class="badge badge-info badge-pill"><i class="ti-zoom-in text"></i> LIHAT</span></a>';
																	if ($status==1) echo '<a href="" class="dokumen" data-hid="'.$rw2->hid.'"><span class="badge badge-primary badge-pill"><i class="ti-export text" aria-hidden="true"></i> UPLOAD</span></a></li>';
																	
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
						$('.preloader').hide();
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
		$('#largeModal').modal('show').find('.modal-content').html('<div class="spinner-border text-info m-t-10 m-b-10 m-l-10" role="status"><span class="sr-only">Loading...</span></div>').load('<?php echo base_url(); ?>user/modal?action=dokumen&phid=<?php echo $phid; ?>&hid='+hid+"&dokid="+dokid);
	})
	$(".dokumenpribadi").on("click", function(e) {
		var dokumen = $(this).data("dokumen");
		//console.log('id',dokumen);
		$('#largeModal').modal('show').find('.modal-content').html('<div class="spinner-border text-info m-t-10 m-b-10 m-l-10" role="status"><span class="sr-only">Loading...</span></div>').load('<?php echo base_url(); ?>user/modal?action=dokumenpribadi&phid=<?php echo $phid; ?>&dokumen='+dokumen);
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

	$(".del").on("click",function(e){var hid=$(this).data("hid");var phid=$(this).data("phid");e.preventDefault();Swal.fire({title:'Yakin akan menghapus ?',text:"Data yang dihapus tidak bisa dikembalikan lagi.",type:'warning',showCancelButton:true,confirmButtonColor:'#3085d6',cancelButtonColor:'#FF586B',confirmButtonText:'Ya, hapus saja.',cancelButtonText:'Batal',confirmButtonClass:'btn btn-success mr-5',cancelButtonClass:'btn btn-danger',buttonsStyling:true,reverseButtons:true,}).then((result)=>{if(result.value){$('.preloader').show();$.ajax({url:"<?php echo base_url(); ?>proses/del_dokumen",data:"hid="+hid+"&phid="+phid,cache:false,method:'post',success:function(data){location.reload();}})}})})
	$(".delpribadi").on("click",function(e){
		var hid=$(this).data("hid");
		var phid=$(this).data("phid");
		e.preventDefault();
		//Swal({title:'Yakin akan menghapus ?',text:"Data yang dihapus tidak bisa dikembalikan lagi.",type:'warning',showCancelButton:true,confirmButtonColor:'#3085d6',cancelButtonColor:'#FF586B',confirmButtonText:'Ya, hapus saja.',cancelButtonText:'Batal',confirmButtonClass:'btn btn-success mr-5',cancelButtonClass:'btn btn-danger',buttonsStyling:true,reverseButtons:true,}).then((result)=>{if(result.value){$('.preloader').show();$.ajax({url:"<?php echo base_url(); ?>proses/del_dokumenpribadi",data:"hid="+hid+"&phid="+phid,cache:false,method:'post',success:function(data){location.reload();}})}})
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