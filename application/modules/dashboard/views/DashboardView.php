<?php $this->load->view('sites/Header'); ?>
<?php $this->load->view('sites/Loader'); ?>
<body>
	<div class="wrapper">
		<?php $this->load->view('sites/Navigation'); ?>
		<?php $this->load->view('sites/Sidebar'); ?>	
		<div class="main-panel">
		<?php 
			if ($this->session->userdata('leveluser')=='1') $this->load->view('DashAdminView');
			if ($this->session->userdata('leveluser')=='3') $this->load->view('DashPenilaiView');
			if ($this->session->userdata('leveluser')=='') $this->load->view('DashUserView');
		
		?>
		
		<?php $this->load->view('sites/Footer'); ?>		
		</div>
	</div>
</body>	
</html>

