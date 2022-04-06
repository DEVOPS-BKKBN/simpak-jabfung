<?php defined('BASEPATH') or exit('No direct script access allowed');

class Penilaian extends MX_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('login/UserModel');
        $this->load->model('login/ProsesModel');
        $this->load->model('login/ReferensiModel');
        
        if( !$this->session->userdata('isLoggedIn') && $this->session->userdata('leveluser')!='1' ) {
           redirect(base_url().'login/show_login');
        }
    }
    function updatePeriode(){
        $tgl1="01-".$this->input->post('tgl1');
		$tgl2="01-".$this->input->post('tgl2');
		$nama=$this->input->post('nama');
		$ket=$this->input->post('keterangan');
		$status=$this->input->post('status');
		$hid=$this->input->post('hid');
		$nomor=$this->input->post('nomor');
		$kota=$this->input->post('kota');
		
		$format=$this->input->post('format');
		
		$data=array(
			'namaperiode'=>$nama,
			'status'=>$status,
			'notes'=>$ket,
			'namaperiode'=>$nama,
			'nomor_awal'=>$nomor,
			'format_nomor'=>$format,
			'startdate '=>$this->ReferensiModel->DMYtoYMD($tgl1),
			'enddate '=>$this->ReferensiModel->DMYtoYMD($tgl2),
			'kota_pak'=>$kota
		);
		
		// pejabat penilai
		// ambil nama lengkap dari data utama
		$pegawai=explode('|',$this->input->post('pegawai'));
		$niplama=$pegawai[1];
		$nipbaru=$pegawai[0];
		
		
		$urlapi=URL_SIMSDM."index.php/ProsesController/dataUtama";
		$datacurl = array("token" => TOKEN_SIMSDM,"nip"=>$niplama);
		$post = json_encode($datacurl);

			
			
		$ch = curl_init();
		curl_setopt($ch, CURLOPT_URL,$urlapi);
		curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
		curl_setopt($ch, CURLOPT_POSTFIELDS, $post);
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
		curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		curl_setopt($ch, CURLOPT_HTTPHEADER, array(
		'Content-Type: application/json',
		'Content-Length: ' . strlen($post))
		);

		curl_setopt($ch, CURLOPT_RETURNTRANSFER,1);
		$result=curl_exec ($ch);
		curl_close ($ch);
		$json = json_decode($result, true);
		
		if (!empty($json)){
			$data=array_merge($data,array('pejabat_pak'=>$json[0]['namalengkap'],'nippejabat_pak'=>$nipbaru));
		}
		
		if ($hid==''){
			$this->ProsesModel->insert_personal($data,'periode');
			$this->session->set_flashdata('response','<div class="alert alert-success m-t-40">Data berhasil ditambahkan. </div>');
		}else{
			$this->ProsesModel->update_personal($data,$hid,'periode','hid');
			$this->session->set_flashdata('response','<div class="alert alert-success m-t-40">Data berhasil diupdate. </div>');
		}
		
		
		redirect('penilaian/periode', 'refresh');
    }
    public function updatePenilai(){
        $pegawai=explode('|',$this->input->post('pegawai'));
		$niplama=$pegawai[1];
		$nipbaru=$pegawai[0];
		$foto=$pegawai[2];
		
		$num=$this->ReferensiModel->LoadSQL("SELECT COUNT(*) judul FROM penilai WHERE nip='$nipbaru'");
		if ($num>0){
			$this->session->set_flashdata('response','<div class="alert alert-danger m-t-40">Penilai sudah ada di master. </div>');
			redirect('master/penilai');
			exit();
		}	
		
		$urlapi=URL_SIMSDM."index.php/ProsesController/dtlPegawai";
		$data = array("token" => TOKEN_SIMSDM,"nip"=>$niplama);
		$post = json_encode($data);

			
			
		$ch = curl_init();
		curl_setopt($ch, CURLOPT_URL,$urlapi);
		curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
		curl_setopt($ch, CURLOPT_POSTFIELDS, $post);
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
		curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		curl_setopt($ch, CURLOPT_HTTPHEADER, array(
		'Content-Type: application/json',
		'Content-Length: ' . strlen($post))
		);

		curl_setopt($ch, CURLOPT_RETURNTRANSFER,1);
		$result=curl_exec ($ch);

		curl_close ($ch);
		$json = json_decode($result, true);
		
		$dataoutput=array(
			'nip'=>$nipbaru,
			'jabatan'=>$json[0]['jabatan'],
			'golonganpangkat'=>$json[0]['golongaan'],
			'unitkerja'=>$json[0]['biro'],
			'foto'=>$foto,
			'creationdate'=>date("Y-m-d H:i:s"),
			'createdby'=>$this->session->userdata('userName'),
			'sebagai'=>$this->input->post('sebagai'),
            'jenjang'=>$this->input->post('jenjang'),
		);
		
		// ambil nama lengkap dari data utama
		$urlapi=URL_SIMSDM."index.php/ProsesController/dataUtama";
		$data = array("token" => TOKEN_SIMSDM,"nip"=>$niplama);
		$post = json_encode($data);

			
			
		$ch = curl_init();
		curl_setopt($ch, CURLOPT_URL,$urlapi);
		curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
		curl_setopt($ch, CURLOPT_POSTFIELDS, $post);
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
		curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		curl_setopt($ch, CURLOPT_HTTPHEADER, array(
		'Content-Type: application/json',
		'Content-Length: ' . strlen($post))
		);

		curl_setopt($ch, CURLOPT_RETURNTRANSFER,1);
		$result=curl_exec ($ch);

		curl_close ($ch);
		$json = json_decode($result, true);
		
		$dataoutput=array_merge($dataoutput,array('namalengkap'=>$json[0]['namalengkap']));
		
		$this->ProsesModel->insert_personal($dataoutput,'penilai');
		$this->session->set_flashdata('response','<div class="alert alert-success m-t-40">Data berhasil ditambahkan. </div>');
        
		redirect('penilaian/penilai');
    }
    public function updateEditPenilai(){
		
		$hid=$this->input->post('hid');
		
		$dataoutput=array(
			'jabatan'=>$this->input->post('jbt'),
			'namalengkap'=>$this->input->post('nama'),
			'golonganpangkat'=>$this->input->post('golongan'),
			'unitkerja'=>$this->input->post('unitkerja'),
			'sebagai'=>$this->input->post('sebagai'),
			'creationdate'=>date("Y-m-d H:i:s"),
			'createdby'=>$this->session->userdata('userName'),
            'jenjang'=>$this->input->post('jenjang'),
		);
		
		$this->ProsesModel->update_personal($dataoutput,$hid,'penilai','hid');
		$this->session->set_flashdata('response','<div class="alert alert-success m-t-40">Data berhasil diupdate. </div>');
		
		redirect('penilaian/penilai');
	}
    public function hapusPeriode(){
		
		$data=$this->input->post('hid');
		$this->db->where_in('md5(hid)', $data);
        $this->db->delete('periode');
		$this->session->set_flashdata('response','<div class="alert alert-success m-t-40">Data berhasil dihapus. </div>');
		
	}
    public function hapusPenilai(){
		
		$data=$this->input->post('hid');
		$this->db->where_in('md5(hid)', $data);
        $this->db->delete('penilai');
		$this->session->set_flashdata('response','<div class="alert alert-success m-t-40">Data berhasil dihapus. </div>');
		
	}
    function periode() {
        $data['judulpage']='Periode PAK';
        $data['action']='periode';
        $this->load->view('PeriodeView',$data);
       
    }
    function penilai() {
        $data['judulpage']='Setting Penilai';
        $data['action']='penilai';
        $this->load->view('PenilaiView',$data);
       
    }
    function users() {
        $data['judulpage']='Master User';
        $data['action']='users';
        $this->load->view('UsersView',$data);
       
    }
    function kamus() {
        $data['judulpage']='Butir Angka Kredit';
        $data['action']='kamus';
        $this->load->view('KamusView',$data);
       
    }
    function modal(){
        $hid = $this->input->get('hid');
        $hid = preg_replace('/[^a-zA-Z0-9-_\.]/', '', $hid);
        $data['hid'] = $hid;
        $data['action'] = $this->input->get('action');
        
        $this->load->view('ModalPenilaianView', $data);
    }
}