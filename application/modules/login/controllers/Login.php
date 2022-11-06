<?php defined('BASEPATH') or exit('No direct script access allowed');

class Login extends MX_Controller
{
  function __construct()
  {
      parent::__construct();
      $this->load->model('UserModel');
      $this->load->model('ReferensiModel');
  }

  function index() {
		
       if( $this->session->userdata('isLoggedIn') ) {
         redirect(base_url().'dashboard/index');
        } else {
            $this->show_login(false);
        }


    }
    function cetakpak(){
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
		WHERE md5(CONCAT('".TOKEN_DOP."',a.hid))='".$this->input->get('hid')."'";
		
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
		$file='PAK_'.$rw['nip'].'.pdf';
		$mpdf->Output($file,'I');
    }
    function authLogin() {
        // Create an instance of the user model
        $this->load->model('UserModel');
		$this->load->library('securimage/securimage.php');

        // Grab the email and password from the form POST
        $email = $this->input->post('username');
        $pass  = $this->input->post('password');
        $token = $this->input->post('csrf_token');
		
		
	
		if (empty($pass)) {
			$this->session->set_flashdata('response','<div class="alert alert-card alert-danger" role="alert">Password kosong.<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button></div>');
			redirect('login/show_login');
		}
		
		// validasi captcha
		//include_once 'assets/plugins/securimage/securimage.php';
		$securimage = new Securimage();
				
		
		
		if ($securimage->check($this->input->post('user-captcha')) == false) {
			$this->session->set_flashdata('response','<div class="alert alert-card alert-danger" role="alert">Captcha salah.<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button></div>');
			redirect('login/show_login');
			exit();
		}
		
		
        //Ensure values exist for email and pass, and validate the user's credentials
        if( $email && $pass && $this->UserModel->validate_user($email,$pass) && $this->UserModel->checkToken($token, 'sig_in')) {
            redirect(base_url().'dashboard/index');
        } else {
			
			
			
            // Otherwise show the login screen with an error message.
			
            $this->session->set_flashdata('response','<div class="alert alert-card alert-danger" role="alert">Username/Password salah.<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button></div>');
			redirect('/login/show_login');
        }
    }
    function securimage() {
		$this->load->library('securimage/securimage.php');
		$img = new Securimage();
		$img->show(); // alternate use:  $img->show('/path/to/background.jpg');
	}

    function show_login( $show_error = false ) {
        $this->load->model('UserModel');	
        $data['error'] = $show_error;
		
		if( $this->session->userdata('isLoggedIn') ) {
			redirect(base_url().'dashboard/index');
        }
		
		
		$this->load->view('LoginView',$data);
		
    }

    function logout() {	  
	  // update last logout
      //$this->UserModel->update_lastlogout($this->session->userdata('userName'));
      $this->session->sess_destroy();
      $this->index();
    }
}