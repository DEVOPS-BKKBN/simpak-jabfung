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
  function notifikasi()
  {
      $data['judulpage']='Notifikasi';
      $this->load->view('NotifikasiView',$data);
  }
  function modal()
  {
      $data['action']=$this->input->get('action');
      $data['hid']=$this->input->get('hid');
      $this->load->view('ModalDashboardView',$data);
  }
}