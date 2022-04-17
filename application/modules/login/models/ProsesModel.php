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
	
	public function send_notifikasi($mailfrom,$sbj,$msg,$sendto,$username,$keyword,$keywordid) {	   
			//$in_inbox = "INSERT INTO inbox (mailfrom, Subject, message, sendto, tanggal, username, timestamp, randomstring, statuskonfirmasi) VALUES ('$mailfrom','Permintaan Penambahan Data Riwayat Anak Ditolak', '$message', '$rwinb[0]', '$tanggal', '$mailfrom' , '$senddate', '$randomstring', 't')";
			$randomstring = $this->ProsesModel->rand_string(150);
			$senddate = time();
			$tanggal=date("Y/m/d H:i:s");
			
			$data=array(
				'mailfrom' => $mailfrom,
				'subject' => $sbj,
				'message' => $msg,
				'sendto' => $sendto,
				'tanggal' => $tanggal,
				'username' => $username,
				'timestamp' => $senddate,
				'randomstring' => $randomstring,
				'statuskonfirmasi' => 'y',
				'keyword'=>$keyword,
				'keywordid'=>$keywordid
			);
			
			$this->ProsesModel->insert_personal($data,'notifikasi');
	   }
	   public function NilaiTotalPAK($hid){
			$sql="SELECT ROUND(SUM(total_ak),3) judul FROM dupak a JOIN kamus_kegiatan b ON a.kegiatan_id=b.hid WHERE pemohon_id='$hid'";
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

}
