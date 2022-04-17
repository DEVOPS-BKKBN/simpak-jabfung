<?php defined('BASEPATH') or exit('No direct script access allowed');

class Penilai extends MX_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('login/UserModel');
        $this->load->model('login/ProsesModel');
        $this->load->model('login/ReferensiModel');
        
        if($this->session->userdata('leveluser')!='3'  ) {
           redirect(base_url().'login/show_login');
        }
        
    }
	function add_dokumennilai(){
		$sql="UPDATE dokumen SET notes_approval='".$this->input->post('ket')."',status_approval='".$this->input->post('seleksi')."',updateddate=NOW(),updatedby='".$this->session->userdata('userName')."' WHERE dokumen_hid='".$this->input->post('hid')."' AND pemohon_hid='".$this->input->post('phid')."'";
		$save=$this->db->query($sql);
		
		// update nilai di dupak
		$sql="UPDATE dupak SET total_ak_penilai='".$this->input->post('nilai')."', penilaiandate=NOW(),penilaianby='".$this->session->userdata('userName')."' WHERE hid='".$this->input->post('dupakhid')."' AND pemohon_id='".$this->input->post('phid')."'";
		
		$save=$this->db->query($sql);
		$this->session->set_flashdata('response','<div class="alert alert-success m-t-40">Penilaian berhasil disimpan. </div>');
		
		$this->ReferensiModel->insert_logs($this->session->userdata('userName'),'create','approval butir dupak',$this->input->post('dupakhid'),'dupak');
		
		redirect('penilai/penilaian?hid='.md5(TOKEN_DOP.$this->input->post('phid')).'&tab=kegiatan');
	}
	function finishdupak(){
		
		// cek apakah semua sdh dicek
		$sql="SELECT SUM(CASE WHEN penilaiandate IS NOT NULL THEN 1 ELSE 0 END) jmlnilai,SUM(1) jml FROM dupak WHERE pemohon_id='".$this->input->post('hid')."'";
		$cn=$this->db->query($sql);
		$rw=$cn->row();
		
		if ($rw->jml == $rw->jmlnilai){
			echo 'sukses';
			$sql="UPDATE pemohon SET status='4',penilaiandate=NOW(),updateddate=NOW(),updatedby='".$this->session->userdata('userName')."' WHERE hid='".$this->input->post('hid')."'";
			//echo $sql;
			$save=$this->db->query($sql);
			
			$this->ReferensiModel->insert_logs($this->session->userdata('userName'),'create','selesaikan penilaian',$this->input->post('hid'),'pemohon');
			
			$this->session->set_flashdata('response','<div class="alert alert-success m-t-40">Penilaian berhasil diselesaikan. </div>'); 
		}else{
			echo "Penilian belum lengkap.\nJumlah butir yang sudah dinilai : ".($rw->jmlnilai)." dari ".$rw->jml;		
		}
		
		exit();
		//var_dump($_POST);
		
	}
	function ongoing() {
        $data['judulpage']='Ongoing';
        $data['action']='ongoing';
		$data['hid']=$this->input->get('hid');
		
        $this->load->view('OngoingView',$data);
       
    }
	function finish() {
        $data['judulpage']='Penilaian Sudah Selesai';
        $data['action']='finish';
		$data['hid']=$this->input->get('hid');
		
        $this->load->view('FinishView',$data);
       
    }
	function penilaian() {
        $data['judulpage']='Penilaian';
        $data['action']='penilaian';
		$sql="(SELECT a.*,u.foto fotopegawai,
		CONCAT(DATE_FORMAT(startdate,'%d %b %Y'),' s.d ',DATE_FORMAT(enddate,'%d %b %Y')) periode
		FROM pemohon a JOIN periode b ON a.periode_hid=b.hid JOIN users u ON u.Username=a.nip) dupak";
		$query=$this->db->get_where($sql,array("md5(CONCAT('".TOKEN_DOP."',hid))"=>$this->input->get('hid')));
		$rw=$query->row();
		$data['rw']=$rw;
		$data['nomor']=$this->ReferensiModel->NomorDupak($rw->hid);
		$data['tab']=$this->input->get('tab');
		$data['hid']=$this->input->get('hid');
		$data['status']=$rw->status;
		$data['phid']=$rw->hid;
		
        $this->load->view('PenilaianView',$data);
       
    }
    function modal(){
        $hid = $this->input->get('hid');
        $hid = preg_replace('/[^a-zA-Z0-9-_\.]/', '', $hid);
        $data['hid'] = $hid;
        $data['action'] = $this->input->get('action');
        
        $this->load->view('ModalPenilaiView', $data);
    }
}