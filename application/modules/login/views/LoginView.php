<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<title>Login | <?php echo APP_SHORT_TITLE; ?></title>
	<meta content='width=device-width, initial-scale=1.0, shrink-to-fit=no' name='viewport' />
	<link rel="icon" href="<?php echo base_url();?>assets/img/logo.png" type="image/png">
	<!-- Fonts and icons -->
	<script src="<?php echo base_url();?>assets/js/plugin/webfont/webfont.min.js"></script>
	<script>
		WebFont.load({
			google: {"families":["Lato:300,400,700,900"]},
			custom: {"families":["Flaticon", "Font Awesome 5 Solid", "Font Awesome 5 Regular", "Font Awesome 5 Brands", "simple-line-icons"], urls: ['<?php echo base_url();?>assets/css/fonts.min.css']},
			active: function() {
				sessionStorage.fonts = true;
			}
		});
	</script>	
	<!-- CSS Files -->
	<link rel="stylesheet" href="<?php echo base_url();?>assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="<?php echo base_url();?>assets/css/style-home.css">
</head>
<body class="login">
	<div class="wrapper wrapper-login wrapper-login-full p-0">
		<div class="login-aside w-50 d-flex flex-column align-items-center justify-content-center text-center bg-info-gradient">
			<img src="<?php echo base_url(); ?>assets/img/logo.png" class="logo">
			<h1 class="title fw-bold text-white mb-3"><?php echo APP_SHORT_TITLE; ?></h1>
			<p class="subtitle text-white op-7"><?php echo APP_LONG_TITLE; ?></p>
		</div>
		<div class="login-aside w-50 d-flex align-items-center justify-content-center bg-white">
			<div class="container container-login container-transparent animated fadeIn">
				<h3 class="text-center">User Login</h3>
				<form class="form-horizontal form-material" id="loginform" method="post" action="<?php echo base_url() ?>login/authLogin">
				<?php echo $this->session->flashdata('response'); ?>	
                <input type="hidden" name="csrf_token" value="<?php echo $this->UserModel->generateToken('sig_in'); ?>"/>
				<div class="login-form">
					<div class="form-group">
						<label for="username" class="placeholder"><b>Username</b></label>
						<input id="username" name="username" type="text" class="form-control" required>
					</div>
					<div class="form-group">
						<label for="password" class="placeholder"><b>Password</b></label>
						<div class="position-relative">
							<input id="password" name="password" type="password" class="form-control" required>
							<div class="show-password">
								<i class="icon-eye"></i>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label for="captcha" class="placeholder"><b>Captcha</b></label>
						<input id="user-captcha" name="user-captcha" type="text" value="X" class="form-control" required>
					</div>
					<div class="form-group ">
						<label class="form-label"><small>Tulis karakter yang terdapat pada gambar di bawah</small></label>
						<img id="captcha" src="<?php echo base_url();?>login/securimage" alt="CAPTCHA Image" />
						<a href="#" onclick="document.getElementById('captcha').src =  '<?php echo base_url();?>login/securimage?' + Math.random(); return false;"><img src="<?php echo base_url();?>assets/img/refresh.png" height="40"></a>
					</div>
					<div class="form-group form-action-d-flex mb-3">
						<div class="custom-control custom-checkbox"></div>
						<input type="submit"  class="btn btn-secondary col-md-5 float-right mt-3 mt-sm-0 fw-bold" value="Sign In"/>
					</div>
				</div>
				</form>
			</div>
		</div>
		
	</div>
	<script src="<?php echo base_url();?>assets/js/core/jquery.3.2.1.min.js"></script>
	<script src="<?php echo base_url();?>assets/js/plugin/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
	<script src="<?php echo base_url();?>assets/js/core/popper.min.js"></script>
	<script src="<?php echo base_url();?>assets/js/core/bootstrap.min.js"></script>
	<script src="<?php echo base_url();?>assets/js/atlantis.min.js"></script>
</body>
</html>

