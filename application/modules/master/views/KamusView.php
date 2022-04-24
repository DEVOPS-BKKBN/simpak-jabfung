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
                                    <h4 class="card-title">Butir Angka Kredit</h4>
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
										<div class="row">
										<div class="col-md-3">
											<div class="form-group">
											<label for="defaultSelect">Jenis Jabatan</label>
											<?php
													
													$sql="SELECT hid kode, jenis_jabatan nilai FROM jenis_jabatan ORDER BY jenis_jabatan";
													echo $this->ReferensiModel->LoadListMaster($sql,'jenisjab',$this->input->get('jenisjab'),'class="form-control" required','');
												?>
											</div>
										</div>
										<div class="col-md-3">
											<div class="form-group">
											<label for="defaultSelect">Kelompok Jabatan</label>
											<?php
												
												$list=array('Ahli','Terampil');
												echo $this->ReferensiModel->LoadList($list,$list,'kelompok',$this->input->get('kelompok'),'class="form-control" required','');
											?>
											</div>
										</div>
										<div class="col-md-4">
											<div class="form-group">
											<label for="defaultSelect">Jabatan Fungsional</label>
											<?php
													
													$sql="SELECT hid kode, CONCAT(kode_jab,'-',jabatan) nilai FROM jenjang_jabatan WHERE jenisjabatan_id=".$this->db->escape($this->input->get('jenisjab'))." ORDER BY jabatan";
													echo $this->ReferensiModel->LoadListMaster($sql,'jabatan',$this->input->get('jabatan'),'class="form-control" required','');
												?>
											</div>
										</div>
										<div class="col-md-2"><br>
											<div class="form-group"><button type="button" class="btn btn-sm btn-primary mr-2" id="btn1">Copy</button><button type="button" class="btn btn-sm btn-warning" id="btn2">Tampilkan</button></div>
											
										</div>
										</div>
                                        <table id="datatable" class="display table table-striped table-hover dataTable">
                                            <thead>
                                                <tr>
                                                    <th><div class="form-check">
															<label class="form-check-label">
																<input class="form-check-input" type="checkbox" value="1" id="ckall">
																<span class="form-check-sign"></span>
															</label>
														</div>
                                                    </th>
													<th scope="col">Kategori</th>
                                                    <th scope="col">Butir Kegiatan</th>
													<th scope="col">Kelompok Jabatan</th>
													<th scope="col">Jabatan Fungsional</th>
													<th scope="col">Jenis</th>
													<th scope="col">Output</th>
													<th scope="col">Angka Kredit</th>
													<th scope="col">Dokumen Templates</th>
													<th scope="col">Dokumen Fisik</th>
													<th scope="col">Aksi</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php
                                                $n = 0;
												$sql2="";
												$sql2=" AND a.jenisjabatan_id=".$this->db->escape($this->input->get('jenisjab'));
												if ($this->input->get('kelompok')!='') $sql2.=" AND a.kelompok_jabatan=".$this->db->escape($this->input->get('kelompok'));
												if ($this->input->get('jabatan')!='') $sql2.=" AND (jabatan_id=".$this->db->escape($this->input->get('jabatan'))." OR jabatan_id IS NULL )";
                                                $sql="SELECT a.*,b.jabatan,b.kode_jab FROM kamus_kegiatan a LEFT JOIN jenjang_jabatan b ON a.jabatan_id=b.hid WHERE a.deleted_at IS NULL $sql2 ORDER BY b.jabatan,kategori,a.hid";
							                    
												$cn = $this->db->query($sql);
                                                foreach ($cn->result() as $rw) {
                                                    $n++;
                                                    echo '<tr>';
                                                    echo '<td>';
													echo '<div class="form-check"><label class="form-check-label"><input class="form-check-input ckdel"  type="checkbox" value="'.$rw->hid.'"><span class="form-check-sign"></span></label></div>';
													echo '</td>';
                                                    echo '<td>'.$rw->kategori.'</td>';
                                                    echo '<td>'.$rw->butir_kegiatan.'</td>';
													echo '<td>'.$rw->kelompok_jabatan.'</td>';
													echo '<td>'.$rw->kode_jab.'-'.$rw->jabatan.'</td>';
													echo '<td>'.$rw->jenis.'</td>';
													echo '<td>'.$rw->output.'</td>';
													echo '<td>'.$rw->jumlah_ak.'</td>';
													echo '<td><ul>';
													echo '<button type="button" class="btn btn-icon btn-sm btn-round btn-primary template" data-id="'.$rw->hid.'"><i class="fa fa-plus"></i></button>';
													$sql="SELECT * FROM kamus_templates WHERE kegiatan_id='".$rw->hid."' AND deleted_at IS NULL";
													$cn2 = $this->db->query($sql);
													foreach ($cn2->result() as $rw2){
														echo '<li>'.$rw2->nama_template.' <a href="'.base_url().'master/modal?action=template&thid='.$rw2->hid.'&jenisjab='. $this->input->get('jenisjab').'&jabatan='. $this->input->get('jabatan').'&hid='.$rw->hid.'" class="ls-modal" data-id="'.md5($rw2->hid).'"><i class="fa fa-pen"></i></a> <a href="" class="deltemplate" data-id="'.md5($rw2->hid).'"><i class="fa fa-trash" style="color:red"></i></a></li>';
													}
													echo '</ul></td>';
													echo '<td><ul>';
													echo '<button type="button" class="btn btn-icon btn-sm btn-round btn-primary dokumen" data-id="'.$rw->hid.'"><i class="fa fa-plus"></i></button>';
													$sql="SELECT * FROM kamus_dupak WHERE kegiatan_hid='".$rw->hid."' AND deleted_at IS NULL";
													$cn2 = $this->db->query($sql);
													foreach ($cn2->result() as $rw2){
														echo '<li>'.$rw2->output.' <a href="'.base_url().'master/modal?action=dokumen&thid='.$rw2->hid.'&jenisjab='. $this->input->get('jenisjab').'&jabatan='. $this->input->get('jabatan').'&hid='.$rw->hid.'" class="ls-modal" data-id="'.md5($rw2->hid).'"><i class="fa fa-pen"></i></a> <a href="" class="deldok" data-id="'.md5($rw2->hid).'"><i class="fa fa-trash" style="color:red"></i></a></li>';
													}
													
													echo '</ul></td>';
													
                                                    echo '<td><div class="form-button-action">';
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
		$("#datatable").on("click", ".template", function(e) {
            var hid = $(this).data("id");
			var hid = $(this).data("id");
			console.log('id',hid);
			$('#largeModal').modal('show').find('.modal-content').html('<div class="spinner-border text-info m-t-10 m-b-10 m-l-10" role="status"><span class="sr-only">Loading...</span></div>').load('<?php echo base_url(); ?>master/modal?action=template&jenisjab=<?php echo $this->input->get('jenisjab'); ?>&jabatan='+escape('<?php echo $this->input->get('jabatan'); ?>')+'&hid='+hid);
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