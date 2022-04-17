<div class="content">				
				<div class="panel-header bg-primary-gradient">
					<div class="page-inner py-5">
						<div class="d-flex align-items-left align-items-md-center flex-column flex-md-row">
							<div>
								<h2 class="text-white pb-2 fw-bold">Dashboard</h2>
								<h5 class="text-white op-7 mb-2">Dashboard Penilai</h5>
							</div>
						</div>
					</div>
				</div>
				<div class="page-inner mt--5">
					<div class="row">
						<div class="col-md-6">
							<div class="card full-height">
								<div class="card-body">
									<?php
										$sql="SELECT SUM(1) total,
											SUM(CASE WHEN status='1' THEN 1 ELSE 0 END) jmldraft,
											SUM(CASE WHEN status>='2' THEN 1 ELSE 0 END) jmlaju,
											SUM(CASE WHEN status='2' AND penilai_id IS NULL THEN 1 ELSE 0 END) blmassign,
											SUM(CASE WHEN status>='3' THEN 1 ELSE 0 END) assign,
											SUM(CASE WHEN status>='3'  AND (SELECT COUNT(*) FROM dupak WHERE penilaiandate IS NOT NULL AND pemohon_id=a.hid)>0 THEN 1 ELSE 0 END) review,
											SUM(CASE WHEN status='4' THEN 1 ELSE 0 END) selesaipenilaian,
											SUM(CASE WHEN status='5' THEN 1 ELSE 0 END) selesaipleno,
											SUM(CASE WHEN status='6' THEN 1 ELSE 0 END) selesaittd
											 FROM pemohon a";
										$cn=$this->db->query($sql);
										$rw=$cn->row();
									?>
									<div class="card-title">Dupak Statistik</div>
									<div class="d-flex flex-wrap justify-content-around pb-2 pt-4">
										<div class="px-2 pb-2 pb-md-0 text-center">
											<div id="circles-1"></div>
											<h6 class="fw-bold mt-3 mb-0">Diajukan</h6>
										</div>
										<div class="px-2 pb-2 pb-md-0 text-center">
											<div id="circles-2"></div>
											<h6 class="fw-bold mt-3 mb-0">Diassign</h6>
										</div>
										<div class="px-2 pb-2 pb-md-0 text-center">
											<div id="circles-3"></div>
											<h6 class="fw-bold mt-3 mb-0">Blm Diassign</h6>
										</div>
										<div class="px-2 pb-2 pb-md-0 text-center">
											<div id="circles-4"></div>
											<h6 class="fw-bold mt-3 mb-0">Selesai Penilaian</h6>
										</div>
										<div class="px-2 pb-2 pb-md-0 text-center">
											<div id="circles-5"></div>
											<h6 class="fw-bold mt-3 mb-0">Selesai Pleno</h6>
										</div>
										<div class="px-2 pb-2 pb-md-0 text-center">
											<div id="circles-6"></div>
											<h6 class="fw-bold mt-3 mb-0">Selesai Ttd</h6>
										</div>
										<div class="px-2 pb-2 pb-md-0 text-center">
											<div id="circles-7"></div>
											<h6 class="fw-bold mt-3 mb-0">Review Penilai</h6>
										</div>
										<div class="px-2 pb-2 pb-md-0 text-center">
											<div id="circles-8"></div>
											<h6 class="fw-bold mt-3 mb-0">Blm Dikirim</h6>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-6 col-lg-2">
							<div class="card p-3">
								<div class="d-flex align-items-center">
									<span class="stamp stamp-md bg-secondary mr-3">
										<i class="fa fa-calendar"></i>
									</span>
									<div>
										<h5 class="mb-1"><b><a href="#"><?php echo $this->ReferensiModel->LoadSQL("SELECT COUNT(*) judul FROM periode WHERE status='1'"); ?> <small>Periode Aktif</small></a></b></h5>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-6 col-lg-2">
							<div class="card p-3">
								<div class="d-flex align-items-center">
									<span class="stamp stamp-md bg-success mr-3">
										<i class="fa fa-user"></i>
									</span>
									<div>
										<h5 class="mb-1"><b><a href="#"><?php echo $this->ReferensiModel->LoadSQL("SELECT COUNT(*) judul FROM pemohon"); ?> <small>Prakom</small></a></b></h5>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-6 col-lg-2">
							<div class="card p-3">
								<div class="d-flex align-items-center">
									<span class="stamp stamp-md bg-danger mr-3">
										<i class="fa fa-users"></i>
									</span>
									<div>
										<h5 class="mb-1"><b><a href="#"><?php echo $this->ReferensiModel->LoadSQL("SELECT COUNT(*) judul FROM penilai"); ?> <small>Tim Penilai</small></a></b></h5>
									</div>
								</div>
							</div>
						</div>
						
					</div>
				</div>
			</div>		
		<script>
		Circles.create({
			id:'circles-1',
			radius:45,
			value:<?php echo $rw->jmlaju; ?>,
			maxValue:<?php echo $rw->total; ?>,
			width:7,
			text: <?php echo $rw->jmlaju; ?>,
			colors:['#f1f1f1', '#FF9E27'],
			duration:400,
			wrpClass:'circles-wrp',
			textClass:'circles-text',
			styleWrapper:true,
			styleText:true
		})

		Circles.create({
			id:'circles-2',
			radius:45,
			value:<?php echo $rw->assign; ?>,
			maxValue:<?php echo $rw->jmlaju; ?>,
			width:7,
			text: <?php echo $rw->assign; ?>,
			colors:['#f1f1f1', '#2BB930'],
			duration:400,
			wrpClass:'circles-wrp',
			textClass:'circles-text',
			styleWrapper:true,
			styleText:true
		})

		Circles.create({
			id:'circles-3',
			radius:45,
			value:<?php echo $rw->blmassign; ?>,
			maxValue:<?php echo $rw->jmlaju; ?>,
			width:7,
			text: <?php echo $rw->blmassign; ?>,
			colors:['#f1f1f1', '#F25961'],
			duration:400,
			wrpClass:'circles-wrp',
			textClass:'circles-text',
			styleWrapper:true,
			styleText:true
		})
		Circles.create({
			id:'circles-4',
			radius:45,
			value:<?php echo $rw->selesaipenilaian; ?>,
			maxValue:<?php echo $rw->jmlaju; ?>,
			width:7,
			text: <?php echo $rw->selesaipenilaian; ?>,
			colors:['#f1f1f1', '#F25961'],
			duration:400,
			wrpClass:'circles-wrp',
			textClass:'circles-text',
			styleWrapper:true,
			styleText:true
		})
		Circles.create({
			id:'circles-5',
			radius:45,
			value:<?php echo $rw->selesaipleno; ?>,
			maxValue:<?php echo $rw->jmlaju; ?>,
			width:7,
			text: <?php echo $rw->selesaipleno; ?>,
			colors:['#f1f1f1', '#F25961'],
			duration:400,
			wrpClass:'circles-wrp',
			textClass:'circles-text',
			styleWrapper:true,
			styleText:true
		})
		Circles.create({
			id:'circles-6',
			radius:45,
			value:<?php echo $rw->selesaittd; ?>,
			maxValue:<?php echo $rw->jmlaju; ?>,
			width:7,
			text: <?php echo $rw->selesaittd; ?>,
			colors:['#f1f1f1', '#FF9E27'],
			duration:400,
			wrpClass:'circles-wrp',
			textClass:'circles-text',
			styleWrapper:true,
			styleText:true
		})

		Circles.create({
			id:'circles-7',
			radius:45,
			value:<?php echo $rw->review; ?>,
			maxValue:<?php echo $rw->jmlaju; ?>,
			width:7,
			text: <?php echo $rw->review; ?>,
			colors:['#f1f1f1', '#2BB930'],
			duration:400,
			wrpClass:'circles-wrp',
			textClass:'circles-text',
			styleWrapper:true,
			styleText:true
		})

		Circles.create({
			id:'circles-8',
			radius:45,
			value:<?php echo $rw->jmldraft; ?>,
			maxValue:<?php echo $rw->jmlaju; ?>,
			width:7,
			text: <?php echo $rw->jmldraft; ?>,
			colors:['#f1f1f1', '#F25961'],
			duration:400,
			wrpClass:'circles-wrp',
			textClass:'circles-text',
			styleWrapper:true,
			styleText:true
		})
	</script>