<?php defined('BASEPATH') or exit('No direct script access allowed');

class Login extends MX_Controller
{
  function __construct()
  {
      parent::__construct();
      $this->load->model('UserModel');
  }

  function index() {
		
       if( $this->session->userdata('isLoggedIn') ) {
         redirect(base_url().'dashboard/index');
        } else {
            $this->show_login(false);
        }


    }

    function authLogin() {
        // Create an instance of the user model
        $this->load->model('UserModel');
		$this->load->library('securimage/securimage.php');

        // Grab the email and password from the form POST
        $email = $this->input->post('username');
        $pass  = $this->input->post('password');
        $token = $this->input->post('csrf_token');
		
		
	
		if (empty($pass)) {
			$this->session->set_flashdata('response','<div class="alert alert-card alert-danger" role="alert">Password kosong.<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button></div>');
			redirect('login/show_login');
		}
		
		// validasi captcha
		//include_once 'assets/plugins/securimage/securimage.php';
		$securimage = new Securimage();
				
		
		
		if ($securimage->check($this->input->post('user-captcha')) == false) {
			$this->session->set_flashdata('response','<div class="alert alert-card alert-danger" role="alert">Captcha salah.<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button></div>');
			redirect('login/show_login');
			exit();
		}
		
		
        //Ensure values exist for email and pass, and validate the user's credentials
        if( $email && $pass && $this->UserModel->validate_user($email,$pass) && $this->UserModel->checkToken($token, 'sig_in')) {
            redirect(base_url().'dashboard/index');
        } else {
			
			
			
            // Otherwise show the login screen with an error message.
			
            $this->session->set_flashdata('response','<div class="alert alert-card alert-danger" role="alert">Username/Password salah.<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button></div>');
			redirect('/login/show_login');
        }
    }
    function securimage() {
		$this->load->library('securimage/securimage.php');
		$img = new Securimage();
		$img->show(); // alternate use:  $img->show('/path/to/background.jpg');
	}

    function show_login( $show_error = false ) {
        $this->load->model('UserModel');	
        $data['error'] = $show_error;
		
		if( $this->session->userdata('isLoggedIn') ) {
			redirect(base_url().'dashboard/index');
        }
		
		
		$this->load->view('LoginView',$data);
		
    }

    function logout() {	  
	  // update last logout
      //$this->UserModel->update_lastlogout($this->session->userdata('userName'));
      $this->session->sess_destroy();
      $this->index();
    }
}