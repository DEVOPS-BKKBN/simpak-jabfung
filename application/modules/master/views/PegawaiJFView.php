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
                                    <h4 class="card-title">Daftar Pejabat Fungsional</h4>
									<div class="card-category">Link otomatis ke SIMSDM</div>
                                </div>

                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table id="datatable" class="display table table-striped table-hover dataTable">
                                            <thead>
                                                <tr>
                                                    <th>No</th>
                                                    <th scope="col">NIP</th>
													<th scope="col">Nama</th>
													<th scope="col">Jabatan</th>
													<th scope="col">TMT Jab</th>
													<th scope="col">Pangkat/Golongan</th>
													<th scope="col">TMT Gol</th>
													<th scope="col">Unit Kerja</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php
												$urlapi=URL_SIMSDM."index.php/ProsesController/daftarPegawaiFungsional";											
												$data = array("token" => TOKEN_SIMSDM);                                                                    
												$post = json_encode($data);       
																					
												$ch = curl_init();
												curl_setopt($ch, CURLOPT_URL,$urlapi);
												curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");                                                                     
												curl_setopt($ch, CURLOPT_POSTFIELDS, $post);                                                                  
												curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);                                                                      
												curl_setopt($ch, CURLOPT_HTTPHEADER, array(                                                                          
													'Content-Type: application/json',                                                                                
													'Content-Length: ' . strlen($post))                                                                       
												);    
																					
												curl_setopt($ch, CURLOPT_RETURNTRANSFER,1);
												$result=curl_exec ($ch);
												
												curl_close ($ch);
																					
												$json = json_decode($result, true);
												
												if(!empty($json)){
													$n = 0;
													foreach($json as $key => $value) {
														//var_dump($value);
														$n++;
														echo '<tr>';
														echo '<td>' . $n . '</td>';
														echo '<td>'.$value['NIP'].'</td>';
														echo '<td>'.$value['namalengkap'].'</td>';
														echo '<td>'.$value['jabatan'].'</td>';
														echo '<td>'.$this->ReferensiModel->YMDtoDMY($value['tmtjab']).'</td>';
														if (!empty($value['pangkat'])) echo '<td>'.$value['pangkat'].' ('.$value['golongan'].')</td>';
															else echo '<td></td>';
														echo '<td>'.$this->ReferensiModel->YMDtoDMY($value['tmtgol']).'</td>';
														echo '<td>'.$value['bironame'].'</td>';
														echo '</tr>';
													}
												}
				
												/*
                                                $n = 0;
                                                $sql="SELECT * FROM jenjang";
							                    $cn = $this->db->query($sql);
                                                foreach ($cn->result() as $rw) {
                                                    $n++;
                                                    echo '<tr>';
                                                    echo '<td>' . $n . '</td>';
                                                    echo '<td>'.$rw->jenjang.'</td>';
                                                    echo '</tr>';
                                                }
												*/
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
        $('#datatable').DataTable({});
    </script>

    </html>