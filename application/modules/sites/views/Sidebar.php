<!-- Sidebar -->
		<div class="sidebar sidebar-style-2">			
			<div class="sidebar-wrapper scrollbar scrollbar-inner">
				<div class="sidebar-content">
					<div class="user">
						<div class="avatar-sm float-left mr-2">
							<?php
								// jika level user user ambil dari simsdm
								
								if ($this->session->userdata('leveluser')=='') echo '<img src="'.URL_FOTO_SIMSDM.'/'.$this->session->userdata('foto').'" alt="..." class="avatar-img rounded-circle">';
								else {
									if ($this->session->userdata('foto')=='')
										echo '<img src="'.base_url().'assets/img/profile.jpg" class="avatar-img rounded-circle">';
										else
										echo '<img src="'.base_url().'assets/uploads/profil/'.$this->session->userdata('foto').'" class="avatar-img rounded-circle">';	
								}
							?>
							
						</div>
						<div class="info">
							<a data-toggle="collapse" href="#collapseUser" aria-expanded="true">
								<span>
									<?php echo $this->session->userdata('userName'); ?>
									<span class="user-level"><?php echo $this->session->userdata('fullName'); ?></span>
									<span class="caret"></span>
								</span>
							</a>
							<div class="clearfix"></div>

							<div class="collapse in" id="collapseUser">
								<ul class="nav">
									<li>
										<a href="<?php echo base_url(); ?>user/profil">
											<span class="link-collapse">Profil</span>
										</a>
									</li>
									<?php if ($this->session->userdata('leveluser')!=''){?> 
									<li>
										<a href="<?php echo base_url(); ?>user/chgpwd">
											<span class="link-collapse">Ubah Password</span>
										</a>
									</li>
									<?php } ?>
									<li>
										<a href="<?php echo base_url(); ?>login/logout">
											<span class="link-collapse">Logout</span>
										</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<ul class="nav nav-primary">
						
						<?php
						$urlmenu=basename($_SERVER['PHP_SELF']);						
						$urlmenu=preg_replace('/[^a-zA-Z0-9-_\.]/','', $urlmenu);
						
						$n=0;$dt="";$sh="";
						if ($urlmenu=='index') $act="active"; else $act="";
						// dashboard
						echo '<li class="nav-item '.$act.'">
							<a href="'.base_url().'">
								<i class="fas fa-home"></i>
								<p>Dashboard</p>
							</a>
						</li>';
						
						
						
					
					?>
					<?php if ($this->session->userdata('leveluser')==''){ ?>
					<li class="nav-item <?php if ($urlmenu=='dupak') echo 'active'; ?>">
							<a href="<?php echo base_url(); ?>user/dupak">
								<i class="fas fa-clipboard-list"></i>
								<p>DUPAK</p>
							</a>
							
						</li>
					<?php } ?>
					<?php if ($this->session->userdata('leveluser')=='1'){ ?>
						<li class="nav-item submenu <?php if ($urlmenu=='users' || $urlmenu=='kamus' || $urlmenu=='jenjang' || $urlmenu=='jabatan' || $urlmenu=='kelompok' || $urlmenu=='listkelompok') echo 'active'; ?>">
							<a data-toggle="collapse" href="#sidebarLayouts" class="" >
								<i class="fas fa-th-list"></i>
								<p>Master</p>
								<span class="caret"></span>
							</a>
							<div class="collapse <?php if ($urlmenu=='users' || $urlmenu=='kamus' || $urlmenu=='jenjang' || $urlmenu=='jabatan' || $urlmenu=='kelompok' || $urlmenu=='listkelompok') echo 'show'; ?>" id="sidebarLayouts">
								<ul class="nav nav-collapse">
									<li>
										<a href="<?php echo base_url(); ?>master/users">
											<span class="sub-item">Users</span>
										</a>
									</li>
									<li>
										<a href="<?php echo base_url(); ?>master/jenjang">
											<span class="sub-item">Jenjang Jabatan</span>
										</a>
									</li>
									<li>
										<a href="<?php echo base_url(); ?>master/jabatan">
											<span class="sub-item">Jabatan</span>
										</a>
									</li>
									<li>
										<a href="<?php echo base_url(); ?>master/kelompok">
											<span class="sub-item">Kelompok Jabatan</span>
										</a>
									</li>									
									<li>
										<a href="<?php echo base_url(); ?>master/kamus">
											<span class="sub-item">Butir AK</span>
										</a>
									</li>
								</ul>
							</div>
						</li>
						<li class="nav-item submenu <?php if ($urlmenu=='periode' || $urlmenu=='penilai'  || $urlmenu=='nilaipak' || $urlmenu=='jadwal') echo 'active'; ?>">
							<a data-toggle="collapse" href="#forms" class="">
								<i class="fas fa-pen-square"></i>
								<p>Penilaian</p>
								<span class="caret"></span>
							</a>
							<div class="collapse <?php if ($urlmenu=='periode' || $urlmenu=='penilai'  || $urlmenu=='nilaipak' || $urlmenu=='jadwal') echo 'show'; ?>" id="forms">
								<ul class="nav nav-collapse">
									<li>
										<a href="<?php echo base_url(); ?>penilaian/periode">
											<span class="sub-item">Setting Periode</span>
										</a>
									</li>
									<li>
										<a href="<?php echo base_url(); ?>penilaian/penilai">
											<span class="sub-item">Setting Tim Penilai</span>
										</a>
									</li>
									<li>
										<a href="<?php echo base_url(); ?>penilaian/jadwal">
											<span class="sub-item">Jadwal Pleno</span>
										</a>
									</li>
									<li>
										<a href="<?php echo base_url(); ?>penilaian/nilaipak">
											<span class="sub-item">Nilai PAK</span>
										</a>
									</li>
								</ul>
							</div>
						</li>
						<?php } ?>
						<li class="nav-item">
							<a href="<?php echo base_url() ?>login/logout">
								<i class="fas fa-sign-out-alt"></i>
								<p>Logout</p>
							</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- End Sidebar -->