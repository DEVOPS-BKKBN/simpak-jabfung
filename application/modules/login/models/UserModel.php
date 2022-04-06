<?php
class UserModel extends CI_Model {

    var $details;

    /**
     * generate CSRF token
     * 
     * @author  Joe Sexton <joe@webtipblog.com>
     * @param   string $formName
     * @return  string  
     */
    function generateToken($formName) 
    {
        $secretKey = 'DOP@2021';
        if ( !session_id() ) {
            session_start();
        }
        $sessionId = session_id();
    
        return sha1( $formName.$sessionId.$secretKey );
    
    }
    function checkToken( $token, $formName ) {
        return $token === $this->generateToken($formName);
    }
    function validate_user( $email, $password ) {
		$this->load->model('ProsesModel');
		$this->load->model('ReferensiModel');
         // baca dari simsdm
          $urlapi=URL_SIMSDM."authSIMSDM";											
          $data = array("token" => TOKEN_SIMSDM,"username"=>$email,"pwd"=>md5($password) );                                                                    
          $post = json_encode($data);       
                            
          $ch = curl_init();
          curl_setopt($ch, CURLOPT_URL,$urlapi);
          curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");                                                                     
          curl_setopt($ch, CURLOPT_POSTFIELDS, $post);                                                                  
          curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);                                                                      
          curl_setopt($ch, CURLOPT_HTTPHEADER, array(                                                                          
            'Content-Type: application/json',                                                                                
            'Content-Length: ' . strlen($post))                                                                       
          );    
                            
          curl_setopt($ch, CURLOPT_RETURNTRANSFER,1);
          $result=curl_exec ($ch);
          
          curl_close ($ch);													
          $json = json_decode($result, true);
          
