<?php defined('BASEPATH') or exit('No direct script access allowed');

class Dashboard extends MX_Controller
{
  function __construct()
  {
      parent::__construct();
      $this->load->model('login/UserModel');
	  $this->load->model('login/ReferensiModel');
      if( !$this->session->userdata('isLoggedIn') ) {
         redirect(base_url().'login/show_login');
      }
  }

  function index()
  {
      $data['judulpage']='Dashboard';
      $this->load->view('DashboardView',$data);
  }
}