<?php
class ReferensiModel extends CI_Model {

    var $details;
	
	function __construct() { 
         parent::__construct(); 
    } 
	
    function menuGuard() {
		$username=$this->session->userdata('userName');
		// cek apakah login
		if( !$this->session->userdata('isLoggedIn') ){
			return false;
		}else{
			// cek apakah admin
			if ($username=='admin'){				
				return true;
			}else{
				$urlmenu=str_replace(base_url(),'','http://'.$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI']);
				// cek apakah ada di menu
				$sql="SELECT hid judul FROM menus WHERE mlink='".$urlmenu."'";
				$hid=$this->LoadSQL($sql);
				// jika ada cek ke roles menu
				if ($hid>0){
					var_dump($_SESSION);
					// cek apakah punya priveleges
					$sql="SELECT COUNT(*) judul FROM menus_roles_lines WHERE hid_menus='$hid' AND hid_roles=(SELECT roles_id FROM users WHERE id='".$this->session->userdata('idUser')."')";
					$num=$this->LoadSQL($sql);
					if ($num>0) return true;
						else return false;
				}
				
			}	
		}
	}
	function randomPassword() {
		$alphabet = "abcdefghijklmnopqrstuwxyzABCDEFGHIJKLMNOPQRSTUWXYZ0123456789";
		$pass = array(); //remember to declare $pass as an array
		$alphaLength = strlen($alphabet) - 1; //put the length -1 in cache
		for ($i = 0; $i < 8; $i++) {
			$n = rand(0, $alphaLength);
			$pass[] = $alphabet[$n];
		}
		return implode($pass); //turn the array into a string
	}
	function LoadSQL($sql) {
        $query = $this->db->query($sql);
		foreach ($query->result() as $rw){
			return $rw->judul;
		}
    }
	
	function SUMIF($a) {
		$totale=0;
		if(!is_array($a)) return $a;
		foreach($a as $key=>$value)
			$totale += $this->SUMIF($value);
		return $totale;
		
	}
	
	public function displayTableSearch($kolom,$table,$filter,$page,$limit,$order,$orderby) {
		
		$this->db->select($kolom);
		$this->db->order_by($orderby, $order);
		
		if ($page=='') $page=1;
		$start=($page-1)*$limit;
		
		if($limit>0){
			$this->db->limit($limit, $start);
		}
		
		$query=$this->db->get_where($table,$filter);
		return $query->result();
	}
	function thumb($fullname, $width, $height){
       
		
		$dir = 'assets/uploads/profile/';
		$url = base_url() . 'assets/uploads/profile/';
		
		$extension = pathinfo($fullname, PATHINFO_EXTENSION);
        $filename = pathinfo($fullname, PATHINFO_FILENAME);
		
		/*store image in server*/
		$image_org = $dir . $filename . "." . $extension;
		$image_returned = $url . $filename . "_thumb." . $extension;
		

		if (!file_exists($dir.$filename."_thumb.".$extension)) {
			$data = file_get_contents($fullname);
			file_put_contents($image_org, $data);
			$config['image_library'] = 'gd2';
			$config['source_image'] = $image_org;
			$config['create_thumb'] = TRUE;
			$config['maintain_ratio'] = TRUE;
			$config['width']    = $width;
			$config['height']   = $height;
			$config['new_image'] = FCPATH."assets/uploads/profile/";
			$config['thumb_marker'] = '_thumb';
			$this->load->library('image_lib', $config); 
			$this->image_lib->resize();
			
			// hapus file asli
			unlink($image_org);
		 }
		
		return $image_returned;
    }
	function getData($kolom,$table,$filter){
		$this->db->select($kolom);
		$query = $this->db->get_where($table,$filter);
		foreach ($query->result() as $rw){
			return $rw->judul;
		}
	}
	function showData($table,$filter){
		$this->db->select('*');
		$query = $this->db->get_where($table,$filter);
		return $query->row();
	}
	function showDataArray($table,$filter){
		$this->db->select('*');
		$query = $this->db->get_where($table,$filter);
		return $query->row_array();
	}
	
	function LoadListMaster($sql,$fld,$val,$ochg){
	   if ($sql=="") exit("No Query !");
	   
    $slct= '<select id="'.$fld.'" name="'.$fld.'" '.$ochg.'>';
	$slct=$slct. '<option value="" ></option>';
    $query = $this->db->query($sql);
	foreach ($query->result() as $rw){
	  		if ($rw->kode==$val) $sel="SELECTED"; else $sel="";
			$slct=$slct. '<option value="'.$rw->kode.'" '.$sel.'>'.$rw->nilai.'</option>';
	  }
    $slct=$slct. '</select>';
	return $slct;	  
   }	
    
	function LoadList($list= array(),$list2=array(),$fld,$val,$class,$default){
		
      $slct= '<select id="'.$fld.'" name="'.$fld.'" '.$class.'>';
	  $slct=$slct. '<option value="" >'.$default.'</option>';
      for ($i=0;$i<count($list);$i++){
	  		if (trim($list2[$i])==trim($val)) $sel="SELECTED"; else $sel="";
			$slct=$slct. '<option value="'.trim($list2[$i]).'" '.$sel.'>'.$list[$i].'</option>';
	  }
      $slct=$slct. '</select>';
	  echo $slct;	  
   }
   function rand_string( $length ) {
		$chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";	
		$str="";
		$size = strlen( $chars );
		for( $i = 0; $i < $length; $i++ ) {
			$str .= $chars[ rand( 0, $size - 1 ) ];
		}
		return $str;
	}
	function DMYtoYMD($tgl){
		//dd-mm-yyyy to yyyy-mm-dd
		$ntgl=substr($tgl,6,4).'-'.substr($tgl,3,2).'-'.substr($tgl,0,2);
		if($tgl=='') $ntgl='';
		return $ntgl;
	}
	function YMDtoDMY($tgl){
		//yyyy-mm-dd to dd-mm-yyyy
		$ntgl=substr($tgl,8,2).'-'.substr($tgl,5,2).'-'.substr($tgl,0,4);
		if($tgl=='') $ntgl='';
		return $ntgl;
	}
	function ListBulan($val,$fld,$class){
		$bulanpanjang=array("Januari","Februari","Maret","April","Mei","Juni","Juli","Agustus","September","Oktober","Nopember","Desember");
		$bulannilai=array("01","02","03","04","05","06","07","08","09","10","11","12");
		$this->LoadList($bulanpanjang,$bulannilai,$fld,$val,$class,'');
	}
	function ListTahun($val,$fld,$class){
		for ($i=2016;$i<=date("Y")+4;$i++) $athn[]=$i;
		$this->LoadList($athn,$athn,$fld,$val,$class,'');
	}
	
	function ConvertFromYMD($tgl,$delimeter,$format){
		$bulanpanjang=array("Januari","Februari","Maret","April","Mei","Juni","Juli","Agustus","September","Oktober","Nopember","Desember");
		$bulanpendek=array("Jan","Feb","Mar","Apr","Mei","Jun","Jul","Ags","Sep","Okt","Nop","Des");
		//yyyy-mm-dd to dd-mm-yyyy	
		$ntgl='';
		if ($tgl!='' && $tgl!='0000-00-00'){
			$ntgl=substr($tgl,8,2).$delimeter.substr($tgl,5,2).$delimeter.substr($tgl,0,4);
			if ($format==1)$ntgl=substr($tgl,8,2).$delimeter.$bulanpanjang[substr($tgl,5,2)-1].$delimeter.substr($tgl,0,4);
			if ($format==2)$ntgl=substr($tgl,8,2).$delimeter.$bulanpendek[substr($tgl,5,2)-1].$delimeter.substr($tgl,0,4);
			if ($format==3)$ntgl=$bulanpanjang[substr($tgl,5,2)-1].$delimeter.substr($tgl,0,4);
			if ($format==4)$ntgl=substr($tgl,8,2).$delimeter.substr($tgl,5,2).$delimeter.substr($tgl,0,4);
			if ($format==5)$ntgl=substr($tgl,8,2).$delimeter.$bulanpanjang[substr($tgl,5,2)-1];
			if ($tgl=="0000-00-00") $ntgl="";
		}
		return $ntgl;
	}
	function ConvertFromDMY($tgl,$delimeter,$format){
		$bulanpanjang=array("Januari","Februari","Maret","April","Mei","Juni","Juli","Agustus","September","Oktober","Nopember","Desember");
		$bulanpendek=array("Jan","Feb","Mar","Apr","Mei","Jun","Jul","Ags","Sep","Okt","Nop","Des");
		//dd-mm-yyyy to dd-mm-yyyy
		
		$ntgl=substr($tgl,0,2).$delimeter.substr($tgl,3,2).$delimeter.substr($tgl,6,4);
		if ($format==1)$ntgl=substr($tgl,0,2).$delimeter.$bulanpanjang[substr($tgl,3,2)-1].$delimeter.substr($tgl,6,4);
		if ($format==2)$ntgl=substr($tgl,0,2).$delimeter.$bulanpendek[substr($tgl,3,2)-1].$delimeter.substr($tgl,6,4);
		if ($format==3)$ntgl=$bulanpanjang[substr($tgl,3,2)-1].$delimeter.substr($tgl,6,4);
		if ($format==4)$ntgl=substr($tgl,0,2).$delimeter.substr($tgl,3,2).$delimeter.substr($tgl,6,4);
		if ($tgl=="0000-00-00") $ntgl="";
		return $ntgl;
	}
	
	
	
	public function insert_referensi($data,$table) { 
		 $data = $this->security->xss_clean($data);	
         if ($this->db->insert($table, $data)) { 
            return true; 
         } 
      } 
   
      public function delete_referensi($hid,$table) { 
         if ($this->db->delete($table, "hid = ".$hid)) { 
            return true; 
         } 
      } 
   
      public function update_referensi($data,$hid,$table) { 
		 $data = $this->security->xss_clean($data);	
         $this->db->set($data); 
         $this->db->where("hid", $hid); 
         $this->db->update($table, $data); 
      } 
    
	  public function update_referensi2($data,$hid,$table,$kolom) { 
		 $data = $this->security->xss_clean($data);	
         $this->db->set($data); 
         $this->db->where($kolom, $hid); 
         $this->db->update($table, $data); 
      } 
	
	// insert logs
	 public function insert_logs($iduser,$crud,$action,$idaction,$tablename){
		$ip = $_SERVER['REMOTE_ADDR'];
		$data = array( 
            'username'=> $iduser,
			'CRUD'=> $crud,
			'created_at' => date('Y-m-d H:i:s'),
			'action'=> $action,
			'ip_address' =>$ip,	
			'table_name' =>$tablename		
         ); 
		if ($idaction!=''){
			$data=array_merge($data,array('id_action' =>$idaction));
		} 
		$this->insert_referensi($data,'logs');   	
		 
	 }	
	 
	function calWorkingDay($tgl1,$tgl2, $holidays = array()){
		$holidaysx=array();
		foreach ($holidays as  $holiday) {
			$holidaysx[] = strtotime($holiday);
		}
		//echo $tgl1.','.$tgl2.'<br>';
		$start_ts = strtotime(substr($tgl1,0,10));
		$end_ts = strtotime(substr($tgl2,0,10));
		$working_days = 0;
		$tmp_ts = $start_ts;
		//echo $tmp_ts;
		while ($tmp_ts <= $end_ts) {
			$tmp_day = date('D', $tmp_ts);
			#validasi asal tidak hari minggu
			if (!($tmp_day == 'Sun') && !($tmp_day == 'Sat') && !in_array($tmp_ts, $holidaysx)) {
				$working_days++;			
			}
			$tmp_ts = strtotime('+1 day', $tmp_ts);
		
	  }
	  return $working_days;
	  
	}
	public function NomorDUPAK($hid){
		$sql="SELECT CONCAT(UPPER(DATE_FORMAT(b.startdate,'%b')),'-',UPPER(DATE_FORMAT(b.enddate,'%b')),'/',DATE_FORMAT(b.startdate,'%Y'),'/',LPAD(a.hid,5,'0')) judul FROM pemohon a JOIN periode b ON a.periode_hid=b.hid WHERE a.hid='$hid'";
		$nomor=$this->LoadSQL($sql);
		
		return $nomor;
	}
	public function StatusDUPAK($id){
		if ($id==0) $status='Draft';
		elseif($id==1) $status='Terdaftar';
		elseif($id==2) $status='Kirim ke Sekretariat';
		elseif($id==3) $status='Sudah ada Penilai';
		elseif($id==4) $status='Sudah Dinilai';
		elseif($id==5) $status='Masuk Pleno';
		elseif($id==6) $status='Sudah Tanda Tangan';
		elseif($id==7) $status='Direvisi Penilai';
		elseif($id==8) $status='Perbaikan Revisi oleh User';
		else $status='';
		return $status;
	}
	function pagination($total, $per_page = 10,$page = 1, $url = '?'){        
 
    	
        $adjacents = "2"; 

    	$page = ($page == 0 ? 1 : $page);  
    	$start = ($page - 1) * $per_page;								
		
    	$prev = $page - 1;							
    	$next = $page + 1;
        $lastpage = ceil($total/$per_page);
    	$lpm1 = $lastpage - 1;
    	
    	$pagination = "";
		
		if($lastpage > 1)
    	{	
    		$pagination .= "<ul class='pagination'>";
                    //$pagination .= "<li class='paginate_button previous disabled'>Page $page of $lastpage</li>";
    		if ($lastpage < 7 + ($adjacents * 2))
    		{	
    			for ($counter = 1; $counter <= $lastpage; $counter++)
    			{
    				if ($counter == $page)
    					$pagination.= "<li class='paginate_button page-item active'><a class='page-link'>$counter</a></li>";
    				else
    					$pagination.= "<li class='paginate_button page-item '><a class='page-link' href='{$url}page=$counter'>$counter</a></li>";					
    			}
    		}
    		elseif($lastpage > 5 + ($adjacents * 2))
    		{
    			if($page < 1 + ($adjacents * 2))		
    			{
    				for ($counter = 1; $counter < 4 + ($adjacents * 2); $counter++)
    				{
    					if ($counter == $page)
    						$pagination.= "<li class='paginate_button page-item active'><a class='page-link'>$counter</a></li>";
    					else
    						$pagination.= "<li class='paginate_button page-item '><a class='page-link' href='{$url}page=$counter'>$counter</a></li>";					
    				}
    				$pagination.= "<li class='paginate_button page-item '><a class='page-link'>...</a></li>";
    				$pagination.= "<li class='paginate_button page-item '><a class='page-link' href='{$url}page=$lpm1'>$lpm1</a></li>";
    				$pagination.= "<li class='paginate_button page-item '><a class='page-link' href='{$url}page=$lastpage'>$lastpage</a></li>";		
    			}
    			elseif($lastpage - ($adjacents * 2) > $page && $page > ($adjacents * 2))
    			{
    				$pagination.= "<li class='paginate_button page-item '><a class='page-link' href='{$url}page=1'>1</a></li>";
    				$pagination.= "<li class='paginate_button page-item '><a class='page-link' href='{$url}page=2'>2</a></li>";
    				$pagination.= "<li class='paginate_button page-item '><a class='page-link'>...</a></li>";
    				for ($counter = $page - $adjacents; $counter <= $page + $adjacents; $counter++)
    				{
    					if ($counter == $page)
    						$pagination.= "<li class='paginate_button page-item '><a class='page-link'>$counter</a></li>";
    					else
    						$pagination.= "<li class='paginate_button page-item '><a class='page-link' href='{$url}page=$counter'>$counter</a></li>";					
    				}
    				$pagination.= "<li class='paginate_button page-item '><a class='page-link'>...</a></li>";
    				$pagination.= "<li class='paginate_button page-item '><a class='page-link' href='{$url}page=$lpm1'>$lpm1</a></li>";
    				$pagination.= "<li class='paginate_button page-item '><a class='page-link' href='{$url}page=$lastpage'>$lastpage</a></li>";		
    			}
    			else
    			{
    				$pagination.= "<li class='paginate_button page-item '><a class='page-link' href='{$url}page=1'>1</a></li>";
    				$pagination.= "<li class='paginate_button page-item '><a class='page-link' href='{$url}page=2'>2</a></li>";
    				$pagination.= "<li class='paginate_button page-item '><a class='page-link'>...</a></li>";
    				for ($counter = $lastpage - (2 + ($adjacents * 2)); $counter <= $lastpage; $counter++)
    				{
    					if ($counter == $page)
    						$pagination.= "<li class='paginate_button page-item active'><a class='page-link'>$counter</a></li>";
    					else
    						$pagination.= "<li class='paginate_button page-item '><a class='page-link' href='{$url}page=$counter'>$counter</a></li>";					
    				}
    			}
    		}
    		
    		if ($page < $counter - 1){ 
    			$pagination.= "<li class='paginate_button page-item '><a class='page-link' href='{$url}page=$next'>Next</a></li>";
                $pagination.= "<li class='paginate_button page-item '><a class='page-link' href='{$url}page=$lastpage'>Last</a></li>";
    		}else{
    			$pagination.= "<li class='paginate_button page-item '><a class='page-link'>Next</a></li>";
                $pagination.= "<li class='paginate_button page-item '><a class='page-link'>Last</a></li>";
            }
    		$pagination.= "</ul>";		
    	}
    
    
        return '<div class="col-sm-12 col-md-12"><div class="dataTables_paginate paging_simple_numbers">'.$pagination.'</div></div>';
		
	}
	function showMessage($html,$tipe){
		return '<div class="alert alert-card alert-'.$tipe.'" role="alert">'.$html.'
						<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span>
                        </button>
				</div>';
	}
	function showMessageXls($file,$username){
		return '<div class="col-sm-12">	<div class="alert alert-success mb-2" role="alert">
                        Loading report berhasil. File dapat <a href="'.base_url().'ujikompetensi/openfile?username='.$username.'&filename='.$file.'" target="_blank">di download disini !
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
            </div></div>';
	}
	function kekatapecahan($x) {
		$x = abs($x);	
		$angka = array("nol", "satu", "dua", "tiga", "empat", "lima","enam", "tujuh", "delapan", "sembilan");
		$temp = " ". $angka[$x];
		return $temp;
	}
	
	function tkoma($x){
		  $str = stristr($x,".");
		  $ex = explode('.',$x);		  
		  
		  $string = array("nol", "satu", "dua", "tiga", "empat", "lima", "enam", "tujuh", "delapan",   "sembilan","sepuluh", "sebelas");
		  $temp = "";
		 
		  
		  $pjg = strlen($str);
		  $i =1;	
		  
		  
		  if($a>=1 && $a< 12){   
		   $temp .= " ".$string[$a];
		  }else if($a>12 && $a < 20){   
		   $temp .= $this->kekata($a - 10)." belas";
		  }else if ($a>=20 && $a<100){   
		   $temp .= $this->kekata($a / 10)." puluh". $this->kekata($a % 10);
		  }else{
		   if($a2<1){
			
			while ($i<$pjg){     
			 $char = substr($str,$i,1);     
			 $i++;
			 $temp .= " ".$string[$char];
			}
		   }
		  }  
		  
		return $temp;
	}
	function terbilangpecahan($x){
		  if($x<0){
		   $hasil = "minus ".trim($this->kekata(x));
		  }else{
		   $poin = trim($this->tkoma($x));
		   $hasil = trim($this->kekata($x));
		  }
		  
		if($poin){
		   $hasil = $hasil." koma ".$poin;
		  }else{
		   $hasil = $hasil;
		  }
			
		  return $hasil;  
	}
	function terbilang($x, $style=4) {
		#
			if($x<0) {
		#
				$hasil = "minus ". trim($this->kekata($x));
		#
			} else {
		#
				$hasil = trim($this->kekata($x));
		#
			}      
		#
			switch ($style) {
		#
				case 1:
		#
					$hasil = strtoupper($hasil);
		#
					break;
		#
				case 2:
		#
					$hasil = strtolower($hasil);
		#
					break;
		#
				case 3:
		#
					$hasil = ucwords($hasil);
		#
					break;
		#
				default:
		#
					$hasil = ucfirst($hasil);
		#
					break;
		#
			}      
		#
			return $hasil;
		#
	} 
	function kekata($x) {
		#
			$x = abs($x);
		#
			$angka = array("", "satu", "dua", "tiga", "empat", "lima","enam", "tujuh", "delapan", "sembilan", "sepuluh", "sebelas");
		#
			$temp = "";
		#
			if ($x <12) {
		#
				$temp = " ". $angka[$x];
		#
			} else if ($x <20) {
		#
				$temp = $this->kekata($x - 10). " belas";
		#
			} else if ($x <100) {
		#
				$temp = $this->kekata($x/10)." puluh". $this->kekata($x % 10);
		#
			} else if ($x <200) {
		#
				$temp = " seratus" . $this->kekata($x - 100);
		#
			} else if ($x <1000) {
		#
				$temp = $this->kekata($x/100) . " ratus" . $this->kekata($x % 100);
		#
			} else if ($x <2000) {
		#
				$temp = " seribu" . $this->kekata($x - 1000);
		#
			} else if ($x <1000000) {
		#
				$temp = $this->kekata($x/1000) . " ribu" . $this->kekata($x % 1000);
		#
			} else if ($x <1000000000) {
		#
				$temp = $this->kekata($x/1000000) . " juta" . $this->kekata($x % 1000000);
		#
			} else if ($x <1000000000000) {
		#
				$temp = $this->kekata($x/1000000000) . " milyar" . $this->kekata(fmod($x,1000000000));
		#
			} else if ($x <1000000000000000) {
		#
				$temp = $this->kekata($x/1000000000000) . " trilyun" . $this->kekata(fmod($x,1000000000000));
		#
			}      
		#
				return $temp;
		#
	}
	function exportExcel($sql,$uname,$jdl,$nfile,$jdl2){
	   
		if ($sql==""){
			echo $this->ReferensiModel->showMessage('Data kosong.','danger');
			exit();
		}
		
		/** PHPExcel */
		require_once 'assets/plugins/phpxls1.8/Classes/PHPExcel.php';
		
		
		// Create new PHPExcel object
		//echo date('H:i:s') . " Create new PHPExcel object\n";
		$objPHPExcel = new PHPExcel();
		$styleArray1 = array('font' => array('bold' => true,'size'  => 11,'name'  => 'Arial',),'alignment' => array('horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_LEFT,'vertical'=> PHPExcel_Style_Alignment::VERTICAL_CENTER),);
		$styleArray1_1 = array('font' => array('bold' => false,'size'  => 8,'name'  => 'Arial',),'alignment' => array('horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_LEFT,'vertical'=> PHPExcel_Style_Alignment::VERTICAL_CENTER),);
		$styleArray2 = array('font' => array('bold' => true,),'alignment' => array('horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_CENTER,'vertical'=> PHPExcel_Style_Alignment::VERTICAL_CENTER,'wrap'=> true),);
		$styleArray3 = array('borders' => array('allborders' => array('style' => PHPExcel_Style_Border::BORDER_MEDIUM,'color' => array('argb' => 'DCDCDC'),),),'font' => array('size' => 8,'bold' => true,),'alignment' => array('horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_CENTER,'vertical'   => PHPExcel_Style_Alignment::VERTICAL_CENTER,'wrap'=> true,),'fill' => array('type' => PHPExcel_Style_Fill::FILL_SOLID,'color' =>array('rgb' => 'CCCCCC'),),);
		$styleArray3_1 = array('borders' => array('allborders' => array('style' => PHPExcel_Style_Border::BORDER_MEDIUM,'color' => array('argb' => 'DCDCDC'),),),'font' => array('size' => 8,'bold' => false,),'alignment' => array('horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_CENTER,'vertical'   => PHPExcel_Style_Alignment::VERTICAL_TOP,'wrap'=> true,),);
		$styleArray4 = array('borders' => array('allborders' => array('style' => PHPExcel_Style_Border::BORDER_THIN,'color' => array('argb' => '000000'),),),'font' => array('size' => 10,'bold' => true,),'alignment' => array('horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_LEFT,'vertical'   => PHPExcel_Style_Alignment::VERTICAL_CENTER,'wrap'=> true,),'fill' => array('type' => PHPExcel_Style_Fill::FILL_SOLID,'color' =>array('rgb' => '999999'),),);
		$styleArray5 = array('borders' => array('allborders' => array('style' => PHPExcel_Style_Border::BORDER_THIN,'color' => array('argb' => '000000'),),),'font' => array('size' => 10,'bold' => false,),'alignment' => array('horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_CENTER,'vertical'   => PHPExcel_Style_Alignment::VERTICAL_CENTER,'wrap'=> true,),);
		$styleArray6 = array('borders' => array('left' => array('style' => PHPExcel_Style_Border::BORDER_THIN,),'right' => array('style' => PHPExcel_Style_Border::BORDER_THIN,),'bottom' => array('style' => PHPExcel_Style_Border::BORDER_THIN,),'top' => array('style' => PHPExcel_Style_Border::BORDER_THIN,), 'font' => array('bold' => true,),'alignment' => array('horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_LEFT,'vertical'=> PHPExcel_Style_Alignment::VERTICAL_CENTER,'wrap'=> false),));
		$styleArray7 = array('borders' => array('allborders' => array('style' => PHPExcel_Style_Border::BORDER_THIN,'color' => array('argb' => '000000'),),),'font' => array('size' => 10,'bold' => true,),'alignment' => array('horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_LEFT,'vertical'   => PHPExcel_Style_Alignment::VERTICAL_CENTER,'wrap'=> true,),'fill' => array('type' => PHPExcel_Style_Fill::FILL_SOLID,'color' =>array('rgb' => 'CCCCCC'),),);
		$styleArray8 = array('borders' => array('allborders' => array('style' => PHPExcel_Style_Border::BORDER_THIN,'color' => array('argb' => '000000'),),),'font' => array('size' => 8,'bold' => true,),'alignment' => array('horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_CENTER,'vertical'   => PHPExcel_Style_Alignment::VERTICAL_CENTER,'wrap'=> true,),'fill' => array('type' => PHPExcel_Style_Fill::FILL_SOLID,'color' =>array('rgb' => 'CCCCCC'),),);
		$styleArray9 = array('borders' => array('allborders' => array('style' => PHPExcel_Style_Border::BORDER_THIN,'color' => array('argb' => '000000'),),),'font' => array('size' => 11,'bold' => true,),'alignment' => array('horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_CENTER,'vertical'   => PHPExcel_Style_Alignment::VERTICAL_CENTER,'wrap'=> true,),'fill' => array('type' => PHPExcel_Style_Fill::FILL_SOLID,'color' =>array('rgb' => 'CCCCCC'),),);
		$styleArray9_1 = array('borders' => array('allborders' => array('style' => PHPExcel_Style_Border::BORDER_THIN,'color' => array('argb' => '000000'),),),'font' => array('size' => 11,'bold' => false,),'alignment' => array('horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_CENTER,'vertical'   => PHPExcel_Style_Alignment::VERTICAL_CENTER,'wrap'=> true,),'numberformat' => array('code' => '#,##0',),);

		//State Coloumn
		for ($i=65; $i<=90; $i++) {$xlshdr[]=chr($i); }
		for ($i=65; $i<=90; $i++) $xlshdr[]="A".chr($i);
		for ($i=65; $i<=90; $i++) $xlshdr[]="B".chr($i);
		for ($i=65; $i<=90; $i++) $xlshdr[]="C".chr($i);
		for ($i=65; $i<=90; $i++) $xlshdr[]="D".chr($i);
		for ($i=65; $i<=90; $i++) $xlshdr[]="E".chr($i);
		for ($i=65; $i<=90; $i++) $xlshdr[]="F".chr($i);
		for ($i=65; $i<=90; $i++) $xlshdr[]="G".chr($i);
		for ($i=65; $i<=90; $i++) $xlshdr[]="H".chr($i);
		for ($i=65; $i<=90; $i++) $xlshdr[]="I".chr($i);
		for ($i=65; $i<=90; $i++) $xlshdr[]="J".chr($i);
		for ($i=65; $i<=90; $i++) $xlshdr[]="K".chr($i);
		for ($i=65; $i<=90; $i++) $xlshdr[]="L".chr($i);
		
		//create TITLE
	  	$objPHPExcel->setActiveSheetIndex(0);
		//$objPHPExcel->getDefaultStyle()->getNumberFormat()->setFormatCode('0000');
		
		$objPHPExcel->getActiveSheet()->setShowGridlines(false);
		$objPHPExcel->getDefaultStyle()->getFont()->setName('Tahoma');
		$objPHPExcel->getActiveSheet()->getDefaultColumnDimension()->setWidth(10.86);
		$objPHPExcel->getActiveSheet()->getDefaultRowDimension()->setRowHeight(18.75); 
		$objPHPExcel->getActiveSheet()->getSheetView()->setZoomScale(80);
		$objPHPExcel->getActiveSheet()->setCellValue('A1', $jdl);
		$objPHPExcel->getActiveSheet()->getStyle('A1')->getFont()->setSize(15); 
		$objPHPExcel->getActiveSheet()->getStyle('A1')->getFont()->setBold(true);
		//$objPHPExcel->getActiveSheet()->setCellValue('A2',$j);
		$objPHPExcel->getActiveSheet()->setCellValue('A2',$jdl2);
		
		
		
		$query = $this->db->query($sql);
		$fields = $query->list_fields();
		$fields_num=count($fields);	
		$rw=$query->row_array();
	  	
		//table header
		$objPHPExcel->getActiveSheet()->setCellValue('A3', 'No');
	  
		//var_dump($fields);	
	  
		$col = 0;
		foreach ($fields as $field){	
			$objPHPExcel->getActiveSheet()->setCellValue($xlshdr[$col+1]."3", $field);
			$col++;
		}
	 
		#Format HEADER
		$objPHPExcel->getActiveSheet()->getStyle('A3:'.$xlshdr[$fields_num].'3')->applyFromArray($styleArray9);
		
		$k=0;
		foreach ($query->result() as $rw){
				
			$k++;
			$i=0;
			$objPHPExcel->getActiveSheet()->setCellValue("A".($k+3), $k);
			foreach ($fields as $field){
				$i++;
				//validasi apakah number
				$objPHPExcel->getActiveSheet()->setCellValueExplicit($xlshdr[$i].($k+3), htmlentities($rw->$field, ENT_QUOTES), PHPExcel_Cell_DataType::TYPE_STRING);
				// Set the value explicitly as a string
					
			}
			//format row
			$objPHPExcel->getActiveSheet()->getStyle('A'.($k+3).':'.$xlshdr[$fields_num].($k+3))->applyFromArray($styleArray9_1);		
		}
		
	    $nfile=$nfile.'_'.$uname.".xlsx";
		$filename="assets/output/laporan/".$nfile;
		$objPHPExcel->getActiveSheet()->setShowGridlines(false);
		$objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel2007');
		$objWriter->save($filename);
	
		echo $this->ReferensiModel->showMessageXls($nfile);
	}
}