          //var_dump($json);exit();
          
          
          if ($json){
            if (!empty($json['msg'])) {
                
                // cek apakah penilai
                if ($json['msg']!='NIP atau Password Anda Salah, Pastikan sesuai Akun di SIMSDM '){
                  $numpenilai=$this->ReferensiModel->LoadSQL("SELECT COUNT(*) judul FROM penilai WHERE nip='".$email."'");
                  
                  if ($numpenilai>0){
                    
                    $this->db->from('penilai');
                    $this->db->where('nip',$email );
                    $login = $this->db->get()->result();
                
                    $this->details = $login[0];
                    
                    $this->session->set_userdata( array(
                      'userName'=>$this->details->nip,
                      'fullName'=>$this->details->namalengkap,
                      'leveluser'=>3,
                      'isLoggedIn'=>true,
                      'foto'=>$this->details->foto,
                      'idBiro'=>'',
                      'BiroName'=>$this->details->unitkerja,
                      'kdProv'=>'',
                      'kdKab'=>'',
                      'kdKec'=>'',		
                      )
                    );
                    return true;
                    exit();
                  }
                }
                
                // cek ke table user
                $this->db->from('users');
                $this->db->where('Username',$email );
                $this->db->where( 'Password', md5($password) );
                $login = $this->db->get()->result();
                
                if ( is_array($login) && count($login) == 1 ) {
                  $this->details = $login[0];
                  //$foto='icons8-user-male-240.png';					
                  $this->session->set_userdata( array(
                    'id'=>$this->details->Id,
                    'userName'=>$this->details->Username,
                    'fullName'=>$this->details->DisplayName,
                    'leveluser'=>$this->details->RolesId,
                    'isLoggedIn'=>true,
                    'foto'=>$this->details->Foto,
                    'idBiro'=>$this->details->IdBiro,
                    'kdProv'=>$this->details->KdProv,
                    'kdKab'=>$this->details->KdKab, 
                    'kdKec'=>$this->details->KdKec 
                    )
                  );
                  return true;
                }						
                $this->session->set_flashdata('response','<div class="alert alert-card alert-danger" role="alert">'.str_replace("Evisum","DOP",$json['msg']).'</div>');
                return false;
                exit();
              }
              else{
                
                // cek apakah penilai
                $numpenilai=$this->ReferensiModel->LoadSQL("SELECT COUNT(*) judul FROM penilai WHERE nip='".$json['NIP']."'");
                if ($numpenilai>0){
                  $this->session->set_userdata( array(
                    'userName'=>$json['NIP'],
                    'fullName'=>$json['namalengkap'],
                    'leveluser'=>3,
                    'isLoggedIn'=>true,
                    'foto'=>$json['foto'],
                    'idBiro'=>$json['biro'],
                    'BiroName'=>$json['namabiro'],
                    'kdProv'=>$json['lokasi_propinsi'],
                    'kdKab'=>$json['lokasi_kabupaten'],
                    'kdKec'=>$json['lokasi_kecamatan'],		
                    )
                  );
                  return true;
                  exit();
                }
                
                
                //var_dump($json);
                $Foto=$json['foto'];
                
                // cek if exist
                $num=$this->ReferensiModel->LoadSQL("SELECT COUNT(*) judul FROM users WHERE Username='".$json['NIP']."'");
                
                
                // mapping kode jab sesuai dengan grade
                $KdJab=$json['kode_jab'];
                
                if ($num>0){
                  // update data users
                  $data=array(
                    'Foto'=>$Foto,
                    'UpdatedDate'=>date("Y-m-d H:i:s"),
                    'TglLahir'=>$json['tanggallahir'],
                    'TempatLahir'=>$json['tempatlahir'],
                    'PendidikanAkhir'=>$json['pendidikan_akhir'],
                    'JenisKelamin'=>$json['jeniskelamin'],
                    'Jabatan'=>$json['jabatan'],
                    'KdJab'=>$KdJab,
                    'PangkatGol'=>$json['golongan'],
                    'IdClass'=>$json['Id_Class'],
                    'JobClass'=>$json['Job_Class'],
                    'IdBiro'=>$json['biro'],
                    'BiroName'=>$json['namabiro'],
                    'KdProv'=>$json['lokasi_propinsi'],
                    'KdKab'=>$json['lokasi_kabupaten'],
                    'KdKec'=>$json['lokasi_kecamatan'],
                    'KdKel'=>$json['lokasi_kelurahan'],
                    'NoHp'=>$json['nohp'],
                    'Email'=>$json['email'],
                    'Password'=>md5($password),
                    'TmtGol'=>$this->ReferensiModel->DMYtoYMD($json['tmtjab']),
                    'TmtJab'=>$this->ReferensiModel->DMYtoYMD($json['tmtjabakhir']),
                    'Karpeg'=>$json['karpeg'],
                    'Foto'=>$Foto,
                  );
                  
                  //var_dump($data);exit();
                  
                  $this->ProsesModel->update_personal($data,$json['NIP'],'users','Username');
                } else {
                  $data=array(
                    'Username'=>$json['NIP'],
                    'EmployeeId'=>$json['NIP'],
                    'Password'=>md5($password),
                    'DisplayName'=>$json['namalengkap'],
                    'Jabatan'=>$json['jabatan'],
                    'KdJab'=>$KdJab,
                    'PangkatGol'=>$json['golongan'],
                    'IdClass'=>$json['Id_Class'],
                    'JobClass'=>$json['Job_Class'],
                    'IdBiro'=>$json['biro'],
                    'BiroName'=>$json['namabiro'],
                    'KdProv'=>$json['lokasi_propinsi'],
                    'KdKab'=>$json['lokasi_kabupaten'],
                    'KdKec'=>$json['lokasi_kecamatan'],
                    'KdKel'=>$json['lokasi_kelurahan'],
                    'NoHp'=>$json['nohp'],
                    'Email'=>$json['email'],
                    'Foto'=>$Foto,
                    'TglLahir'=>$json['tanggallahir'],
                    'TempatLahir'=>$json['tempatlahir'],
                    'PendidikanAkhir'=>$json['pendidikan_akhir'],
                    'JenisKelamin'=>$json['jeniskelamin'],
                    'CreationDate'=>date("Y-m-d H:i:s"),
                    'CreatedBy'=>$json['NIP'],
                    'TmtGol'=>$this->ReferensiModel->DMYtoYMD($json['tmtjab']),
                    'TmtJab'=>$this->ReferensiModel->DMYtoYMD($json['tmtjabakhir']),
                    'Karpeg'=>$json['karpeg'],
                  );
                  $this->ProsesModel->insert_personal($data,'users');
                }
                
                $this->session->set_userdata( array(
                  'userName'=>$json['NIP'],
                  'fullName'=>$json['namalengkap'],
                  'leveluser'=>'',
                  'isLoggedIn'=>true,
                  'foto'=>$json['foto'],
                  'idBiro'=>$json['biro'],
                  'BiroName'=>$json['namabiro'],
                  'kdProv'=>$json['lokasi_propinsi'],
                  'kdKab'=>$json['lokasi_kabupaten'],
                  'kdKec'=>$json['lokasi_kecamatan'],		
                  )
                );
              }
          }else {
            
            
          }
          return false;
      }
    

    function set_session() {
        // session->set_userdata is a CodeIgniter function that
        // stores data in CodeIgniter's session storage.  Some of the values are built in
        // to CodeIgniter, others are added.  See CodeIgniter's documentation for details.
        $this->session->set_userdata( array(
                'idUser'=>$this->details->id,
                'userName'=>$this->details->username,
                'fullName'=>$this->details->nama,
                'email'=>$this->details->email,
                //'roles'=>$this->details->roles,
                'isLoggedIn'=>true,
                //'scope'=>$this->details->scope,
                //'id_instansi'=>$this->details->id_instansi
            )
        );
    }

    function fill_session_data($data){
      $data['email'] = $this->session->userdata('email');
      $data['firstName'] = $this->session->userdata('firstName');
      $data['lastName'] = $this->session->userdata('lastName');
      $data['name'] = $this->session->userdata('name');
      $data['avatar'] = $this->session->userdata('avatar');
      $data['tagline'] = $this->session->userdata('tagline');
      $data['teamId'] = $this->session->userdata('teamId');
      $data['isAdmin'] = $this->session->userdata('isAdmin');
      return $data;
    }

    function  create_new_user( $userData ) {
      $data['firstName'] = $userData['firstName'];
      $data['lastName'] = $userData['lastName'];
      $data['teamId'] = (int) $userData['teamId'];
      $data['isAdmin'] = (int) $userData['isAdmin'];
      $data['avatar'] = $this->getAvatar();
      $data['email'] = $userData['email'];
      $data['tagline'] = "Click here to edit tagline.";
      $data['password'] = sha1($userData['password1']);

      return $this->db->insert('user',$data);
    }

    public function update_lastlogout( $user_id) {
	  //$tglo=date("Y-m-d H:i:s");
      //$data = array('last_login_date '=>$tglo);
      //$result = $this->db->update('users', $data, array('username'=>$user_id));
	  $sql="DELETE FROM sessions WHERE Username='$user_id'";
	  $save=$this->db->query($sql);
	  
    }

    private function getAvatar() {
      $avatar_names = array();

      foreach(glob('assets/img/avatars/*.png') as $avatar_filename){
        $avatar_filename =   str_replace("assets/img/avatars/","",$avatar_filename);
        array_push($avatar_names, str_replace(".png","",$avatar_filename));
      }

      return $avatar_names[array_rand($avatar_names)];
    }
}
