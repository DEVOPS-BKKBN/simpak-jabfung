<?php defined('BASEPATH') or exit('No direct script access allowed');

class Penilaian extends MX_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('login/UserModel');
        $this->load->model('login/ProsesModel');
        $this->load->model('login/ReferensiModel');
        
        if($this->session->userdata('leveluser')!='1' ) {
           redirect(base_url().'login/show_login');
        }
    }
	public function addto_pleno(){
		//var_dump($_POST);
		$sql="UPDATE pemohon SET pleno_date=NOW(),pleno_id='".$this->input->post('plenoid')."',status='5',updateddate=NOW(),updatedby='".$this->session->userdata('userName')."' WHERE hid IN(".$this->input->post('ids').")";
		//echo $sql;
		$save=$this->db->query($sql);
		
		// looping ids for logs
		$ids=explode(",",$this->input->post('ids'));
		for ($i=0;$i<count($ids);$i++){
			$data=array(
				'pleno_id'=>$this->input->post('plenoid'),
				'pemohon_id'=>$ids[$i],
				'creation_date'=>date("Y-m-d H:i:s"),
				'created_by'=>$this->session->userdata('userName')
			);
			$this->ProsesModel->insert_personal($data,'pleno_lines');
			$insertid=$this->db->insert_id();
			
			$this->ReferensiModel->insert_logs($this->session->userdata('userName'),'create','ditambahkan ke pleno',$insertid,'pleno_lines');
		}
		
		$this->session->set_flashdata('response','<div class="alert alert-success m-t-40">Data berhasil disimpan. </div>'); 
	}
	public function simpanbap(){
		$ids=explode(",",$this->input->post('ids'));
		for ($i=0;$i<count($ids);$i++){
			$data=array(
				'status'=>6,
				'updateddate'=>date("Y-m-d H:i:s"),
				'updatedby'=>$this->session->userdata('userName'),
				'tgl_bap'=>$this->ReferensiModel->DMYtoYMD($this->input->post('tgl1')),
				'tgl_surat'=>$this->ReferensiModel->DMYtoYMD($this->input->post('tgl2')),
				'no_bap'=>$this->input->post('nomor'),
				'bap_note'=>$this->input->post('ket')
			);
			$this->ProsesModel->update_personal($data,$ids[$i],'pemohon','hid');
			
			$this->ReferensiModel->insert_logs($this->session->userdata('userName'),'create','proses bap',$ids[$i],'pemohon');
		}
		
		$this->session->set_flashdata('response','<div class="alert alert-success m-t-40">Data berhasil disimpan. </div>'); 
	}
	public function proses_pleno(){
		
		// looping ids for logs
		$ids=explode(",",$this->input->post('ids'));
		for ($i=0;$i<count($ids);$i++){
			$data=array(
				'status'=>1,
				'updated_date'=>date("Y-m-d H:i:s"),
				'updated_by'=>$this->session->userdata('userName')
			);
			$this->ProsesModel->update_personal($data,$ids[$i],'pleno_lines','hid');
			
			$this->ReferensiModel->insert_logs($this->session->userdata('userName'),'create','diproses pleno',$ids[$i],'pleno_lines');
		}
		
		$this->session->set_flashdata('response','<div class="alert alert-success m-t-40">Data berhasil disimpan. </div>'); 
	}
	public function updatePenilaiNon(){
		
		//var_dump($_POST);
		// add users
		$datau=array(
			'Username'=>$this->input->post('nik'),
			'EmployeeId'=>$this->input->post('nik'),
			'Password'=>md5($this->input->post('upwd')),
			'DisplayName'=>$this->input->post('nama'),
			'Jabatan'=>$this->input->post('jbt'),
			'PangkatGol'=>$this->input->post('golongan'),
			'RolesId'=>'3',
			'CreationDate'=>date("Y-m-d H:i:s"),
			'CreatedBy'=>$this->session->userdata('userName')
		);
		$this->ProsesModel->insert_personal($datau,'users');
			
		
		// add penilai
		$datap=array(
			'nip'=>$this->input->post('nik'),
			'namalengkap'=>$this->input->post('nama'),
			'jabatan'=>$this->input->post('jbt'),
			'golonganpangkat'=>$this->input->post('golongan'),
			'unitkerja'=>$this->input->post('unitkerja'),
			'creationdate'=>date("Y-m-d H:i:s"),
			'createdby'=>$this->session->userdata('userName'),
			'sebagai'=>$this->input->post('sebagai'),
            'jenjang'=>$this->input->post('jenjang'),
		);
		$this->ProsesModel->insert_personal($datap,'penilai');
		
		$this->session->set_flashdata('response','<div class="alert alert-success m-t-40">Data berhasil ditambahkan. </div>');
		redirect('penilaian/penilai', 'refresh');
	}
	public function add_penilai(){
		
		//var_dump($_POST);
		$ids=explode(",",$this->input->post('ids'));
		for ($j=0;$j<count($ids);$j++){
			for ($i=1;$i<=NUM_PENILAI;$i++){
				// set penilai 1
				if ($i==1){
					$sql="UPDATE pemohon SET penilai_id='".$this->input->post('penilai1')."',status='3',updateddate=NOW(),updatedby='".$this->session->userdata('userName')."' WHERE hid='".$ids[$j]."'";
					$save=$this->db->query($sql);
				}
				// cek if exists
				if ($this->input->post('penilai'.$i)!=""){
					$hid=$this->ReferensiModel->LoadSQL("SELECT hid judul FROM pemohon_penilai WHERE pemohon_id='".$ids[$j]."' AND penilai_ke='$i'");
					$data=array(
						'pemohon_id'=>$ids[$j],
						'penilai_id'=>$this->input->post('penilai'.$i),
						'penilai_ke'=>$i,
						'creation_date'=>date("Y-m-d H:i:s"),
						'created_by'=>$this->session->userdata('userName')
					);
					//var_dump($data);
					if ($hid=="") $this->ProsesModel->insert_personal($data,'pemohon_penilai');
						else $this->ProsesModel->update_personal($data,$hid,'pemohon_penilai','hid');
				}
				
			}
		}
		$this->session->set_flashdata('response','<div class="alert alert-success m-t-40">Penilai berhasil disimpan. </div>'); 
		/*
		$sql="UPDATE pemohon SET penilai_id='".$this->input->post('penilai1')."',status='3',updateddate=NOW(),updatedby='".$this->session->userdata('userName')."' WHERE hid IN(".$this->input->post('ids').")";
		//echo $sql;
		$save=$this->db->query($sql);
		
		// looping ids for logs
		$ids=explode(",",$this->input->post('ids'));
		for ($i=0;$i<count($ids);$i++){
			$this->ReferensiModel->insert_logs($this->session->userdata('userName'),'create','set penilai',$ids[$i],'pemohon');
		}
		
		$this->session->set_flashdata('response','<div class="alert alert-success m-t-40">Penilai berhasil disimpan. </div>'); 
		*/
	}
	function updatePleno(){
        $tgl1=$this->input->post('tgl1');
		$nama=$this->input->post('nama');
		$ket=$this->input->post('keterangan');
		$hid=$this->input->post('hid');
		
		$data=array(
			'nama_pleno'=>$nama,
			'tgl_pleno'=>$this->ReferensiModel->DMYtoYMD($tgl1),
			'keterangan'=>$ket
		);
		
		
		if ($hid==''){
			$this->ProsesModel->insert_personal($data,'pleno_header');
			$this->session->set_flashdata('response','<div class="alert alert-success m-t-40">Data berhasil ditambahkan. </div>');
		}else{
			$this->ProsesModel->update_personal($data,$hid,'pleno_header','hid');
			$this->session->set_flashdata('response','<div class="alert alert-success m-t-40">Data berhasil diupdate. </div>');
		}
		
		
		redirect('penilaian/pleno', 'refresh');
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
			'startdate'=>$this->ReferensiModel->DMYtoYMD($tgl1),
			'enddate'=>$this->ReferensiModel->DMYtoYMD($tgl2),
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
	public function xlsdistribusi(){
		require_once 'assets/js/plugin/phpxls1.8/Classes/PHPExcel.php';
		$objPHPExcel = PHPExcel_IOFactory::load('assets/templates/peserta.xlsx');
		// style
		require_once 'assets/js/plugin/style.php';
		
		$periode=$this->ReferensiModel->LoadSQL("SELECT namaperiode judul FROM periode WHERE md5(CONCAT('".TOKEN_DOP."',hid))='".$this->input->get('phid')."'");
		$objPHPExcel->getActiveSheet()->setCellValue('C2', $periode);
		$objPHPExcel->getActiveSheet()->setCellValue('C3', $this->ReferensiModel->StatusDupak($this->input->get('status')));
		
		
		
		$n=0;
		$sql2="";
							if ($this->input->get('status')!='') $sql2.=" AND a.status>='".$this->input->get('status')."'";
							if ($this->input->get('status')=='3') $sql2.=" AND a.status IN(3,4,5)";
							if ($this->input->get('jenis')=='belum') $sql2.=" AND a.penilai_id IS NULL AND a.status IN(3)";
							if ($this->input->get('jenis')=='ada') $sql2.=" AND a.penilai_id IS NOT NULL AND a.status IN('3','4','5')";

							$sql="SELECT a.*,DATE_FORMAT(a.tmtjab,'%d-%m-%Y') tmtjab,b.foto,c.namalengkap penilai
									FROM pemohon a JOIN users b ON a.nip=b.username
									LEFT JOIN penilai c ON a.penilai_id=c.hid WHERE md5(CONCAT('".TOKEN_DOP."',periode_hid))='".$this->input->get('phid')."' $sql2";
							//echo $sql;exit();
							$pangkat = $this->db->query($sql);
		foreach ($pangkat->result() as $rw){
			$n++;
			$fr=$n+5;
			$objPHPExcel->getActiveSheet()->setCellValue('A'.$fr, $n);	
			$objPHPExcel->getActiveSheet()->setCellValueExplicit('B'.$fr, $rw->penilai, PHPExcel_Cell_DataType::TYPE_STRING);
			$objPHPExcel->getActiveSheet()->setCellValueExplicit('C'.$fr, $rw->no_pak, PHPExcel_Cell_DataType::TYPE_STRING);
			$objPHPExcel->getActiveSheet()->setCellValueExplicit('D'.$fr, $rw->namalengkap, PHPExcel_Cell_DataType::TYPE_STRING);
			$objPHPExcel->getActiveSheet()->setCellValueExplicit('E'.$fr, $rw->nip, PHPExcel_Cell_DataType::TYPE_STRING);
			$objPHPExcel->getActiveSheet()->setCellValue('F'.$fr, $rw->karpeg);
			$objPHPExcel->getActiveSheet()->setCellValueExplicit('G'.$fr, $rw->pangkatgol, PHPExcel_Cell_DataType::TYPE_STRING);
			$objPHPExcel->getActiveSheet()->setCellValue('H'.$fr, date("d-m-Y",strtotime($rw->tmtgol)));
			$objPHPExcel->getActiveSheet()->setCellValueExplicit('I'.$fr, $rw->tempatlahir.','.date("d-m-Y",strtotime($rw->tgllahir)), PHPExcel_Cell_DataType::TYPE_STRING);
			$objPHPExcel->getActiveSheet()->setCellValueExplicit('J'.$fr, $rw->jeniskelamin, PHPExcel_Cell_DataType::TYPE_STRING);
			$objPHPExcel->getActiveSheet()->setCellValueExplicit('K'.$fr, $rw->pendidikan, PHPExcel_Cell_DataType::TYPE_STRING);
			$objPHPExcel->getActiveSheet()->setCellValueExplicit('L'.$fr, $rw->jabatan, PHPExcel_Cell_DataType::TYPE_STRING);
			$objPHPExcel->getActiveSheet()->setCellValue('M'.$fr, $rw->tmtjab);
			$objPHPExcel->getActiveSheet()->setCellValue('N'.$fr, $rw->unitkerja);
			$objPHPExcel->getActiveSheet()->setCellValue('O'.$fr, $rw->kabkota);
			$objPHPExcel->getActiveSheet()->setCellValue('P'.$fr, $this->ReferensiModel->StatusDupak($rw->status));
			
			$objPHPExcel->getActiveSheet()->getStyle('A'.($fr).':P'.$fr)->applyFromArray($styleArray4);
			$objPHPExcel->getActiveSheet()->getStyle('B'.$fr.':'.'P'.$fr)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_LEFT);
			$objPHPExcel->getActiveSheet()->getStyle('A'.$fr)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
		}
		
		$objPHPExcel->getActiveSheet()->setShowGridlines(false);
		$filename="peserta".$this->session->userdata('userName').date('YmdHis').".xls";
		
		
		ob_end_clean();
		
		// Redirect output to a client’s web browser (Excel5)
		header("Content-Type: application/vnd.ms-excel");
		header("Content-Disposition: attachment; filename=\"".$filename."\"");
		header("Cache-Control: max-age=0");

		// Save Excel 2007 file
		$objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');
		//$objWriter->save(str_replace('.php', '.xls', __FILE__));
		$objWriter->save("php://output");
		exit;
		
			
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
		/*
		$data=$this->input->post('hid');
		$this->db->where_in('md5(hid)', $data);
        $this->db->delete('periode');
		*/
		$data=array(
			'deleted_by'=>$this->session->userdata('userName'),
			'deleted_at'=>date("Y-m-d H:i:s"),
		);
		$this->ProsesModel->update_personal($data,$this->input->post('hid'),'periode','md5(hid)');
		
		$this->session->set_flashdata('response','<div class="alert alert-success m-t-40">Data berhasil dihapus. </div>');
		
	}
    public function hapusPenilai(){
		
		$data=$this->input->post('hid');
		$this->db->where_in('md5(hid)', $data);
        $this->db->delete('penilai');
		$this->session->set_flashdata('response','<div class="alert alert-success m-t-40">Data berhasil dihapus. </div>');
		
	}
	function distribusi() {
        $data['judulpage']='Distribusi Penilaian';
        $data['action']='distribusi';
        $this->load->view('DistribusiView',$data);
       
    }
	function dtldistribusi() {
        $data['judulpage']='Detil Distribusi Penilaian';
        $data['action']='dtldistribusi';
		
		$subtitle=array('peserta'=>'Data Peserta yang terdaftar','belum'=>'Data Peserta belum ada penilai','ada'=>'Data Peserta sudah ada penilai','blmdinilai'=>'Data peserta belum dinilai','sdhdinilai'=>'Data peserta sudah dinilai','selesai'=>'Data peserta sudah selesai penilaian');
		$data['subtitle']=$subtitle;
		
        $this->load->view('DtlDistribusiView',$data);
       
    }
    function dtlpleno() {
        $data['judulpage']='Detil Pleno';
        $data['action']='dtlpleno';
		
		$query=$this->db->get_where('pleno_header',array("md5(CONCAT('".TOKEN_DOP."',hid))"=>$this->input->get('hid')));
		$rw=$query->row();
		$data['rw']=$rw;
		
		$hid=$this->input->get('hid');
		$tab=$this->input->get('tab');
		$data['hid']=$hid;
		$data['tab']=$tab;
		
        $this->load->view('DetilPlenoView',$data);
       
    }
	function nilaipleno(){
		//var_dump($_POST);
		$data=array(
			'total_ak_penilai'=>$this->input->post('value'),
			'penilaiandate'=>date("Y-m-d H:i:s"),
			'penilaianby'=>$this->session->userdata('userName')
		);
		$this->ProsesModel->update_personal($data,$this->input->post('hid'),'dupak','hid');
		
	}
	function penilaianpleno(){
		$data['judulpage']='Penilaian Pleno';
        $data['action']='nilaipleno';
		
		$hid=$this->input->get('hid');
		$tab=$this->input->get('tab');
		$data['hid']=$hid;
		$data['tab']=$tab;
		
		$sql="(SELECT a.*,u.foto fotopegawai,
		CONCAT(DATE_FORMAT(startdate,'%d %b %Y'),' s.d ',DATE_FORMAT(enddate,'%d %b %Y')) periode
		FROM pemohon a JOIN periode b ON a.periode_hid=b.hid JOIN users u ON u.Username=a.nip) dupak";
		$query=$this->db->get_where($sql,array("md5(CONCAT('".TOKEN_DOP."',hid))"=>$this->input->get('hid')));
		$rw=$query->row();
		$data['rw']=$rw;
		
		$data['nomor']=$this->ReferensiModel->NomorDupak($rw->hid);
		$data['tab']=$this->input->get('tab');
		$data['hid']=$this->input->get('hid');
		$data['phid']=$rw->hid;
		$data['status']='';
		
		$this->load->view('PenilaianPlenoView',$data);
		
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
	function pleno() {
        $data['judulpage']='Jadwal Pleno';
        $data['action']='pleno';
		$data['tab']=$this->input->get('tab');
        $this->load->view('PlenoView',$data);
       
    }
	function bap() {
        $data['judulpage']='BAP';
        $data['action']='bap';
		$data['tab']=$this->input->get('tab');
		$data['hid']=$this->input->get('hid');
		$data['periode']=$this->input->get('periode');
        $this->load->view('BapView',$data);
       
    }
    function modal(){
        $hid = $this->input->get('hid');
        $hid = preg_replace('/[^a-zA-Z0-9-_\.]/', '', $hid);
        $data['hid'] = $hid;
        $data['action'] = $this->input->get('action');
        
        $this->load->view('ModalPenilaianView', $data);
    }
}