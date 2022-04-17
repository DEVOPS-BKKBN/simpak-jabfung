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
					<?php if ($this->session->userdata('leveluser')==1 || $this->session->userdata('leveluser')==2) {?>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title"><a href="<?php echo base_url(); ?>penilaian/distribusi"><i class="icon-arrow-left"></i></a> <?php echo $this->ReferensiModel->LoadSQL("SELECT namaperiode judul FROM periode WHERE md5(CONCAT('".TOKEN_DOP."',hid))='".$this->input->get('phid')."'"); ?></h4>
									<div class="card-category"><?php echo $subtitle[$this->input->get('jenis')]; ?></div>
									<div class="d-flex align-items-left align-items-md-center flex-column flex-md-row">
										<div class="ml-md-auto py-2 py-md-0">
											<button type="button" id="xls" class="btn btn-secondary btn-round btn-sm"><i class="icon-cloud-download"></i> Download</button>
											
										</div>
									</div>
								</div>
								
                                <div class="card-body">
									<?php if ($this->input->get('jenis')=='belum' || $this->input->get('jenis')=='ada') { ?>
									<div class="row">
										<div class="col-12">
											<div class="form-group">
												<label>Pilih Penilai</label>
												<?php
													$sql="SELECT hid kode,CONCAT(namalengkap,' - ',jabatan) nilai FROM penilai";
													echo $this->ReferensiModel->LoadListMaster($sql,'penilai','','class="form-control custom-select" required','');
												?>
											</div>
										</div>
										<div class="col-md-12">
											<button type="button" id="simpan" class="btn btn-sm btn-primary waves-effect text-left">Simpan Penilai</button>
										</div>
									</div>
									<hr>
									<?php } ?>
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
													<th>PENILAI</th>
													<th>NOMOR</th>
													<th>FOTO</th>
													<th>NAMA</th>
													<th>NIP</th>
													<th>PANGKAT/GOL</th>
													<th>TMT GOL</th>
													<th>JABATAN</th>
													<th>UNIT KERJA</th>
													<th>STATUS</th>
												</tr>
                                            </thead>
                                            <tbody>
                                            <?php
												$n=0;
												$sql2="";
												
												if ($this->input->get('jenis')=='peserta') $sql2.=" AND a.status IN(2,3,4,5)";
												if ($this->input->get('jenis')=='belum') $sql2.=" AND a.status IN(2,3,4,5) AND penilai_id IS NULL";
												if ($this->input->get('jenis')=='ada') $sql2.=" AND a.status IN(2,3,4,5) AND penilai_id IS NOT NULL";
												if ($this->input->get('jenis')=='blmdinilai') $sql2.=" AND a.status IN(2,3,4,5) AND penilai_id IS NOT NULL AND penilaiandate IS NULL";
												if ($this->input->get('jenis')=='sdhdinilai') $sql2.=" AND a.status IN(2,3,4,5) AND penilai_id IS NOT NULL AND penilaiandate IS NOT NULL";
												if ($this->input->get('jenis')=='selesai') $sql2.=" AND a.status IN(5)";
												
												$sql="SELECT a.*,DATE_FORMAT(a.tmtjab,'%d-%m-%Y') tmtjab,b.foto,c.namalengkap penilai
														FROM pemohon a JOIN users b ON a.nip=b.username
														LEFT JOIN penilai c ON a.penilai_id=c.hid WHERE md5(CONCAT('".TOKEN_DOP."',periode_hid))='".$this->input->get('phid')."' $sql2";
												//echo $sql;
												$pangkat = $this->db->query($sql);
												foreach ($pangkat->result() as $rw){
													
													$n++;
													echo '<tr>';
													echo '<td><div class="form-check"><label class="form-check-label"><input class="form-check-input ckdel" type="checkbox" value="'.$rw->hid.'"><span class="form-check-sign"></span></label></div></td>';	
													echo '<td>'.$rw->penilai.'</td>';		
													echo '<td>'.$this->ReferensiModel->NomorDUPAK($rw->hid).'</td>';
													echo '<td><img src="'.URL_FOTO_SIMSDM.$rw->foto.'"  class="img-circle" width="60"></td>';
													echo '<td>'.$rw->namalengkap.'</td>';
													echo '<td>'.$rw->nip.'</td>';
													echo '<td>'.$rw->pangkatgol.'</td>';
													echo '<td>'.date("d-m-Y",strtotime($rw->tmtgol)).'</td>';
													echo '<td>'.$rw->jabatan.'</td>';
													echo '<td>'.$rw->unitkerja.'</td>';
													echo '<td>'.$this->ReferensiModel->StatusDupak($rw->status).'</td>';
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
					<?php } ?>
                </div>
            </div>
            <?php $this->load->view('sites/Footer'); ?>
        </div>
    </div>
    <script>
        $('#penilai').select2();
		$("#xls").click(function() {
		//console.log('download');
			window.open("<?php echo base_url();?>penilaian/xlsdistribusi?phid=<?php echo $this->input->get('phid'); ?>&status=<?php echo $this->input->get('status'); ?>&jenis=<?php echo $this->input->get('jenis'); ?>"); 
		
		})
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
			if ($('#penilai').val()==''){
				swal({
					type: 'error',
					title: 'Error!',
					text: 'Penilai kosong !',
					confirmButtonText: 'Tutup',
					buttonsStyling: false,
					confirmButtonClass: 'btn btn-lg btn-danger'
				})
				return false;
			}
			swal({
				title: 'Yakin simpan penilai ?',
				text: "",
				type: 'warning',
				showCancelButton: true,
				confirmButtonColor: '#3085d6',
				cancelButtonColor: '#FF586B',
				confirmButtonText: 'Ya',
				cancelButtonText: 'Batal',
				confirmButtonClass: 'btn btn-success mr-5',
				cancelButtonClass: 'btn btn-danger',
				buttonsStyling: true,
				reverseButtons: true,
			}).then((result) => {
				if (result) {
					$('#preloader-active').show();
					$.ajax({
						url: "<?php echo base_url(); ?>penilaian/add_penilai",
						data: "ids=" + ids+"&penilai="+$('#penilai').val(),
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