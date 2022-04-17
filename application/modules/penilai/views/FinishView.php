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
                                    <h4 class="card-title">Penilaian Sudah Selesai</h4>
                                   
                                </div>

                                <div class="card-body">
									<form action="<?php echo base_url(); ?>penilai/finish" method="GET">
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
                                    <div class="table-responsive">
										<table id="datatable" class="display table table-striped dataTable">
                                            <thead>
                                                <tr>
													<th scope="col">NO
													</th>
													<th>AKSI</th>
													<th>PERIODE</th>
													<th>FOTO</th>
													<th>NAMA</th>
													<th>NIP</th>
													<th>PANGKAT/GOL</th>
													<th>TMT GOL</th>
													<th>JABATAN</th>
													<th>UNIT KERJA</th>
													<th>STATUS</th>
													<th>TOTAL PAK</th>
												</tr>
                                            </thead>
                                            <tbody>
                                            <?php
												$n=0;
												$sql2="";
												
												if ($this->input->get('periode')!='') $sql2=" AND p.hid=".$this->db->escape($this->input->get('periode'));
												$sql="SELECT a.*,DATE_FORMAT(a.tmtjab,'%d-%m-%Y') tmtjab,b.foto,c.namalengkap penilai,p.namaperiode
														FROM pemohon a JOIN users b ON a.nip=b.username
														LEFT JOIN penilai c ON a.penilai_id=c.hid 
														JOIN periode p ON p.hid=a.periode_hid
														WHERE a.status='4' AND c.nip='".$this->session->userdata('userName')."' $sql2";
												//echo $sql;
												$pangkat = $this->db->query($sql);
												foreach ($pangkat->result() as $rw){
													
													$n++;
													echo '<tr>';
													echo '<td>'.$n.'</td>';	
													echo '<td>';
													echo '<a href="'.base_url().'penilai/penilaian?hid='.md5(TOKEN_DOP.$rw->hid).'" class="mr-2" title="Penilaian"><i class="icon-note fa-2x"></i></a>';
													echo '<a href="'.base_url().'penilai/cetakpak?hid='.md5(TOKEN_DOP.$rw->hid).'" class="mr-2" title="Cetak" target="_blank"><i class="icon-cloud-download fa-2x"></i></a>';
													echo '</td>';
													echo '<td>'.$rw->namaperiode.'</td>';	
													echo '<td><img src="'.URL_FOTO_SIMSDM.$rw->foto.'"  class="img-circle" width="60"></td>';
													echo '<td>'.$rw->namalengkap.'</td>';
													echo '<td>'.$rw->nip.'</td>';
													echo '<td>'.$rw->pangkatgol.'</td>';
													echo '<td>'.date("d-m-Y",strtotime($rw->tmtgol)).'</td>';
													echo '<td>'.$rw->jabatan.'</td>';
													echo '<td>'.$rw->unitkerja.'</td>';
													echo '<td>'.$this->ReferensiModel->StatusDupak($rw->status).'</td>';
													echo '<td>'.$this->ProsesModel->NilaiTotalPAKFinal($rw->hid).'</td>';
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
                </div>
            </div>
            <?php $this->load->view('sites/Footer'); ?>
        </div>
    </div>
    <script>
		$('#jabatan,#jenisjab,#kelompok').select2({allowClear: true,
            placeholder: ""});
        $("#btn2").click(function() {
			window.location.href='<?php echo base_url(); ?>master/kamus?jabatan='+$('#jabatan').val()+'&jenisjab='+$('#jenisjab').val()+'&kelompok='+$('#kelompok').val();
		})
		$("#btn1").click(function() {

			ids = new Array();
			a = 0;
			
			if ($('#kelompok').val()==''){
				swal({
					type: 'error',
					title: 'Error!',
					text: 'Kelompok Jabatan !',
					confirmButtonText: 'Tutup',
					buttonsStyling: false,
					confirmButtonClass: 'btn btn-lg btn-danger'
				});
				return false;
			}
			$("input.ckdel:checked").each(function() {
				ids[a] = $(this).val();
				//alert($(this).val());
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
				});
				return false;
			}
			swal({
				title: 'Yakin copy ke Jabatan ini ?',
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
			}).then((willDelete) => {
				if (willDelete) {
					$('#preloader-active').show();
					$.ajax({
						url: "<?php echo base_url(); ?>master/copyKamus",
						data: "jabatan="+$('#jabatan').val()+"&ids="+ids,
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
                        url: "<?php echo base_url(); ?>master/hapusKamus",
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
		$("#datatable").on("click", ".deldok", function(e) {
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
                        url: "<?php echo base_url(); ?>master/hapusDokumen",
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
		$("#datatable").on("click", ".dokumen", function(e) {
            var hid = $(this).data("id");
			var hid = $(this).data("id");
			console.log('id',hid);
			$('#largeModal').modal('show').find('.modal-content').html('<div class="spinner-border text-info m-t-10 m-b-10 m-l-10" role="status"><span class="sr-only">Loading...</span></div>').load('<?php echo base_url(); ?>master/modal?action=dokumen&jenisjab=<?php echo $this->input->get('jenisjab'); ?>&jabatan='+escape('<?php echo $this->input->get('jabatan'); ?>')+'&hid='+hid);
        })
        var table = $('#datatable').DataTable({
			"order": [], //Initial no order.
			//Set column definition initialisation properties.
			'columnDefs': [{
				'targets': 0,
				'searchable': false,
				'orderable': false
			},{ width: 200, targets: 5 },{ width: 150, targets: 3 },{ width: 250, targets: 3 }],
			"pageLength": 50

		});
		$('#ckall').on('click', function() {
			// Get all rows with search applied
			var rows = table.rows({
				'search': 'applied'
			}).nodes();
			// Check/uncheck checkboxes for all rows in the table
			$('input[type="checkbox"]', rows).prop('checked', this.checked);
		});
    </script>

    </html>