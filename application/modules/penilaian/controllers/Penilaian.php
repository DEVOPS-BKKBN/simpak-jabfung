<?php defined('BASEPATH') or exit('No direct script access allowed');

class Penilaian extends MX_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('login/UserModel');
        $this->load->model('login/ProsesModel');
        $this->load->model('login/ReferensiModel');
        
        if($this->session->userdata('leveluser')!='1' && $this->session->userdata('leveluser')!='2') {
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

		// tambahkan notifikasi ke penilai
		$sql="SELECT a.*,DATE_FORMAT(tgl_pleno,'%d-%m-%Y') tgl 
				FROM pleno_header a WHERE a.hid='".$this->input->post('plenoid')."'";
				//echo $sql;
		$cn=$this->db->query($sql);
		$rw=$cn->row();

		$sql="SELECT DISTINCT penilai_id,nip,namalengkap FROM pemohon_penilai a JOIN penilai b ON a.penilai_id=b.hid WHERE a.hid IN(".$this->input->post('ids').")";
		$cn2 = $this->db->query($sql);
		foreach ($cn2->result() as $rw2){
				
			$isinotifikasi='Tanggal '.date("d-m-Y H:i:s").'
								<br>Penambahan Jadwal Pleno Baru
								<br>Nama Pleno : '.$rw->nama_pleno.'
								<br>Tgl Pleno : '.$rw->tgl.'
								<br>Keterangan : '.$rw->keterangan.'
								<br>
								<br>Terima Kasih';
								
			//send_notifikasi($mailfrom,$sbj,$msg,$sendto,$username)				
			$this->ProsesModel->send_notifikasi('auto reply','Penambahan Jadwal Pleno Baru : '.$rw->nama_pleno,$isinotifikasi,$rw2->nip,$this->session->userdata('userName'));

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

		// tambahkan notifikasi ke penilai
		
		$sql="SELECT DISTINCT nama_pleno,tgl_pleno,keterangan,nip,namalengkap,DATE_FORMAT(tgl_pleno,'%d-%m-%Y') tgl  
		FROM pleno_lines a JOIN pleno_header b ON a.pleno_id=b.hid JOIN pemohon_penilai c ON a.pemohon_id=c.pemohon_id 
		JOIN penilai d ON c.penilai_id=d.hid WHERE a.hid IN(".$this->input->post('ids').")";
		$cn2 = $this->db->query($sql);
		foreach ($cn2->result() as $rw2){
				
			$isinotifikasi='Tanggal '.date("d-m-Y H:i:s").'
								<br>Pleno Selesai
								<br>Nama Pleno : '.$rw2->nama_pleno.'
								<br>Tgl Pleno : '.$rw2->tgl.'
								<br>Keterangan : '.$rw2->keterangan.'
								<br>
								<br>Terima Kasih';
								
			//send_notifikasi($mailfrom,$sbj,$msg,$sendto,$username)				
			$this->ProsesModel->send_notifikasi('auto reply','Pleno Selesai : '.$rw2->nama_pleno,$isinotifikasi,$rw2->nip,$this->session->userdata('userName'));

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
					$hid=$this->db->insert_id();
					// insert logs
					$this->ReferensiModel->insert_logs($this->session->userdata('userName'),'create','set penilai',$hid,'pemohon_penilai');

					// notifikasi

					// detil pak
					$sql="SELECT a.*,DATE_FORMAT(a.tmtjab,'%d-%m-%Y') tmtjab,b.foto,p.namaperiode
						FROM pemohon a JOIN users b ON a.nip=b.username
						JOIN periode p ON a.periode_hid=p.hid
						WHERE a.hid='".$ids[$j]."'";
					$cn = $this->db->query($sql);
					$rw=$cn->row();

					$isinotifikasi='Tanggal '.date("d-m-Y H:i:s").'
								<br>Penunjukkan sebagai Penilai PAK
								<br>Nomor PAK : '.$this->ReferensiModel->NomorDUPAK($rw->hid).'
								<br>Periode PAK : '.$rw->namaperiode.'
								<br>NIP, Nama Pegawai : '.$rw->nip.','.$rw->namalengkap.'
								<br>Selanjutnya : <a href="'.base_url().'penilai/penilaian?hid='.md5(TOKEN_DOP.$rw->hid).'">Penilaian</a>
								<br>Terima Kasih';
								
					//send_notifikasi($mailfrom,$sbj,$msg,$sendto,$username)				
					$this->ProsesModel->send_notifikasi('auto reply','Penunjukkan sebagai Penilai PAK : '.$rw->namalengkap,$isinotifikasi,$this->ReferensiModel->LoadSQL("SELECT nip judul FROM penilai WHERE hid='".$this->input->post('penilai'.$i)."'"),$this->session->userdata('userName'));


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
	function fnKirimTTE($id){
		$wdt=210;$hgt=330;
		$mleft=10;
		$mright=10;
		$mtop=10;
		$mbottom=10;
		$view="P";
		
		include('assets/js/plugin/phpqrcode/qrlib.php'); 
		require_once FCPATH.'/vendor/autoload.php';
		//$mpdf = new \Mpdf\Mpdf(['mode' => 'utf-8', 'format' => 'utf-8', [$wdt,$hgt]]);
		//$this->load->library('mpdf');		
		//$mpdf=new mpdf('utf-8', array($wdt,$hgt),10,"arial",$mleft,$mright,$mtop,$mbottom);
		//$mpdf = new \Mpdf\Mpdf(['mode' => 'utf-8', 'format' => 'utf-8', [190, 236]]);
		$mpdf = new \Mpdf\Mpdf(['default_font_size' => 8,'default_font' => '','mode' => 'utf-8',[$wdt,$hgt]]);
		//$mpdf = new \Mpdf\Mpdf(['orientation' => $view,'font-family' => 'arial','font-size' => 10,'mgl'=>$mleft,'mgr'=>$mright,'mgt'=>$mtop,'mgb'=>$mbottom]);
		$mpdf->AddPageByArray(array(
				'orientation' => $view,
				'mgl' => $mleft,
				'mgr' => $mright,
				'mgt' => $mtop,
				'mgb' => $mbottom
			));
		$mpdf->SetHTMLFooter('<table width="100%" border="1" style="border-collapse:collapse" cellpadding="15">
			<tr>
			<td width="30%" align="right"><img src="'.base_url().'assets/img/logo-bsre.png" height="30"></td>
			<td width="70%">
			<ul style="font-family: Bookman Old Style;font-size:6pt;">
			<li>UU ITE No 11 Tahun 2008 Pasal 5 ayat 1<br>
				"Informasi Elektronik dan/atau Dokumen Elektronik dan/atau hasil cetaknya merupakan alat bukti hukum yang sah."</li>
			<li>Dokumen ini telah ditandatangani secara elektronik menggunakan <b>sertifikat elektronik</b> yang diterbitkan <b>BSrE</b></li>
			<li>Surat ini dapat dibuktikan keasliannya dengan menscan kode QR pada dokumen ini</li>
			</ul>
			</td>
			</tr>
			</table>');
		$sql="SELECT a.*,DATE_FORMAT(tmtgol,'%d-%m-%Y') tmtgol,DATE_FORMAT(tmtjab,'%d-%m-%Y') tmtjab,DATE_FORMAT(tgllahir,'%d-%m-%Y') tgllahir,
		CONCAT(DATE_FORMAT(startdate,'%b'),' s.d ',DATE_FORMAT(enddate,'%b Tahun %Y')) periode,
		pejabat_pak,nippejabat_pak,jabatanpejabat_pak,tgl_surat,b.startdate,
		(SELECT startdate FROM dupak_v WHERE nip=a.nip AND startdate < b.startdate ORDER BY startdate DESC LIMIT 1) startdatebefore
		FROM pemohon a JOIN periode b ON a.periode_hid=b.hid
		WHERE a.hid='".$id."'";
		
		//echo $sql;exit();
		$cn=$this->db->query($sql);
		$rw=$cn->row_array();
		
		
		$phid=$rw['hid'];
		$status=$rw['status'];

		//nilai baru
		$sql="SELECT TRIM(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(unsur_kegiatan,'I.',''),'II.',''),'III.',''),'IV.',''),'InformasiTata Kelola dan Tata Laksana Teknologi Informasi','Tata Kelola dan Tata Laksana Teknologi Informasi')) unsur,
		ROUND(SUM(total_ak_penilai),3) nilaibaru 
		FROM dupak a JOIN kamus_kegiatan b ON a.kegiatan_id=b.hid WHERE pemohon_id='".$rw['hid']."' GROUP BY unsur_kegiatan";
		$cn = $this->db->query($sql);
		foreach ($cn->result() as $rw2){
			$nilaibaru[$rw2->unsur]=$rw2->nilaibaru;
			
		}
		
		// nilai lama
		$sql="SELECT * FROM dupak_v WHERE nip='".$rw['nip']."' AND startdate='".$rw['startdatebefore']."'";
		$cn = $this->db->query($sql);
		foreach ($cn->result() as $rw2){
			$nilailama[$rw2->unsur]=$rw2->nilaibaru;
		}	

		// validasi kategori
	
		$html='<table width="100%" border="0" cellspacing="0" cellpadding="4">
		  <tr>
			<td height="71" align="center" style="font-size:12px" colspan="4">
			<img src="'.base_url().'assets/img/logo.png" width="100" /><br><br>
			<b>DAFTAR USULAN PENILAIAN DAN PENETAPAN ANGKA KREDIT</b><br>JABATAN FUNGSIONAL '.strtoupper($rw['jabatan']).'</td>
		  </tr>
          <tr><td width="35%"></td><td width="15%">NOMOR</td><td colspan="2" width="50%">: '.$this->ReferensiModel->NomorDUPAK($rw['hid']).'</td></tr>
          <tr><td width="35%"></td><td width="15%">BAHAN PENILAIAN</td><td colspan="2" width="50%">: '.$rw['periode'].'</td></tr>
          
		  <tr>
			<td colspan="4">INSTANSI : BKKBN</td>
		  </tr>
		 <tr>
		</table>';
	
		 $ttlutamalama=0;$ttlutamabaru=0;$ttlplama=0;$ttlpbaru=0;

		 $html.='<table border="1" style="border-collapse:collapse" width="100%" cellpadding="5">
		 <tr><td colspan="6" height="30" align="center"><b>KETERANGAN PERORANGAN</b></td></tr>
		 <tr><td width="5%" align="center">1</td><td width="45%" colspan="2">Nama</td><td  width="45%" colspan="3">'.$rw['namalengkap'].'</td></tr>
		 <tr><td width="5%" align="center">2</td><td width="45%" colspan="2">NIP</td><td colspan="3">'.$rw['nip'].'</td></tr>
		 <tr><td width="5%" align="center">3</td><td width="45%" colspan="2">Nomor Seri Kartu Pegawai</td><td colspan="3">'.$rw['karpeg'].'</td></tr>
		 <tr><td width="5%" align="center">4</td><td width="45%" colspan="2">Tempat dan tanggal lahir</td><td colspan="3">'.$rw['tempatlahir'].', '.$rw['tgllahir'].'</td></tr>
		 <tr><td width="5%" align="center">5</td><td width="45%" colspan="2">Jenis Kelamin</td><td colspan="3">'.$rw['jeniskelamin'].'</td></tr>
		 <tr><td width="5%" align="center">6</td><td width="45%" colspan="2">Pendidikan yang di perhitungkan angka kreditnya</td><td colspan="3">'.$rw['pendidikan'].'</td></tr>
		 <tr><td width="5%" align="center">7</td><td width="45%" colspan="2">Jabatan Pranata Komputer/TMT</td><td colspan="3">'.$rw['jabatan'].'/'.$rw['tmtjab'].'</td></tr>
		 <tr><td width="5%" align="center" rowspan="2">8</td><td width="45%" rowspan="2">Masa Kerja Golongan</td><td>Lama</td><td style="border-bottom:1px solid #fff" colspan="3">'.$rw['mkthn_lama'].' Tahun '.$rw['mkbln_lama'].' Bulan</td></tr>
		 <tr><td>Baru</td><td colspan="3">'.$rw['mkthn_baru'].' Tahun '.$rw['mkbln_baru'].' Bulan</td></tr>
		 <tr><td width="5%" align="center">10</td><td width="45%" colspan="2">Unit Kerja</td><td colspan="3">'.$rw['unitkerja'].'</td></tr>
		 ';
		$html.='<tr><td colspan="6" height="30" align="center"><b>PENETAPAN ANGKA KREDIT</b></td></tr>'; 
        $html.='<tr><td align="center">NO</td><td colspan="2" align="center">URAIAN</td><td align="center">LAMA</td><td align="center">BARU</td><td align="center">JUMLAH</td></tr>';
        $html.='<tr><td align="center">(1)</td><td colspan="2" align="center">(2)</td><td align="center">(3)</td><td align="center">(4)</td><td align="center">(5)</td></tr>';
		$html.='<tr><td rowspan="5" style="vertical-align:top">I.</td><td colspan="2">Tugas Jabatan</td><td></td><td></td><td></td></tr>';
		$html.='<tr><td colspan="2">1. Tata Kelola dan Tata Laksana Teknologi Informasi</td>';
		$ttlb=0;
		if (!empty($nilailama['Tata Kelola dan Tata Laksana Teknologi Informasi'])) {
			$html.='<td align="center">'.$nilailama['Tata Kelola dan Tata Laksana Teknologi Informasi'].'</td>'; 
			$ttlutamalama+=$nilailama['Tata Kelola dan Tata Laksana Teknologi Informasi'];
			$ttlb+=$nilailama['Tata Kelola dan Tata Laksana Teknologi Informasi'];
		} else $html.='<td align="center">0</td>';
		if (!empty($nilaibaru['Tata Kelola dan Tata Laksana Teknologi Informasi'])) {
			$html.='<td align="center">'.$nilaibaru['Tata Kelola dan Tata Laksana Teknologi Informasi'].'</td>'; 
			$ttlutamabaru+=$nilaibaru['Tata Kelola dan Tata Laksana Teknologi Informasi'];
			$ttlb+=$nilaibaru['Tata Kelola dan Tata Laksana Teknologi Informasi'];
		} else $html.='<td align="center">0</td>';
		$html.='<td align="center">'.sprintf("%.3f",$ttlb).'</td>';
		$html.='</tr>';
		
		$ttlb=0;
		$html.='<tr><td colspan="2">2. Infrastruktur Teknologi Informasi</td>';
		if (!empty($nilailama['Infrastruktur Teknologi Informasi'])) {
			$html.='<td align="center">'.$nilailama['Infrastruktur Teknologi Informasi'].'</td>'; 
			$ttlutamalama+=$nilailama['Infrastruktur Teknologi Informasi'];
			$ttlb+=$nilailama['Infrastruktur Teknologi Informasi'];
		} else $html.='<td align="center">0</td>';
		if (!empty($nilaibaru['Infrastruktur Teknologi Informasi'])) {
			$html.='<td align="center">'.$nilaibaru['Infrastruktur Teknologi Informasi'].'</td>'; 
			$ttlutamabaru+=$nilaibaru['Infrastruktur Teknologi Informasi'];
			$ttlb+=$nilaibaru['Infrastruktur Teknologi Informasi'];
		} else $html.='<td align="center">0</td>';
		$html.='<td align="center">'.sprintf("%.3f",$ttlb).'</td>';
		
		$html.='</tr>';

		$ttlb=0;
		$html.='<tr><td colspan="2">3. Sistem Informasi dan Multimedia</td>';
		if (!empty($nilailama['Sistem Informasi dan Multimedia'])) {
			$html.='<td align="center">'.$nilailama['Sistem Informasi dan Multimedia'].'</td>';
			$ttlutamalama+=$nilailama['Sistem Informasi dan Multimedia']; 
			$ttlb+=$nilailama['Sistem Informasi dan Multimedia']; 
		} else $html.='<td align="center">0</td>';
		if (!empty($nilaibaru['Sistem Informasi dan Multimedia'])) {
			$html.='<td align="center">'.$nilaibaru['Sistem Informasi dan Multimedia'].'</td>'; 
			$ttlutamabaru+=$nilaibaru['Sistem Informasi dan Multimedia'];
			$ttlb+=$nilaibaru['Sistem Informasi dan Multimedia'];
		} else $html.='<td align="center">0</td>';
		$html.='<td align="center">'.sprintf("%.3f",$ttlb).'</td>';
		$html.='</tr>';
		$html.='<tr style="background-color:#F0F0F0"><td colspan="2"><b>JUMLAH TUGAS JABATAN</b></td><td align="center">'.sprintf("%.3f",$ttlutamalama).'</td><td align="center">'.sprintf("%.3f",$ttlutamabaru).'</td><td align="center">'.sprintf("%.3f",($ttlutamalama+$ttlutamabaru)).'</td></tr>';
		
		$ttlb=0;
		$html.='<tr><td>II.</td><td colspan="2">Pengembangan Profesi</td>';
		if (!empty($nilailama['Pengembangan Profesi'])) {
			$html.='<td align="center">'.$nilailama['Pengembangan Profesi'].'</td>'; 
			$ttlplama+=$nilailama['Pengembangan Profesi']; 
			$ttlb+=$nilailama['Pengembangan Profesi']; 
		} else $html.='<td align="center">0</td>';
		if (!empty($nilaibaru['Pengembangan Profesi'])) {
			$html.='<td align="center">'.$nilaibaru['Pengembangan Profesi'].'</td>'; 
			$ttlpbaru+=$nilaibaru['Pengembangan Profesi'];
			$ttlb+=$nilaibaru['Pengembangan Profesi'];
		} else $html.='<td align="center">0</td>';
		$html.='<td align="center">'.sprintf("%.3f",$ttlb).'</td>';
		
		$html.='</tr>';

		$ttlb=0;
		$html.='<tr><td>III.</td><td colspan="2">Penunjang Kegiatan Teknologi Informasi</td>';
		if (!empty($nilailama['Penunjang Kegiatan teknologi informasi berbasis komputer'])) {
			$html.='<td align="center">'.$nilailama['Penunjang Kegiatan teknologi informasi berbasis komputer'].'</td>'; 
			$ttlplama+=$nilailama['Penunjang Kegiatan teknologi informasi berbasis komputer']; 
			$ttlb+=$nilailama['Penunjang Kegiatan teknologi informasi berbasis komputer']; 
		} else $html.='<td align="center">0</td>';
		if (!empty($nilaibaru['Penunjang Kegiatan teknologi informasi berbasis komputer'])) {
			$html.='<td align="center">'.$nilaibaru['Penunjang Kegiatan teknologi informasi berbasis komputer'].'</td>'; 
			$ttlpbaru+=$nilaibaru['Penunjang Kegiatan teknologi informasi berbasis komputer'];
			$ttlb+=$nilaibaru['Penunjang Kegiatan teknologi informasi berbasis komputer'];
		} else $html.='<td align="center">0</td>';
		$html.='<td align="center">'.sprintf("%.3f",$ttlb).'</td>';

		$html.='</tr>';
		$html.='<tr style="background-color:#F0F0F0"><td colspan="3" align="center"><b>Jumlah I, II, dan III</b></td><td align="center">'.sprintf("%.3f",($ttlutamalama+$ttlplama)).'</td><td align="center">'.sprintf("%.3f",($ttlutamabaru+$ttlpbaru)).'</td><td align="center">'.sprintf("%.3f",($ttlutamalama+$ttlutamabaru+$ttlplama+$ttlpbaru)).'</td></tr>';
		
		$html.='<tr><td colspan="6" height="50">'.$rw['hasil'].'</td></tr>';	

		$html.='</table><br>';

		$html.='<table width="100%">';
		$html.='<tr><td width="60%" style="vertical-align: top"><b>ASLI</b> disampaikan dengan hormat Kepada Kepala BKN
		<br><br><br><br><br><br>Tembusan disampaikan kepada :
		<br>1. Pranata Komputer yang bersangkutan;
		<br>2. Sekretaris Tim Penilai yang bersangkutan;
		<br>3. Kepala Biro/Bagian Kepegawaian yang bersangkutan;*)
		<br>4. Pimpinan Unit Kerja yang bersangkutan; dan				
		<br>5. Pejabat lain yang dipandang perlu.
		<br><br>*) Coret yang tidak perlu 
		</td><td width="40%">Ditetapkan di Jakarta<br>Pada tanggal '.$this->ReferensiModel->ConvertFromYMD($rw['tgl_surat']," ",1).'<br><br>a.n Kepala Badan Kependudukan dan Keluarga Berencana Nasional,<br>'.$rw['jabatanpejabat_pak'].'<br><br><br><br><br><br><br>'.$rw['pejabat_pak'].'</td></tr>';
		$html.='</table>';
		//echo $html;exit();
		
		$mpdf->showImageErrors = true;
		$mpdf->curlAllowUnsafeSslRequests = true;
		
		$mpdf->WriteHTML($html);

		// folder
		$path="assets/uploads/dokumen/".$rw['nip']."/";

		$file=$path.'PAK_TTE_'.$rw['hid'].'_'.$rw['nip'].'.pdf';
		$mpdf->Output($file,'F');

		// kirim tte ke simsdm
		if (file_exists($file)){

			$codeContents = 'NIP: '.$rw['nip'].',Nama : '.$rw['namalengkap'].', Jabatan: '.$rw['jabatan'].' ,No PAK: '.$this->ReferensiModel->NomorDUPAK($rw['hid']).',Periode PAK : '.$rw['periode'].',Total PAK: '.sprintf("%.3f",($ttlutamalama+$ttlutamabaru+$ttlplama+$ttlpbaru)).',Status Akhir : '.$rw['hasil'];
			
			// kirim ke simsdm TTE
			$file=base64_encode(file_get_contents($file));
			$urlapi=URL_TTESIMSDM."index.php/TandatanganDigitalController/kirimTTE";
			$data = array(
				"token" => md5(date("Ymd").TOKEN_TTESIMSDM),
				"process_desc"=>"PAK DOP",
				"signed_nip"=>$this->input->post('pejabattte'),
				"created_by"=>"dop",
				"owner_nip"=>$rw['nip'],
				"process_detail"=>$codeContents,
				"process_id"=>$rw['hid'],
				"process_name"=>"pakdop",
				"file"=>$file
			);
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
			
			if (!empty($json)){
				if ($json['status']==1){
					$this->session->set_flashdata('response',$this->ReferensiModel->showMessage('Proses kirim file PAK ke TTE berhasil.','success'));
					$sql="UPDATE pemohon SET tte_date=NOW(),tte_file='".$json['msg']."' WHERE hid='".$rw['hid']."'";
					$save=$this->db->query($sql);
				}else{
					$this->session->set_flashdata('response',$this->ReferensiModel->showMessage('Gagal kirim file PAK ke TTE.','danger'));
				}
			}else{
				$this->session->set_flashdata('response',$this->ReferensiModel->showMessage('Gagal kirim file PAK ke TTE.','danger'));
			}
				
		}else{
			$this->session->set_flashdata('response',$this->ReferensiModel->showMessage('Gagal generate file PAK.','danger'));
		}

	}
	function kirimtte(){
		$ids=explode(",",$this->input->post('ids'));
		for ($j=0;$j<count($ids);$j++){
			$this->fnKirimTTE($ids[$j]);
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
			if ($this->input->post('jabatan')!='')
			$data=array_merge($data,array('jabatanpejabat_pak'=>$this->input->post('jabatan'),'pejabat_pak'=>$json[0]['namalengkap'],'nippejabat_pak'=>$nipbaru));
			else
			$data=array_merge($data,array('jabatanpejabat_pak'=>$json[0]['jab_akhir'],'pejabat_pak'=>$json[0]['namalengkap'],'nippejabat_pak'=>$nipbaru));
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
	public function updateNoteBAP(){
		//var_dump($_POST);
		$hid=$this->input->post('hid');
		$dataoutput=array(
			'notes'=>$this->input->post('keterangan'),
			'updated_date'=>date("Y-m-d H:i:s"),
			'updated_by'=>$this->session->userdata('userName'),
		);
		$this->ProsesModel->update_personal($dataoutput,$hid,'pleno_lines','hid');
		$this->session->set_flashdata('response','<div class="alert alert-success m-t-40">Data berhasil diupdate. </div>');
		
		$cn=$this->db->get_where('pleno_lines',array('hid'=>$hid));
		$rw=$cn->row();

		$pemohonid=$rw->pemohon_id;
		$this->ProsesModel->update_personal(array('hasil'=>$this->input->post('hasil'),
		'mkthn_lama'=>$this->input->post('mkthnlama'),
		'mkbln_lama'=>$this->input->post('mkblnlama'),
		'mkthn_baru'=>$this->input->post('mkthnbaru'),
		'mkbln_baru'=>$this->input->post('mkblnbaru'),),$pemohonid,'pemohon','hid');
		
		redirect('penilaian/bap?tab='.$this->input->post('tab').'&periode='.$this->input->post('periode'));
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