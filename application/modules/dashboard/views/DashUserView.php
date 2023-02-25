<div class="content">				
	<div class="panel-header bg-primary-gradient">
					<div class="page-inner py-5">
						<div class="d-flex align-items-left align-items-md-center flex-column flex-md-row">
							<div>
								<h2 class="text-white pb-2 fw-bold">Dashboard</h2>
								<h5 class="text-white op-7 mb-2">Dashboard User</h5>
							</div>
						</div>
						
					</div>
			
			
	</div>	
	<div class="page-inner">
	<div class="row">
	<?php
		//var_dump($_SESSION);
		$sql="SELECT a.hid,namaperiode,CONCAT(DATE_FORMAT(startdate,'%b %Y'),' s.d ',DATE_FORMAT(enddate,'%b %Y')) periode,
		(SELECT CASE b.status
				WHEN 1 THEN 'Draft'
				WHEN 2 THEN 'Kirim ke Sekretariat'
				WHEN 3 THEN 'Distribusi Penilai'
				WHEN 4 THEN 'Sudah Dinilai'
				WHEN 5 THEN 'Pleno'
				WHEN 6 THEN 'Selesai'
				WHEN 7 THEN 'Direvisi Penilai'
				WHEN 8 THEN 'Perbaikan Revisi oleh User'
				ELSE ''
			END status FROM pemohon b WHERE a.hid=b.periode_hid AND nip='".$this->session->userdata('userName')."') status,
			(SELECT status FROM pemohon b WHERE a.hid=b.periode_hid AND nip='".$this->session->userdata('userName')."') statusid,
			(SELECT hid FROM pemohon b WHERE a.hid=b.periode_hid AND nip='".$this->session->userdata('userName')."') hiddupak
		FROM periode a WHERE a.status='1'";
		
		$cn = $this->db->query($sql);
		foreach ($cn->result_array() as $rw){
	?>
	<div class="col-md-12">
		<div class="card">
								<div class="card-header ">
									<div class="card-head-row">
										<div class="card-title"><?php echo $rw['namaperiode']; ?></div>										
									</div>
								</div>
			<div class="card-body">
				<h3 class="card-title">Periode : <?php echo $rw['periode']; ?></h3>				
				<?php if ($rw['status']!=''){?>
				<ol class="wizard-progress">
					<li class="<?php if ($rw['statusid']>=1) echo 'active-step'; ?>">
						<span class="step-name">Draft</span>
						<span class="visuallyhidden">Step </span><span class="step-num">1</span>
					</li>
					<li class="<?php if ($rw['statusid']>=2) echo 'active-step'; ?>">
						<span class="step-name">Kirim </span>
						<span class="visuallyhidden">Step </span><span class="step-num">2</span>
					</li>
					<li class="<?php if ($rw['statusid']>=3) echo 'active-step'; ?>">
						<span class="step-name">Sudah ada Penilai</span>
						<span class="visuallyhidden">Step </span><span class="step-num">3</span>
					</li>
					<li class="<?php if ($rw['statusid']>=4 && ($rw['statusid']!=7 && $rw['statusid']!=8)) echo 'active-step'; ?>">
						<span class="step-name">Sudah Dinilai</span>
						<span class="visuallyhidden">Step </span><span class="step-num">4</span>
					</li>
					<li class="<?php if ($rw['statusid']>=5 && ($rw['statusid']!=7 && $rw['statusid']!=8)) echo 'active-step'; ?>">
						<span class="step-name">Masuk Pleno</span>
						<span class="visuallyhidden">Step </span><span class="step-num">5</span>
					</li>
					<li class="<?php if ($rw['statusid']==6 ) echo 'active-step'; ?>">
						<span class="step-name">Selesai</span>
						<span class="visuallyhidden">Step </span><span class="step-num">6</span>
					</li>
				</ol>				
				<?php } ?>
			</div>
			
				<?php
					if ($rw['status']=='')
					echo '<a href="" class="btn btn-primary daftar" data-id="'.$rw['hid'].'">DAFTAR</a>';
					else echo '<a href="'.base_url().'user/detildupak?hid='.md5(TOKEN_DOP.$rw['hiddupak']).'" class="btn btn-info">'.strtoupper($rw['status']).'</a>';
				?>
				
		</div>
		
	</div>
	<?php } ?>
	
</div>
<script>
	$(".daftar").on("click",function(e){
		var hid = $(this).data("id");
		e.preventDefault();
		swal({
                title: 'Yakin akan daftar PAK ?',
                text: "Pastikan data golongan, jabatan sudah sesuai di SIMSDM.",
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
						url: "<?php echo base_url(); ?>user/daftarpak",
						data: "hid=" + hid,
						cache: false,
						method: 'post',
						success: function(data) {
							//alert(data);
							window.location.href = '<?php echo base_url();?>user/dupak';
						}
					})
                } 
            });
	})
</script>
<style>
.visuallyhidden {
    display: none;
}

.wizard-progress {
    list-style: none;
    list-style-image: none;
}

.wizard-progress li {
    float: left;
    margin-right: 50px;
    text-align: center;
    position: relative;
    width: 100px;
}

.wizard-progress .step-name {
    display: table-cell;
    height: 32px;
    vertical-align: bottom;
    text-align: center;
    width: 100px;
}

.wizard-progress .step-name-wrapper {
    display: table-cell;
    height: 100%;
    vertical-align: bottom;
}

.wizard-progress .step-num {
    font-size: 14px;
    font-weight: bold;
    border:1px solid #1269db;
    border-radius: 50%;
    width:50px;
	height:50px;
	line-height: 50px;
    display: inline-block;
    margin-top: 10px;
}

.wizard-progress .step-num:after {
    content: "";
    display: block;
    background: #1269db;
    height: 2px;
    width: 100px;
    position: absolute;
    bottom: 22px;
    left: 75px;
}

.wizard-progress li:last-of-type .step-num:after {
    display: none;
}

.wizard-progress .active-step .step-num {
    background-color: #1269db;
	color:white
}
</style>


	</div>
	
</div>		