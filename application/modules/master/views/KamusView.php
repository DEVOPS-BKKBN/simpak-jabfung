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
											<label for="defaultSelect">Kelompok Jabatan</label>
											<?php
													
													$sql="SELECT hid kode, kelompok nilai FROM kelompok ORDER BY kelompok";
													echo $this->ReferensiModel->LoadListMaster($sql,'kelompok',$this->input->get('kelompok'),'class="form-control custom-select" required','');
												?>
											</div>
										</div>
										<div class="col-md-3"><br>
											<div class="form-group"><button type="button" class="btn btn-primary mr-2" id="btn1">Copy</button><button type="button" class="btn btn-warning" id="btn2">Filter</button></div>
											
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
                                                    <th scope="col">Kegiatan</th>
													<th scope="col">Kelompok Jabatan</th>
													<th scope="col">Aksi</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php
                                                $n = 0;
                                                $sql="SELECT a.*,b.kelompok FROM kamus_kegiatan a JOIN kelompok b ON a.kelompok_id=b.hid ORDER BY b.kelompok";
							                    $cn = $this->db->query($sql);
                                                foreach ($cn->result() as $rw) {
                                                    $n++;
                                                    echo '<tr>';
                                                    echo '<td>';
													echo '<div class="form-check"><label class="form-check-label"><input class="form-check-input ckdel"  type="checkbox" value="'.$rw->hid.'"><span class="form-check-sign"></span></label></div>';
													echo '</td>';
                                                    echo '<td>'.$rw->kategori.'</td>';
                                                    echo '<td>'.$rw->uraian_kegiatan.'</td>';
													echo '<td>'.$rw->kelompok.'</td>';
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
        $("#btn2").click(function() {
			window.location.href='<?php echo base_url(); ?>master/kamus?kelompok='+$('#kelompok').val();
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
				title: 'Yakin copy Kelompok Jabatan ini ?',
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
						data: "kelompok="+$('#kelompok').val()+"&ids="+ids,
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
        var table = $('#datatable').DataTable({
			"order": [], //Initial no order.
			//Set column definition initialisation properties.
			'columnDefs': [{
				'targets': 0,
				'searchable': false,
				'orderable': false
			}],
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