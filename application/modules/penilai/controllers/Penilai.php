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
		
		// dokumen_penilai
		$penilaiid=$this->ReferensiModel->LoadSQL("SELECT hid judul FROM penilai WHERE nip='".$this->session->userdata('userName')."'");
		
		$sql="SELECT hid judul FROM dokumen_penilai WHERE dokumen_id='".$this->input->post('hid')."' AND penilai_id='$penilaiid'";
		$hid=$this->ReferensiModel->LoadSQL($sql);
		
		
		$data=array(
				'dokumen_id'=>$this->input->post('hid'),
				'penilai_id'=>$penilaiid,
				'status'=>$this->input->post('seleksi'),
				'notes'=>$this->input->post('ket')
			);
		if ($this->input->post('tglr')!='') $data=array_merge($data,array('maxrev_date'=>$this->ReferensiModel->DMYtoYMD($this->input->post('tglr'))));
			
		if ($hid==''){
			$data=array_merge($data,array('creation_date'=>date("Y-m-d H:i:s"),'created_by'=>$this->session->userdata('userName')));
			$this->ProsesModel->insert_personal($data,'dokumen_penilai');
			
		}else{
			$data=array_merge($data,array('updated_date'=>date("Y-m-d H:i:s"),'updated_by'=>$this->session->userdata('userName')));
			$this->ProsesModel->update_personal($data,$hid,'dokumen_penilai','hid');
		}
		
		//var_dump($_POST);
		
		// dupak penilai
		
		$sql="SELECT hid judul FROM dupak_penilai WHERE dupak_id='".$this->input->post('dupakhid')."' AND penilai_id='$penilaiid'";
		$hid=$this->ReferensiModel->LoadSQL($sql);
		
		
		$data=array(
				'dupak_id'=>$this->input->post('dupakhid'),
				'penilai_id'=>$penilaiid,
				'total_nilai'=>$this->input->post('nilai'),
				'status'=>$this->input->post('seleksi'),
				'notes'=>$this->input->post('ket')
			);
		if ($this->input->post('tglr')!='') $data=array_merge($data,array('maxrev_date'=>$this->ReferensiModel->DMYtoYMD($this->input->post('tglr'))));
					
		if ($hid==''){
			$data=array_merge($data,array('creation_date'=>date("Y-m-d H:i:s"),'created_by'=>$this->session->userdata('userName')));
			$this->ProsesModel->insert_personal($data,'dupak_penilai');
			
		}else{
			$data=array_merge($data,array('updated_date'=>date("Y-m-d H:i:s"),'updated_by'=>$this->session->userdata('userName')));
			$this->ProsesModel->update_personal($data,$hid,'dupak_penilai','hid');
		}
		
		//exit();
		/*
		$sql="UPDATE dokumen SET notes_approval='".$this->input->post('ket')."',status_approval='".$this->input->post('seleksi')."',updateddate=NOW(),updatedby='".$this->session->userdata('userName')."' WHERE dokumen_hid='".$this->input->post('hid')."' AND pemohon_hid='".$this->input->post('phid')."'";
		$save=$this->db->query($sql);
		
		// update nilai di dupak
		if ($this->input->post('tglr')!='') $data=array_merge($data,array('maxrev_date'=>$this->ReferensiModel->DMYtoYMD($this->input->post('tglr'))));
		$sql="UPDATE dupak SET total_ak_penilai='".$this->input->post('nilai')."', penilaiandate=NOW(),penilaianby='".$this->session->userdata('userName')."' WHERE hid='".$this->input->post('dupakhid')."' AND pemohon_id='".$this->input->post('phid')."'";
		$save=$this->db->query($sql);
		*/
		
		$this->session->set_flashdata('response','<div class="alert alert-success m-t-40">Penilaian berhasil disimpan. </div>');
		
		
		
		$this->ReferensiModel->insert_logs($this->session->userdata('userName'),'create','approval butir dupak',$this->input->post('dupakhid'),'dupak');
		
		redirect('penilai/penilaian?hid='.md5(TOKEN_DOP.$this->input->post('phid')).'&tab=kegiatan');
	}
	function finishdupak(){
		
		$penilaiid=$this->ReferensiModel->LoadSQL("SELECT hid judul FROM penilai WHERE nip='".$this->session->userdata('userName')."'");
		
		// cek apakah semua sdh dicek
		//$sql="SELECT SUM(CASE WHEN penilaiandate IS NOT NULL THEN 1 ELSE 0 END) jmlnilai,SUM(1) jml FROM dupak WHERE pemohon_id='".$this->input->post('hid')."'";
		$sql="SELECT SUM(1) jml,SUM(nilai) jmlnilai FROM (SELECT a.hid,(SELECT SUM(1) FROM dupak_penilai WHERE dupak_id=a.hid AND penilai_id='$penilaiid') nilai  FROM dupak a WHERE pemohon_id='".$this->input->post('hid')."' ) a";
		$cn=$this->db->query($sql);
		$rw=$cn->row();
		
		if ($rw->jml == $rw->jmlnilai){
			echo 'sukses';
			$sql="UPDATE pemohon SET status='4',penilaiandate=NOW(),updateddate=NOW(),updatedby='".$this->session->userdata('userName')."' WHERE hid='".$this->input->post('hid')."'";
			//echo $sql;
			$save=$this->db->query($sql);
			
			// update dupak_penilai
			$sql="UPDATE pemohon_penilai SET  penilaian_date=NOW() WHERE pemohon_id='".$this->input->post('hid')."' AND penilai_id='$penilaiid'";
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
		$penilaiid=$this->ReferensiModel->LoadSQL("SELECT hid judul FROM penilai WHERE nip='".$this->session->userdata('userName')."'");
		$data['penilaiid']=$penilaiid;
		
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
		
		$penilaiid=$this->ReferensiModel->LoadSQL("SELECT hid judul FROM penilai WHERE nip='".$this->session->userdata('userName')."'");																
																
		$data['nomor']=$this->ReferensiModel->NomorDupak($rw->hid);
		$data['tab']=$this->input->get('tab');
		$data['hid']=$this->input->get('hid');
		$data['status']=$this->ReferensiModel->LoadSQL("SELECT CASE WHEN penilaian_date IS NULL THEN '3' ELSE 4 END judul FROM pemohon_penilai WHERE pemohon_id='".$rw->hid."' AND penilai_id='$penilaiid'");
		$data['phid']=$rw->hid;
		$data['penilaiid']=$penilaiid;
		
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