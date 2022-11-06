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
	public function cetakpaktte(){
		include('assets/js/plugin/phpqrcode/qrlib.php'); 

		$sql="SELECT a.*,DATE_FORMAT(tmtgol,'%d-%m-%Y') tmtgol,DATE_FORMAT(tmtjab,'%d-%m-%Y') tmtjab,DATE_FORMAT(tgllahir,'%d-%m-%Y') tgllahir,
		CONCAT(DATE_FORMAT(startdate,'%b'),' s.d ',DATE_FORMAT(enddate,'%b Tahun %Y')) periode,
		pejabat_pak,nippejabat_pak,jabatanpejabat_pak,tgl_surat,b.startdate,
		(SELECT startdate FROM dupak_v WHERE nip=a.nip AND startdate < b.startdate ORDER BY startdate DESC LIMIT 1) startdatebefore
		FROM pemohon a JOIN periode b ON a.periode_hid=b.hid
		WHERE md5(CONCAT('".TOKEN_DOP."',a.hid))='".$this->input->get('hid')."'";
		
		//echo $sql;exit();
		$cn=$this->db->query($sql);
		$rw=$cn->row();
		
		$url=URL_TTESIMSDM.'/'.$rw->tte_file;
		
		QRcode::png($url);
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
			//echo $sql;
			$save=$this->db->query($sql);
			
			$insertid=$this->db->insert_id();
			
			$this->ReferensiModel->insert_logs($this->session->userdata('userName'),'create','daftar dupak',$insertid,'pemohon');
                
				
			$this->session->set_flashdata('response','<div class="alert alert-success m-t-40">Pendaftaran PAK berhasil. </div>');
		}
	}
	function add_butir(){
		// data pemohon hid
		$phid=$this->input->post('phid');
		$butir=$this->input->post('butir');
		$jml=$this->input->post('jml');
		
		
		
		$query=$this->db->get_where('pemohon',array("md5(CONCAT('".TOKEN_DOP."',hid))"=>$phid));
		$rw=$query->row();
		if (!empty($rw)){
			
			// validasi jenis Nilai atau Prosen
			
			$nilai_ak=$this->ReferensiModel->LoadSQL("SELECT jumlah_ak,CASE WHEN jenis='Nilai' THEN jumlah_ak ELSE IFNULL((SELECT ak_kenaikan*jumlah_ak/100 FROM jenjang_jabatan WHERE kode_jab='".$rw->kdjab."'),0) END judul FROM kamus_kegiatan a  WHERE a.hid='$butir'");
		
			// cek if exist
			$hid=$this->ReferensiModel->LoadSQL("SELECT hid judul FROM dupak WHERE pemohon_id='".$rw->hid."' AND kegiatan_id='".$butir."'");
			$data=array(
					'pemohon_id'=>$rw->hid,
					'kegiatan_id'=>$butir,
					'jml'=>$jml,
					'nilai_ak'=>$nilai_ak,
					'total_ak'=>($jml*$nilai_ak),
					'status'=>0,		
				);
			if ($hid==""){
				$data=array_merge($data,array(
					'creationdate'=>date("Y-m-d H:i:s"),
					'createdby'=>$this->session->userdata('userName')));
				//var_dump($data);
				$this->ProsesModel->insert_personal($data,'dupak');
				$insertid=$this->db->insert_id();
			
				$this->ReferensiModel->insert_logs($this->session->userdata('userName'),'create','tambah butir',$insertid,'dupak');
			
				$this->session->set_flashdata('response', $this->ReferensiModel->showMessage('Sukses menambah data.', 'success'));
			}else{
				$data=array_merge($data,array(
					'updateddate'=>date("Y-m-d H:i:s"),
					'updatedby'=>$this->session->userdata('userName')));
				$this->ProsesModel->update_personal($data,$hid,'dupak','hid');
				$this->ReferensiModel->insert_logs($this->session->userdata('userName'),'update','update butir',$hid,'dupak');
				$this->session->set_flashdata('response', $this->ReferensiModel->showMessage('Sukses mengupdate data.', 'success'));
			}
		}else{
			$this->session->set_flashdata('response', $this->ReferensiModel->showMessage('Gagal menyimpan data, data tidak ditemukan.', 'danger'));
		}
		//var_dump($_POST);
		redirect(base_url().'user/detildupak?hid='.$phid.'&tab=kegiatan');
	}
	function delbutir(){
		
		$data=$this->input->post('hid');
		$this->db->where_in('md5(hid)', $data);
        $this->db->delete('dupak');
		$this->session->set_flashdata('response','<div class="alert alert-success m-t-40">Data berhasil dihapus. </div>');
	}
	function detilbutir(){
		$hid=$this->input->get('hid');
		$query=$this->db->get_where('kamus_kegiatan',array('hid'=>$hid));
		$rw=$query->row();
		
		header('Content-Type: application/json');
	    echo json_encode($rw);
	}
	function carikamus(){
		
		// cari detil pemohon
		$phid=$this->input->get('phid');
		$query=$this->db->get_where('pemohon',array("md5(CONCAT('".TOKEN_DOP."',hid))"=>$phid));
		$rwp=$query->row();
		
			
		$q=$this->input->get('q');
		$kategori=$this->input->get('kategori');
		$sql="SELECT hid kode,butir_kegiatan nilai,jumlah_ak FROM kamus_kegiatan WHERE kategori='$kategori' AND jabatan_id=(SELECT hid FROM jenjang_jabatan WHERE kode_jab='".$rwp->kdjab."') AND butir_kegiatan LIKE '%$q%' ORDER BY butir_kegiatan";
		
		if ($kategori=='Penunjang') $sql="SELECT hid kode,butir_kegiatan nilai,jumlah_ak FROM kamus_kegiatan WHERE kategori='Penunjang' AND jenisjabatan_id=(SELECT jenisjabatan_id FROM jenjang_jabatan WHERE kode_jab='".$rwp->kdjab."') AND kelompok_jabatan IS NULL
				UNION SELECT hid kode,butir_kegiatan nilai,jumlah_ak FROM kamus_kegiatan WHERE kategori='Penunjang' AND jenisjabatan_id=(SELECT jenisjabatan_id FROM jenjang_jabatan WHERE kode_jab='".$rwp->kdjab."') AND kelompok_jabatan=(SELECT kelompok_jabatan FROM jenjang_jabatan WHERE kode_jab='".$rwp->kdjab."')";
		$answer=array();	
		//echo $sql;
		$query = $this->db->query($sql);
			foreach ($query->result() as $rw){
				$answer[] = array("id"=>$rw->kode, "text"=>$rw->nilai.', AK: '.$rw->jumlah_ak);
			}

		echo json_encode($answer);
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
	public function kirimdupak(){
		$sql="SELECT a.*,CONCAT(DATE_FORMAT(startdate,'%d %b %Y'),' s.d ',DATE_FORMAT(enddate,'%d %b %Y')) periode 
		FROM pemohon a JOIN periode b ON a.periode_hid=b.hid WHERE a.hid='".$this->input->post('hid')."'";
		//echo $sql;
		$cn=$this->db->query($sql);
		$rw=$cn->row();
		
		
		
		$jenjang=$rw->kdjab;
		$phid=$rw->hid;
		$status=$rw->status;
		
		//var_dump($rw);
		
		//total dokumen administrasi
		$ttl1=$this->ReferensiModel->LoadSQL("SELECT COUNT(*) judul FROM mdok");
		
		// total dokumen yg terisi
		$ttl2=$this->ReferensiModel->LoadSQL("SELECT COUNT(*) judul FROM dupak a JOIN kamus_dupak b ON a.kegiatan_id=b.kegiatan_hid WHERE pemohon_id='".$rw->hid."' AND total_ak>0");
		
		
		
		$totaldok=$ttl1+$ttl2;
		
			
		// dokumen sdh terupload
		$totalup=$this->ReferensiModel->LoadSQL("SELECT COUNT(*)judul FROM dokumen WHERE pemohon_hid='".$rw->hid."'");
		
				
		if ($totaldok<=$totalup){
			echo 'sukses';
			$sql="UPDATE pemohon SET status='2',updateddate=NOW(),updatedby='".$this->session->userdata('userName')."' WHERE hid='".$this->input->post('hid')."' AND nip='".$this->session->userdata('userName')."'";
			$save=$this->db->query($sql);
						
			$this->ReferensiModel->insert_logs($this->session->userdata('userName'),'create','kirim dupak',$this->input->post('hid'),'pemohon');
			$this->session->set_flashdata('response','<div class="alert alert-success m-t-40">Data berhasil dikirim ke ADMIN SEKRETARIAT. </div>'); 
		
			// kirim notifikasi
			$sql="SELECT Username FROM `users` WHERE RolesId='2'";
			$cn2 = $this->db->query($sql);
			foreach ($cn2->result() as $rw2){
					
				$isinotifikasi='Tanggal '.date("d-m-Y H:i:s").'
								<br>Permohonan / Usulan PAK
								<br>Nomor PAK : '.$this->ReferensiModel->NomorDUPAK($rw->hid).'
								<br>Periode PAK : '.$rw->periode.'
								<br>NIP, Nama Pegawai : '.$rw->nip.','.$rw->namalengkap.'
								<br>Selanjutnya : <a href="'.base_url().'penilaian/dtldistribusi?jenis=belum&phid='.md5(TOKEN_DOP.$rw->periode_hid).'">Distribusi Penilaian</a>
								<br>Terima Kasih';
								
					//send_notifikasi($mailfrom,$sbj,$msg,$sendto,$username)				
					$this->ProsesModel->send_notifikasi('auto reply','Permohonan / Usulan PAK : '.$rw->namalengkap,$isinotifikasi,$rw2->Username,$this->session->userdata('userName'));

			}
		
		}else{
			echo "Dokumen fisik yang diupload belum lengkap.\nDokumen Fisik terupload : ".($totalup*1)." dari ".$totaldok;
		}
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
			$ext = pathinfo($_FILES["inputFile"]["name"], PATHINFO_EXTENSION);
			$file_name=$nip."_dokumen_".$this->input->post('dokid').".".$ext;
			$target_file = $target_dir.$file_name;
		
			if (move_uploaded_file($_FILES["inputFile"]["tmp_name"], $target_file)) {
				
				// cek if exist
				$hid=$this->ReferensiModel->LoadSQL("SELECT hid judul FROM dokumen WHERE pemohon_hid='".$this->input->post('phid')."' AND dupak_hid='".$this->input->post('hid')."' AND dokumen_hid='".$this->input->post('dokid')."' AND jenis='pak'");
				if ($hid=='') {
					//$sql="INSERT INTO dokumen (pemohon_hid,dupak_hid,dokumen_hid,dokumen_name,file_name,creationdate,createdby,jenis) VALUES('".$this->input->post('phid')."','".$this->input->post('hid')."','".$this->input->post('dokid')."','".$this->input->post('dokname')."','$file_name',NOW(),'$nip','pak')";
					$data=array(
						'pemohon_hid'=>$this->input->post('phid'),
						'dupak_hid'=>$this->input->post('hid'),
						'dokumen_hid'=>$this->input->post('dokid'),
						'dokumen_name'=>$this->input->post('dokname'),
						'file_name'=>$file_name,
						'creationdate'=>date("Y-m-d H:i:s"),
						'createdby'=>$nip,
						'jenis'=>'pak'
					);
					$this->ProsesModel->insert_personal($data,'dokumen');
					$insertid=$this->db->insert_id();
					$this->ReferensiModel->insert_logs($this->session->userdata('userName'),'create','upload dokumen',$insertid,'dokumen');
				}else{					
					$sql="UPDATE dokumen SET dokumen_name='".$this->input->post('dokname')."',file_name='$file_name',updateddate=NOW(),updatedby='$nip' WHERE pemohon_hid='".$this->input->post('phid')."' AND dupak_hid='".$this->input->post('hid')."' AND dokumen_hid='".$this->input->post('dokid')."'";
					$save=$this->db->query($sql);
					$this->ReferensiModel->insert_logs($this->session->userdata('userName'),'create','upload dokumen',$hid,'dokumen');
				}
				$this->session->set_flashdata('response','<div class="alert alert-success m-t-40">Dokumen berhasil diupload. </div>');  
			} else {
				$this->session->set_flashdata('response','<div class="alert alert-danger m-t-40">Dokumen gagal diupload. </div>'); 
			}
		} else {
			// upload link
			$nip=$this->session->userdata('userName');
			
			$periodehid=$this->ReferensiModel->LoadSQL("SELECT periode_hid judul FROM pemohon a WHERE hid='".$this->input->post('phid')."'");
			
			$hid=$this->ReferensiModel->LoadSQL("SELECT hid judul FROM dokumen WHERE pemohon_hid='".$this->input->post('phid')."' AND dupak_hid='".$this->input->post('hid')."' AND dokumen_hid='".$this->input->post('dokid')."' AND jenis='pak'");
				if ($hid=='') {
					//$sql="INSERT INTO dokumen (pemohon_hid,dupak_hid,dokumen_hid,dokumen_name,file_name,creationdate,createdby,jenis) VALUES('".$this->input->post('phid')."','".$this->input->post('hid')."','".$this->input->post('dokid')."','".$this->input->post('dokname')."','$file_name',NOW(),'$nip','pak')";
					$data=array(
						'pemohon_hid'=>$this->input->post('phid'),
						'dupak_hid'=>$this->input->post('hid'),
						'dokumen_hid'=>$this->input->post('dokid'),
						'dokumen_name'=>$this->input->post('dokname'),
						'file_name'=>$this->input->post('linkdok'),
						'creationdate'=>date("Y-m-d H:i:s"),
						'createdby'=>$nip,
						'jenis'=>'pak'
					);
					$this->ProsesModel->insert_personal($data,'dokumen');
					$insertid=$this->db->insert_id();
					$this->ReferensiModel->insert_logs($this->session->userdata('userName'),'create','upload dokumen',$insertid,'dokumen');
				}else{					
					$sql="UPDATE dokumen SET dokumen_name='".$this->input->post('dokname')."',file_name='".$this->input->post('linkdok')."',updateddate=NOW(),updatedby='$nip' WHERE pemohon_hid='".$this->input->post('phid')."' AND dupak_hid='".$this->input->post('hid')."' AND dokumen_hid='".$this->input->post('dokid')."'";
					$save=$this->db->query($sql);
					$this->ReferensiModel->insert_logs($this->session->userdata('userName'),'create','upload dokumen',$hid,'dokumen');
				}
				$this->session->set_flashdata('response','<div class="alert alert-success m-t-40">Dokumen berhasil diupload. </div>'); 
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
			$ext = pathinfo($_FILES["inputFile"]["name"], PATHINFO_EXTENSION);
			$file_name=$nip."_pribadi_".$this->input->post('dokid').".".$ext;
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
	function updateHarian(){
		$hid=$this->input->post('hid');
		
		$data=array(
			'kegiatan_id'=>$this->input->post('butir'),
			'nama_kegiatan'=>$this->input->post('nama'),
			'tgl_kegiatan'=>$this->ReferensiModel->DMYtoYMD($this->input->post('tgl')),
		);
		if ($hid==''){
			$data=array_merge($data,array('creation_date'=>date("Y-m-d H:i:s"),'created_by'=>$this->session->userdata('userName')));
			$this->ProsesModel->insert_personal($data,'harian');
			$this->session->set_flashdata('response', $this->ReferensiModel->showMessage('Data telah berhasil ditambahkan.', 'success'));
			
			// insert into sivika
			$datas=array(
				'refkegiatanft_id'=>$this->input->post('butir'),
				'judul_kegiatan'=>$this->input->post('nama'),
				'uraian_kegiatan'=>'Sync DOP',
				'tgl_start'=>$this->ReferensiModel->DMYtoYMD($this->input->post('tgl'))." 08:00",
				'tgl_end'=>$this->ReferensiModel->DMYtoYMD($this->input->post('tgl'))." 15:30",
				'status'=>1,
				'nip1'=>$this->session->userdata('userName'),
				'nip2'=>$this->ReferensiModel->LoadSQL("SELECT NIPLamaAtasan judul FROM users WHERE Username='".$this->session->userdata('userName')."'"),
				'creation_date'=>date("Y-m-d H:i:s"),
				'created_by'=>$this->session->userdata('userName')
			);
			$this->ProsesModel->insert_personal($datas,'sivika');
		}else{
			$data=array_merge($data,array('updated_date'=>date("Y-m-d H:i:s"),'updated_by'=>$this->session->userdata('userName')));
			$this->ProsesModel->update_personal($data,$hid,'harian','hid');
			$this->session->set_flashdata('response', $this->ReferensiModel->showMessage('Sukses mengupdate data.', 'success'));
		}
		redirect('user/harian', 'refresh');
	}
	function mypak(){
		$data['judulpage']='PAK Saya';
        $data['action']='mypak';
		
		
        $this->load->view('MyPAKView',$data);
	}
	function listpak(){
		$data['judulpage']='Daftar PAK';
        $data['action']='listpak';
		
		
        $this->load->view('ListPAKView',$data);
	}
	function feedbackpak(){
		$data['judulpage']='Feedback PAK';
        $data['action']='feedbackpak';
		
		
        $this->load->view('FeedbackPAKView',$data);
	}
	public function hapusHarian(){
		
		$data=$this->input->post('hid');
		$this->db->where_in('md5(hid)', $data);
        $this->db->delete('harian');
		$this->session->set_flashdata('response','<div class="alert alert-success m-t-40">Data berhasil dihapus. </div>');
		
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
	function harian(){
		$data['judulpage']='Kegiatan Harian';
        $data['action']='harian';
		
		
        $this->load->view('HarianView',$data);
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