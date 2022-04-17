<?php defined('BASEPATH') or exit('No direct script access allowed');

class Master extends MX_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('login/UserModel');
        $this->load->model('login/ProsesModel');
        $this->load->model('login/ReferensiModel');
        
        if( $this->session->userdata('leveluser')!='1'  ) {
           redirect(base_url().'login/show_login');
        }
        
    }
    public function hapusUser(){
		
		$data=$this->input->post('hid');
		$this->db->where_in('md5(Id)', $data);
        $this->db->delete('users');
		$this->session->set_flashdata('response','<div class="alert alert-success m-t-40">Data berhasil dihapus. </div>');
		
	}
    public function hapusKamus(){
		/*
		$data=$this->input->post('hid');
		$this->db->where_in('md5(hid)', $data);
        $this->db->delete('kamus_kegiatan');
		$this->session->set_flashdata('response','<div class="alert alert-success m-t-40">Data berhasil dihapus. </div>');
		*/
		$hid=$this->input->post('hid');
		$data=array(
			'deleted_at'=>date("Y-m-d H:i:s"),
			'deleted_by'=>$this->session->userdata('userName')
		);
		$this->ProsesModel->update_personal($data,$hid,'kamus_kegiatan','md5(hid)');
		$this->session->set_flashdata('response', $this->ReferensiModel->showMessage('Data berhasil dihapus.', 'success'));
		
	}
    public function hapusJenjang(){
		$hid=$this->input->post('hid');
		$data=array(
			'deleted_at'=>date("Y-m-d H:i:s"),
			'deleted_by'=>$this->session->userdata('userName')
		);
		$this->ProsesModel->update_personal($data,$hid,'jenis_jabatan','md5(hid)');
		$this->session->set_flashdata('response', $this->ReferensiModel->showMessage('Data berhasil dihapus.', 'success'));
		
		/*
		$data=$this->input->post('hid');
		$this->db->where_in('md5(hid)', $data);
        $this->db->delete('jenjang');
		$this->session->set_flashdata('response','<div class="alert alert-success m-t-40">Data berhasil dihapus. </div>');
		*/
		
	}
	public function hapusKelompok(){
		
		$data=$this->input->post('hid');
		$this->db->where_in('md5(hid)', $data);
        $this->db->delete('kelompok');
		$this->session->set_flashdata('response','<div class="alert alert-success m-t-40">Data berhasil dihapus. </div>');
		
	}
    function updateUser(){
        $hid=$this->input->post('hid');
		
		$data=array(
			'Username'=>$this->input->post('uname'),
			'DisplayName'=>$this->input->post('nama'),
			'Password'=>md5($this->input->post('cpwd')),
			'RolesId'=>$this->input->post('roles'),
		);
		if ($hid==''){
            $data=array_merge($data,array('CreationDate'=>date("Y-m-d H:i:s"),'CreatedBy'=>$this->session->userdata('userName')));
			$this->ProsesModel->insert_personal($data,'users');
			$this->session->set_flashdata('response', $this->ReferensiModel->showMessage('Data telah berhasil ditambahkan.', 'success'));
		}else{
            $data=array_merge($data,array('UpdatedDate'=>date("Y-m-d H:i:s"),'UpdatedBy'=>$this->session->userdata('userName')));
			$this->ProsesModel->update_personal($data,$hid,'users','Id');
			$this->session->set_flashdata('response', $this->ReferensiModel->showMessage('Sukses mengupdate data.', 'success'));
		}
		
		
		redirect('master/users', 'refresh');
    }
	public function add_dokumen(){
		$data=array(
			'kegiatan_hid'=>$this->input->post('hid'),
			'output'=>$this->input->post('nama'),
			'creation_date'=>date("Y-m-d H:i:s"),
			'created_by'=>$this->session->userdata('userName')
		);
		
		$this->ProsesModel->insert_personal($data,'kamus_dupak');
		$this->session->set_flashdata('response', $this->ReferensiModel->showMessage('Data telah berhasil ditambahkan.', 'success'));
		redirect('master/kamus?jabatan='.$this->input->post('jabatan').'&jenisjab='.$this->input->post('jenisjab'), 'refresh');
	}
	public function hapusDokumen(){
		
		$hid=$this->input->post('hid');
		$data=array(
			'deleted_at'=>date("Y-m-d H:i:s"),
			'deleted_by'=>$this->session->userdata('userName')
		);
		$this->ProsesModel->update_personal($data,$hid,'kamus_dupak','md5(hid)');
		$this->session->set_flashdata('response', $this->ReferensiModel->showMessage('Data berhasil dihapus.', 'success'));
		
	}
    function updateKamus(){
        $hid=$this->input->post('hid');
		
		$data=array(
			'kategori'=>$this->input->post('kategori'),
			'unsur_kegiatan'=>$this->input->post('unsur'),
			'subunsur_kegiatan'=>$this->input->post('subunsur'),
			'butir_kegiatan'=>$this->input->post('nama'),
			'jenis'=>$this->input->post('jenisak'),
			'jenisjabatan_id'=>$this->input->post('jjab'),
			'output'=>$this->input->post('output'),
			'jumlah_ak'=>str_replace(",",".",$this->input->post('ak')),
		);
		if ($this->input->post('mjabatan')!='') $data=array_merge($data,array('jabatan_id'=>$this->input->post('mjabatan')));
		if ($this->input->post('kelompok')!='') $data=array_merge($data,array('kelompok_jabatan'=>$this->input->post('kelompok')));
		
		if ($hid==''){
            $data=array_merge($data,array('creation_date'=>date("Y-m-d H:i:s"),'created_by'=>$this->session->userdata('userName')));
			$this->ProsesModel->insert_personal($data,'kamus_kegiatan');
			$this->session->set_flashdata('response', $this->ReferensiModel->showMessage('Data telah berhasil ditambahkan.', 'success'));
		}else{
			$data=array_merge($data,array('updated_date'=>date("Y-m-d H:i:s"),'updated_by'=>$this->session->userdata('userName')));
			$this->ProsesModel->update_personal($data,$hid,'kamus_kegiatan','hid');
			$this->session->set_flashdata('response', $this->ReferensiModel->showMessage('Sukses mengupdate data.', 'success'));
		}
		
		
		redirect('master/kamus?jabatan='.$this->input->post('mjabatan').'&kelompok='.$this->input->post('kelompok').'&jenisjab='.$this->input->post('jjab'), 'refresh');
    }
	public function hapusJabatan(){
		
		$data=$this->input->post('hid');
		$this->db->where_in('md5(hid)', $data);
        $this->db->delete('jabatan');
		$this->session->set_flashdata('response','<div class="alert alert-success m-t-40">Data berhasil dihapus. </div>');
		
	}
	public function hapusListKelompok(){
		
		$data=$this->input->post('hid');
		$this->db->where_in('md5(hid)', $data);
        $this->db->delete('kelompok_lines');
		$this->session->set_flashdata('response','<div class="alert alert-success m-t-40">Data berhasil dihapus. </div>');
		
	}
	function copyKamus(){
				
		$ids=explode(",",$this->input->post('ids'));
		for ($i=0;$i<count($ids);$i++){
			
			// cek if exists
			
			
			$sql="INSERT INTO kamus_kegiatan (kategori,uraian_kegiatan,jabatan_id,output,creation_date,created_by) SELECT kategori,uraian_kegiatan,'".$this->input->post('jabatan')."' jabatan_id,output,NOW(),'".$this->session->userdata('userName')."' FROM kamus_kegiatan a WHERE hid IN(".$ids[$i].") AND NOT EXISTS (SELECT 'x' FROM kamus_kegiatan WHERE jabatan_id='".$this->input->post('jabatan')."' AND uraian_kegiatan=a.uraian_kegiatan)";
			$save=$this->db->query($sql);
			$hdrid=$this->db->insert_id();
		
			// insert dokumen
			$sql="INSERT INTO kamus_dupak (kegiatan_hid,output,creation_date,created_by) SELECT '$hdrid' kegiatan_hid,output,NOW(),'".$this->session->userdata('userName')."' FROM kamus_dupak a WHERE hid IN(".$ids[$i].") AND NOT EXISTS(SELECT 'x' FROM kamus_dupak WHERE kegiatan_hid='$hdrid' AND output=a.output)";
			$save=$this->db->query($sql);
		
		}
		// insert kamus
		/*
		$sql="INSERT INTO kamus_kegiatan (kategori,uraian_kegiatan,jabatan_id) SELECT kategori,uraian_kegiatan,'".$this->input->post('jabatan')."' jabatan_id FROM kamus_kegiatan WHERE hid IN(".$this->input->post('ids').")";
		$save=$this->db->query($sql);
		
		// insert dokumen
		$sql="INSERT INTO kamus_dupak (kegiatan_hid,output) SELECT kegiatan_hid,output FROM kamus_dupak WHERE hid IN(".$this->input->post('ids').")";
		$save=$this->db->query($sql);
		*/
		
		$this->session->set_flashdata('response','<div class="alert alert-success m-t-40">Data berhasil disimpan. </div>');
	}
	function updateJabatan(){
        $hid=$this->input->post('hid');
		
		$data=array(
			'kode_jab'=>$this->input->post('kdjab'),
			'jabatan'=>$this->input->post('nama'),
			'jenisjabatan_id'=>$this->input->post('jjabatan'),
			'kelompok_jabatan'=>$this->input->post('kelompok'),
			'ak_kenaikan'=>$this->input->post('ak'),
		);
		if ($hid==''){
            $data=array_merge($data,array('Creation_Date'=>date("Y-m-d H:i:s"),'Created_By'=>$this->session->userdata('userName')));
			$this->ProsesModel->insert_personal($data,'jenjang_jabatan');
			$this->session->set_flashdata('response', $this->ReferensiModel->showMessage('Data telah berhasil ditambahkan.', 'success'));
		}else{
			$data=array_merge($data,array('updated_date'=>date("Y-m-d H:i:s"),'updated_by'=>$this->session->userdata('userName')));
			$this->ProsesModel->update_personal($data,$hid,'jenjang_jabatan','hid');
			$this->session->set_flashdata('response', $this->ReferensiModel->showMessage('Sukses mengupdate data.', 'success'));
		}
		
		
		redirect('master/jabatan', 'refresh');
    }
	function updateKelompok(){
        $hid=$this->input->post('hid');
		
		$data=array(
			'kelompok'=>$this->input->post('nama'),
		);
		if ($hid==''){
            
			$this->ProsesModel->insert_personal($data,'kelompok');
			$this->session->set_flashdata('response', $this->ReferensiModel->showMessage('Data telah berhasil ditambahkan.', 'success'));
		}else{
           
			$this->ProsesModel->update_personal($data,$hid,'kelompok','hid');
			$this->session->set_flashdata('response', $this->ReferensiModel->showMessage('Sukses mengupdate data.', 'success'));
		}
		
		
		redirect('master/kelompok', 'refresh');
    }
    function updateJenjang(){
        $hid=$this->input->post('hid');
		
		$data=array(
			'jenis_jabatan'=>$this->input->post('nama'),
		);
		if ($hid==''){
            
			$this->ProsesModel->insert_personal($data,'jenis_jabatan');
			$this->session->set_flashdata('response', $this->ReferensiModel->showMessage('Data telah berhasil ditambahkan.', 'success'));
		}else{
           
			$this->ProsesModel->update_personal($data,$hid,'jenis_jabatan','hid');
			$this->session->set_flashdata('response', $this->ReferensiModel->showMessage('Sukses mengupdate data.', 'success'));
		}
		
		
		redirect('master/jenisjabatan', 'refresh');
    }
    public function caripegawai(){
		
		$urlapi=URL_SIMSDM."index.php/ProsesController/searchPenilai";
		$data = array("token" => TOKEN_SIMSDM,"cari"=>$this->input->get('q'));
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
		
		
		$answer=array();
		
		if (!empty($json)){
			foreach($json as $item) { //foreach element in $arr
				$answer[] = array("id"=>$item['NIP'].'|'.$item['PNS_NIPLAMA'].'|'.$item['foto'], "text"=>$item['nama'].' '.$item['NIP'].' '.$item['Biro']);
			}
		}
		echo json_encode($answer);
	}
    function jenjang() {
        $data['judulpage']='Jenjang Jabatan';
        $data['action']='jenjang';
        $this->load->view('JenjangView',$data);
       
    }
	function jenisjabatan() {
        $data['judulpage']='Jenis Jabatan';
        $data['action']='jenjang';
        $this->load->view('JenjangView',$data);
       
    }
	function pejabatjf() {
        $data['judulpage']='Daftar Pejabat Fungsional';
        $data['action']='pejabatjf';
        $this->load->view('PegawaiJFView',$data);
       
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
    function checkUsername(){
        $uname=$this->input->post('uname');
            
            if ($uname=='') echo(json_encode(true));
                else{
                    $num=$this->ReferensiModel->LoadSQL("SELECT COUNT(*) judul FROM users WHERE username='$uname'");
                    if ($num>0) echo(json_encode(false));
                        else echo(json_encode(true));
                }
            
    }
	function jabatan() {
        $data['judulpage']='Master Jabatan';
        $data['action']='jabatan';
        $this->load->view('JabatanView',$data);
       
    }
	function kelompok() {
        $data['judulpage']='Kelompok Jabatan';
        $data['action']='kelompok';
        $this->load->view('KelompokView',$data);
       
    }
	function updateListKelompok(){
		//var_dump($_POST);
		
		if (!empty($this->input->post('ckjabatan'))){
			$listjabatan=implode(',',$this->input->post('ckjabatan'));
			$hid=$this->input->post('hid');
			$sql="INSERT INTO kelompok_lines (kelompok_id,jabatan_id)
				SELECT '$hid' kelompok_id,a.hid jabatan_id FROM jabatan a WHERE hid IN($listjabatan) AND NOT exists(SELECT jabatan_id FROM kelompok_lines WHERE jabatan_id=a.hid AND kelompok_id='$hid')";
			$save=$this->db->query($sql);
			$this->session->set_flashdata('response', $this->ReferensiModel->showMessage('Data telah berhasil ditambahkan.', 'success'));
		}
		
		redirect('master/listkelompok?hid='.$hid.'&action=kelompok', 'refresh');
	}
	function listkelompok() {
        $data['judulpage']='Detil Kelompok Jabatan';
        $data['action']='listkelompok';
		$data['hid']=$this->input->get('hid');
		
        $this->load->view('KelompokView',$data);
       
    }
    function modal(){
        $hid = $this->input->get('hid');
        $hid = preg_replace('/[^a-zA-Z0-9-_\.]/', '', $hid);
        $data['hid'] = $hid;
        $data['action'] = $this->input->get('action');
        
        $this->load->view('ModalMasterView', $data);
    }
}