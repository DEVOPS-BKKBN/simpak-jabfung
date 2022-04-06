<?php defined('BASEPATH') or exit('No direct script access allowed');

class User extends MX_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('login/UserModel');
        $this->load->model('login/ProsesModel');
        $this->load->model('login/ReferensiModel');
        
        if( !$this->session->userdata('isLoggedIn') ) {
           redirect(base_url().'login/show_login');
        }
        
    }
	function updatePwd(){
       // var_dump($_POST);
        $pwdhash=md5($this->input->post('cpwdbaru'));
        
        $data=array(
            'Password'=>$pwdhash,
        );
        
        $save = $this->ProsesModel->update_personal($data, $this->session->userdata('userName'), 'users', 'Username');
        $this->session->set_flashdata('response', $this->ReferensiModel->showMessage('Sukses merubah password.', 'success'));
        redirect(base_url().'user/chgpwd');
    }
	function daftarpak(){
		$num=$this->ReferensiModel->LoadSQL("SELECT COUNT(*) judul FROM pemohon WHERE nip ='".$this->session->userdata('userName')."' AND periode_hid='".$this->input->post('hid')."'");
		if ($num<1){
			$sql="INSERT INTO pemohon (periode_hid,nip,namalengkap,karpeg,pangkatgol,tmtgol,tmtjab,tempatlahir,tgllahir,jeniskelamin,pendidikan,jabatan,unitkerja,kabkota,kdjab,status,creationdate,createdby)
					SELECT '".$this->input->post('hid')."' periode,Username,DisplayName,Karpeg,PangkatGol,TmtGol,TmtJab,TempatLahir,TglLahir,JenisKelamin,PendidikanAkhir,Jabatan,BiroName,KdKab,KdJab,'1' Status,NOW(),'".$this->session->userdata('userName')."'
					FROM users WHERE Username='".$this->session->userdata('userName')."'";
					echo $sql;
			$save=$this->db->query($sql);
			$this->session->set_flashdata('response','<div class="alert alert-success m-t-40">Pendaftaran PAK berhasil. </div>');
		}
	}
	function updateProfil(){
		
	if ($this->session->userdata('leveluser')==''){	
		$pegawai=explode('|',$this->input->post('atasan'));
		$niplama=$pegawai[1];
		$nipbaru=$pegawai[0];
		
		
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
			'NIPAtasan'=>$nipbaru,
			'NIPLamaAtasan'=>$niplama,
			'JabatanAtasan'=>$json[0]['jabatan'],
			'PangkatGolAtasan'=>$json[0]['golongaan'],
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
		
		$dataoutput=array_merge($dataoutput,array('NamaAtasan'=>$json[0]['namalengkap']));
	}else{
		if (!empty($_FILES['imgupload']['name'])) {
			$dataoutput=array(
				'DisplayName'=>$this->input->post('nama')
			);
            if (!file_exists('assets/uploads/profil')) {
                mkdir('assets/uploads/profil', 0777, true);
            }

            $target_dir ='assets/uploads/profil';
            $ext = pathinfo($_FILES["imgupload"]["name"], PATHINFO_EXTENSION);
            $file_name='profil_'. $this->session->userdata('userName').'.'.$ext;
            $target_file = $target_dir .'/'.$file_name;
            if (move_uploaded_file($_FILES["imgupload"]["tmp_name"], $target_file)) {
                $dataoutput = array_merge($dataoutput, array('Foto' => $file_name));
            }
        }
	}	
	
		if (!empty($dataoutput)){
			$this->ProsesModel->update_personal($dataoutput,$this->session->userdata('userName'),'users','Username');
			$this->session->set_flashdata('response','<div class="alert alert-success m-t-40">Data berhasil diupdate. </div>');
		}
		redirect('user/profil');
	}
	public function simpandupak(){
		
		//var_dump($_POST);exit();
		
		$sql="SELECT a.* FROM kamus_kegiatan a JOIN kelompok b ON a.kelompok_id=b.hid 
			WHERE b.hid IN(SELECT kelompok_id FROM kelompok_lines a JOIN jabatan b ON a.jabatan_id=b.hid WHERE kode_jab='".$this->input->post('kdjab')."') ORDER BY a.hid";
													
		$cn = $this->db->query($sql);
		foreach ($cn->result() as $rw){
			if (!empty($this->input->post('lama'.$rw->hid))) $lama=$this->input->post('lama'.$rw->hid); else $lama=0;
			if (!empty($this->input->post('baru'.$rw->hid))) $baru=$this->input->post('baru'.$rw->hid); else $baru=0;
			
			$hid=$this->ReferensiModel->LoadSQL("SELECT hid judul FROM dupak WHERE pemohon_id='".$this->input->post('hid')."' AND kegiatan_id='".$rw->hid."'");
			if ($hid==''){
				$data=array(
					'pemohon_id'=>$this->input->post('hid'),
					'kegiatan_id'=>$rw->hid,
					'ak_lama'=>$lama,
					'ak_baru'=>$baru,
					'total_ak'=>($lama+$baru),
					'status'=>0,
					'creationdate'=>date("Y-m-d H:i:s"),
					'createdby'=>$this->session->userdata('userName')
				);
				//var_dump($data);
				$this->ProsesModel->insert_personal($data,'dupak');
			}else{
						$data=array(
							'pemohon_id'=>$this->input->post('hid'),
							'kegiatan_id'=>$rw->hid,
							'ak_lama'=>$lama,
							'ak_baru'=>$baru,
							'total_ak'=>($lama+$baru),
							'updateddate'=>date("Y-m-d H:i:s"),
							'updatedby'=>$this->session->userdata('userName')
						);
						$this->ProsesModel->update_personal($data,$hid,'dupak','hid');
			}		
		}
		$this->session->set_flashdata('response','<div class="alert alert-success m-t-40">Data berhasil disimpan. </div>');
		redirect('user/detildupak?hid='.md5(TOKEN_DOP.$this->input->post('hid')).'&tab=kegiatan');
	}
	public function del_dokumenpribadi(){
		$sql="SELECT * FROM pemohon WHERE hid='".$this->input->post('phid')."'";
		//echo $sql;
		$cn=$this->db->query($sql);
		$rw=$cn->row();
		
		$dokumen=$this->input->post('hid');
		// unlink file
		unlink("assets/uploads/dokumen/".$rw->nip."/".$rw->$dokumen);
		
		$sql="DELETE FROM dokumen WHERE hid='".$this->input->post('phid')."' AND jenis='administrasi'";
		$save=$this->db->query($sql);
		$this->session->set_flashdata('response','<div class="alert alert-success m-t-40">Dokumen berhasil dihapus. </div>');  
	
	}
	public function add_dokumen(){
		//var_dump($_POST);
		if (!empty($_FILES['inputFile']['name'])) {
			// create folder if doesn't exist
			$nip=$this->session->userdata('userName');
			
			$periodehid=$this->ReferensiModel->LoadSQL("SELECT periode_hid judul FROM pemohon a WHERE hid='".$this->input->post('phid')."'");
			
			if (!file_exists('assets/uploads/dokumen/'.$nip)) {
				mkdir('assets/uploads/dokumen/'.$nip, 0777, true);
			}
			if (!file_exists('assets/uploads/dokumen/'.$nip.'/'.$periodehid)) {
				mkdir('assets/uploads/dokumen/'.$nip.'/'.$periodehid, 0777, true);
			}
		
			$target_dir = 'assets/uploads/dokumen/'.$nip.'/'.$periodehid.'/';
			$file_name=$nip."_".basename(str_replace(" ","",$_FILES["inputFile"]["name"]));
			$target_file = $target_dir.$file_name;
		
			if (move_uploaded_file($_FILES["inputFile"]["tmp_name"], $target_file)) {
				
				// cek if exist
				$num=$this->ReferensiModel->LoadSQL("SELECT COUNT(*) judul FROM dokumen WHERE pemohon_hid='".$this->input->post('phid')."' AND dupak_hid='".$this->input->post('hid')."' AND dokumen_hid='".$this->input->post('dokid')."' AND jenis='pak'");
				if ($num<1) $sql="INSERT INTO dokumen (pemohon_hid,dupak_hid,dokumen_hid,dokumen_name,file_name,creationdate,createdby,jenis) VALUES('".$this->input->post('phid')."','".$this->input->post('hid')."','".$this->input->post('dokid')."','".$this->input->post('dokname')."','$file_name',NOW(),'$nip','pak')";
				else
				$sql="UPDATE dokumen SET file_name='$file_name',updateddate=NOW(),updatedby='$nip' WHERE pemohon_hid='".$this->input->post('phid')."' AND dupak_hid='".$this->input->post('hid')."' AND dokumen_hid='".$this->input->post('dokid')."'";
				$save=$this->db->query($sql);
				$this->session->set_flashdata('response','<div class="alert alert-success m-t-40">Dokumen berhasil diupload. </div>');  
			} else {
				$this->session->set_flashdata('response','<div class="alert alert-danger m-t-40">Dokumen gagal diupload. </div>'); 
			}
		}
		redirect('user/detildupak?hid='.md5(TOKEN_DOP.$this->input->post('phid')).'&tab=kegiatan');
	}
	function add_dokumenpribadi(){
		if (!empty($_FILES['inputFile']['name'])) {
			// create folder if doesn't exist
			$nip=$this->session->userdata('userName');
			
			$periodehid=$this->ReferensiModel->LoadSQL("SELECT periode_hid judul FROM pemohon a WHERE hid='".$this->input->post('phid')."'");
			
			if (!file_exists('assets/uploads/dokumen/'.$nip)) {
				mkdir('assets/uploads/dokumen/'.$nip, 0777, true);
			}
			if (!file_exists('assets/uploads/dokumen/'.$nip.'/'.$periodehid)) {
				mkdir('assets/uploads/dokumen/'.$nip.'/'.$periodehid, 0777, true);
			}
		
			$target_dir = 'assets/uploads/dokumen/'.$nip.'/'.$periodehid.'/';
			$file_name=$nip."_".basename(str_replace(" ","",$_FILES["inputFile"]["name"]));
			$target_file = $target_dir.$file_name;
		
			if (move_uploaded_file($_FILES["inputFile"]["tmp_name"], $target_file)) {
				
				// cek if exist
				$num=$this->ReferensiModel->LoadSQL("SELECT COUNT(*) judul FROM dokumen WHERE pemohon_hid='".$this->input->post('phid')."' AND dupak_hid='".$this->input->post('hid')."' AND dokumen_hid='".$this->input->post('dokid')."' AND jenis='administrasi'");
				if ($num<1) $sql="INSERT INTO dokumen (pemohon_hid,dupak_hid,dokumen_hid,dokumen_name,file_name,creationdate,createdby,jenis) VALUES('".$this->input->post('phid')."','".$this->input->post('hid')."','".$this->input->post('dokid')."','".$this->input->post('dokname')."','$file_name',NOW(),'$nip','administrasi')";
				else
				$sql="UPDATE dokumen SET file_name='$file_name',updateddate=NOW(),updatedby='$nip' WHERE pemohon_hid='".$this->input->post('phid')."' AND dupak_hid='".$this->input->post('hid')."' AND dokumen_hid='".$this->input->post('dokid')."'";
				$save=$this->db->query($sql);
				$this->session->set_flashdata('response','<div class="alert alert-success m-t-40">Dokumen berhasil diupload. </div>');  
			} else {
				$this->session->set_flashdata('response','<div class="alert alert-danger m-t-40">Dokumen gagal diupload. </div>'); 
			}
		}
		redirect('user/detildupak?hid='.md5(TOKEN_DOP.$this->input->post('phid')).'&tab=');
	}
	function chgpwd(){
		$data['judulpage']='Change Password User';
        $data['action']='chgpwd';
		
		
        $this->load->view('ChgPwdView',$data);
	}
	function dupak(){
		$data['judulpage']='DUPAK';
        $data['action']='dupak';
		
		
        $this->load->view('DUPAKView',$data);
	}
	function detildupak(){
		$data['judulpage']='Detil PAK';
        $data['action']='detildupak';
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
		
        $this->load->view('DetilPAKView',$data);
	}
	function profil() {
        $data['judulpage']='Profil User';
        $data['action']='profil';
		
		$query=$this->db->get_where('users',array('Username'=>$this->session->userdata('userName')));
		$rw=$query->row();
		$data['rw']=$rw;
		
        $this->load->view('UserView',$data);
       
    }
    function modal(){
        $hid = $this->input->get('hid');
        $hid = preg_replace('/[^a-zA-Z0-9-_\.]/', '', $hid);
        $data['hid'] = $hid;
        $data['action'] = $this->input->get('action');
        
        $this->load->view('ModalUserView', $data);
    }
}