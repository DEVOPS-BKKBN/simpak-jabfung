<?php
class ProsesModel extends CI_Model {

    var $details;
	
	function __construct() { 
         parent::__construct(); 
    } 
	public function insert_personal($data,$table) { 
		 $data = $this->security->xss_clean($data);	
         if ($this->db->insert($table, $data)) { 
            return true; 
         } 
    }
    public function delete_personal($hid,$table,$kolom) { 
         if ($this->db->delete($table, $kolom."= ".$hid)) { 
            return true; 
         } 
    } 
	public function update_personal($data,$hid,$table,$kolom) { 
		 $data = $this->security->xss_clean($data);	
         $this->db->set($data); 
         $this->db->where($kolom, $hid); 
         $result=$this->db->update($table, $data); 
		 if ($result) {
			return 1;
		}else return 0;
    }
	function LoadSQL($sql) {
        $query = $this->db->query($sql);
		foreach ($query->result() as $rw){
			return $rw->judul;
		}
    }	
	public function rand_string( $length ) {
		$str="";
		$chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";	

		$size = strlen( $chars );
		for( $i = 0; $i < $length; $i++ ) {
			$str .= $chars[ rand( 0, $size - 1 ) ];
		}
		return $str;
	}
	function CekRoleTemplate($proses,$jenistemplate,$username){
		$sql="SELECT nama_file FROM template_role WHERE proses='$proses' AND jenis_template='$jenistemplate' AND role=(SELECT DISTINCT role FROM users WHERE username='$username')";
		$cn=$this->db->query($sql);
		$rw=$cn->row_array();
		if (!empty($rw)) return $rw['nama_file']; else return '';
	}
	
	public function send_notifikasi($mailfrom,$sbj,$msg,$sendto,$username) {	   
			$senddate = date("Y-m-d H:i:s");			
			$data=array(
				'mailfrom' => $mailfrom,
				'subject' => $sbj,
				'message' => $msg,
				'sendto' => $sendto,
				'creation_date'=>$senddate,
				'created_by'=>$username,				
				
			);
			
			$this->ProsesModel->insert_personal($data,'notifikasi');
	   }
	   public function NilaiTotalPAK($hid){
			$sql="SELECT ROUND(SUM(total_ak),3) judul FROM dupak a JOIN kamus_kegiatan b ON a.kegiatan_id=b.hid WHERE pemohon_id='$hid'";
			$cn=$this->db->query($sql);
			$rw=$cn->row_array();
			
			return $rw['judul'];
	   }
	   public function NilaiTotalPAKKategori($hid,$kategori){
		$sql="SELECT ROUND(SUM(total_ak),3) judul FROM dupak a JOIN kamus_kegiatan b ON a.kegiatan_id=b.hid WHERE pemohon_id='$hid' AND kategori='$kategori'";
		$cn=$this->db->query($sql);
		$rw=$cn->row_array();
		
		return $rw['judul'];
   		}
		   public function NilaiTotalPAKKategoriFinal($hid,$kategori){
			$sql="SELECT ROUND(SUM(total_ak_penilai),3) judul FROM dupak a JOIN kamus_kegiatan b ON a.kegiatan_id=b.hid WHERE pemohon_id='$hid' AND kategori='$kategori'";
			$cn=$this->db->query($sql);
			$rw=$cn->row_array();
			
			return $rw['judul'];
			   }
	   public function NilaiTotalPAKFinal($hid){
			$sql="SELECT ROUND(SUM(total_ak_penilai),3) judul FROM dupak a JOIN kamus_kegiatan b ON a.kegiatan_id=b.hid WHERE pemohon_id='$hid'";
			$cn=$this->db->query($sql);
			$rw=$cn->row_array();
			
			return $rw['judul'];
	   }
	   public function NilaiTotalPAKFinalLama($hid){
		$sql="SELECT a.*,DATE_FORMAT(tmtgol,'%d-%m-%Y') tmtgol,DATE_FORMAT(tmtjab,'%d-%m-%Y') tmtjab,DATE_FORMAT(tgllahir,'%d-%m-%Y') tgllahir,
		CONCAT(DATE_FORMAT(startdate,'%b'),' s.d ',DATE_FORMAT(enddate,'%b Tahun %Y')) periode,
		pejabat_pak,nippejabat_pak,jabatanpejabat_pak,tgl_surat,b.startdate,
		(SELECT startdate FROM dupak_v WHERE nip=a.nip AND startdate < b.startdate ORDER BY startdate DESC LIMIT 1) startdatebefore
		FROM pemohon a JOIN periode b ON a.periode_hid=b.hid
		WHERE a.hid='".$hid."'";
		
		$cn=$this->db->query($sql);
		$rw=$cn->row_array();

		$sql="SELECT SUM(nilaibaru) judul FROM dupak_v WHERE nip='".$rw['nip']."' AND startdate='".$rw['startdatebefore']."'";
		$cn=$this->db->query($sql);
		$rw=$cn->row_array();
		
		return $rw['judul'];
   }
	   public function NilaiTotalPAKPenilai($hid,$penilaiid){
			$sql="SELECT ROUND(SUM(total_nilai),3) judul FROM dupak a JOIN kamus_kegiatan b ON a.kegiatan_id=b.hid JOIN dupak_penilai c ON a.hid=c.dupak_id WHERE pemohon_id='$hid' AND penilai_id='$penilaiid'";
			$cn=$this->db->query($sql);
			$rw=$cn->row_array();
			
			return $rw['judul'];
	   }

}
