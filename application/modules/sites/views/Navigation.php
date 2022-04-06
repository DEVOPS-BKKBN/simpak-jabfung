<div class="main-header">
			<!-- Logo Header -->
			<div class="logo-header" data-background-color="blue">
				
				<a href="<?php echo base_url(); ?>" class="logo">				
					<img src="<?php echo base_url();?>assets/img/logo.png" height="50" alt="navbar brand" class="navbar-brand logo__image">
					<div class="logo__text"><div  class="logo__title">&nbsp;<?php echo APP_SHORT_TITLE; ?></div><div class="logo__subtitle"><?php echo APP_LONG_TITLE; ?></div></div>
				</a>
				<button class="navbar-toggler sidenav-toggler ml-auto" type="button" data-toggle="collapse" data-target="collapse" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon">
						<i class="icon-menu"></i>
					</span>
				</button>
				<button class="topbar-toggler more"><i class="icon-options-vertical"></i></button>
				<div class="nav-toggle">
					<button class="btn btn-toggle toggle-sidebar">
						<i class="icon-menu"></i>
					</button>
				</div>
			</div>
			<!-- End Logo Header -->

			<!-- Navbar Header -->
			<nav class="navbar navbar-header navbar-expand-lg" data-background-color="blue2">
				
				<div class="container-fluid">
					<ul class="navbar-nav topbar-nav ml-md-auto align-items-center">
						<li class="nav-item dropdown hidden-caret">
							<a class="nav-link dropdown-toggle" href="#" id="notifDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<i class="fa fa-bell"></i>
								<span class="notification">0</span>
							</a>
						</li>
						
						<li class="nav-item dropdown hidden-caret">
							<a class="dropdown-toggle profile-pic" data-toggle="dropdown" href="#" aria-expanded="false">
								<div class="avatar-sm">
									<?php
										if ($this->session->userdata('leveluser')=='') echo '<img src="'.URL_FOTO_SIMSDM.'/'.$this->session->userdata('foto').'" alt="..." class="avatar-img rounded-circle">';
										else {
											if ($this->session->userdata('foto')=='')
												echo '<img src="'.base_url().'assets/img/profile.jpg" class="avatar-img rounded-circle">';
												else
												echo '<img src="'.base_url().'assets/uploads/profil/'.$this->session->userdata('foto').'" class="avatar-img rounded-circle">';	
										}
									?>
								</div>
							</a>
							<ul class="dropdown-menu dropdown-user animated fadeIn">
								<div class="dropdown-user-scroll scrollbar-outer">
									<li>
										<div class="user-box">
											<div class="avatar-lg">
											<?php
												if ($this->session->userdata('leveluser')=='') echo '<img src="'.URL_FOTO_SIMSDM.'/'.$this->session->userdata('foto').'" alt="..." class="avatar-img rounded">';
													else {
													if ($this->session->userdata('foto')=='')
														echo '<img src="'.base_url().'assets/img/profile.jpg" class="avatar-img rounded">';
														else
														echo '<img src="'.base_url().'assets/uploads/profil/'.$this->session->userdata('foto').'" class="avatar-img rounded">';	
													}
											?>
											</div>
											<div class="u-text">
												<h4><?php echo $this->session->userdata('fullName'); ?></h4>
												<a href="<?php echo base_url(); ?>user/profil" class="btn btn-xs btn-secondary btn-sm">View Profile</a>
											</div>
										</div>
									</li>
									<li>
									<?php
										if ($this->session->userdata('leveluser')!='') echo '<div class="dropdown-divider"></div>
										<a class="dropdown-item" href="'.base_url().'user/chgpwd">Ubah Password</a>';
									?>
										
										<div class="dropdown-divider"></div>
										<a class="dropdown-item" href="<?php echo base_url(); ?>login/logout">Logout</a>
									</li>
								</div>
							</ul>
						</li>
					</ul>
				</div>
			</nav>
			<!-- End Navbar -->
		</div>