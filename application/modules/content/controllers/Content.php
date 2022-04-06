<?php defined('BASEPATH') or exit('No direct script access allowed');

class Content extends MX_Controller
{
  function __construct()
  {
    parent::__construct();
      
      $this->load->model('login/UserModel');
      $this->load->model('login/ProsesModel');
      $this->load->model('login/ReferensiModel');
      // menu guard
      if ($this->ReferensiModel->menuGuard()==false){
        redirect(base_url().'login/show_login');
        exit();
      }
  }
  function updatePengumuman(){
    $hid = $this->input->post('hid');
    $action = $this->input->post('action');

    $data = array(
      'id_pansel' => $this->input->post('pansel'),
      'tanggal_pengumuman' => $this->ReferensiModel->DMYtoYMD($this->input->post('tgl')),
      'judul' => $this->input->post('judul'),
    );

    if (!empty($_FILES['inputFile']['name'])) {
        $target_dir = 'assets/uploads/pengumuman/';
			  $file_name=$this->input->post('pansel')."_".basename(str_replace(" ","",$_FILES["inputFile"]["name"]));
			  $target_file = $target_dir.$file_name;
        if (move_uploaded_file($_FILES["inputFile"]["tmp_name"], $target_file)) {
          $data=array_merge($data,array('file'=>$file_name));
        }
    }
    if (!empty($_FILES['inputFile2']['name'])) {
      $target_dir = 'assets/uploads/pengumuman/';
      $file_name=$this->input->post('pansel')."_".basename(str_replace(" ","",$_FILES["inputFile2"]["name"]));
      $target_file = $target_dir.$file_name;
      if (move_uploaded_file($_FILES["inputFile2"]["tmp_name"], $target_file)) {
        $data=array_merge($data,array('lampiran'=>$file_name));
      }
  }


    if ($hid == '') {
      $data2 = array(
        'created_at' => date("Y-m-d H:i:s"),
        'created_by' => $this->session->userdata('userName'),
      );
      $data = array_merge($data, $data2);
      $save = $this->ProsesModel->insert_personal($data, 'pengumuman');
      $this->ReferensiModel->insert_logs($this->session->userdata('idUser'),'create','create pengumuman','','pengumuman');
      $this->session->set_flashdata('response', $this->ReferensiModel->showMessage('Data telah berhasil ditambahkan.', 'success'));
    } else {
      $data2 = array(
        'updated_at' => date("Y-m-d H:i:s"),
        'updated_by' => $this->session->userdata('userName'),
      );
      $data = array_merge($data, $data2);
      $save = $this->ProsesModel->update_personal($data, $hid, 'pengumuman', 'id');
      $this->ReferensiModel->insert_logs($this->session->userdata('idUser'),'update','update pengumuman',$hid,'pengumuman');
      $this->session->set_flashdata('response', $this->ReferensiModel->showMessage('Sukses mengupdate data.', 'success'));
    } 
    redirect(base_url() . 'content/'.$action);
  }
  function updateUnduhan(){
    $hid = $this->input->post('hid');
    $action = $this->input->post('action');

    $data = array(
      'id_pansel' => $this->input->post('pansel'),
       'judul' => $this->input->post('judul'),
    );

    if (!empty($_FILES['inputFile']['name'])) {
        $target_dir = 'assets/uploads/downloads/';
			  $file_name=$this->input->post('pansel')."_".basename(str_replace(" ","",$_FILES["inputFile"]["name"]));
			  $target_file = $target_dir.$file_name;
        if (move_uploaded_file($_FILES["inputFile"]["tmp_name"], $target_file)) {
          $data=array_merge($data,array('file'=>$file_name));
        }
    }
    

    if ($hid == '') {
      $data2 = array(
        'created_at' => date("Y-m-d H:i:s"),
        'created_by' => $this->session->userdata('userName'),
      );
      $data = array_merge($data, $data2);
      $save = $this->ProsesModel->insert_personal($data, 'download_pages');
      $this->ReferensiModel->insert_logs($this->session->userdata('idUser'),'create','create unduhan','','download_pages');
      $this->session->set_flashdata('response', $this->ReferensiModel->showMessage('Data telah berhasil ditambahkan.', 'success'));
    } else {
      $data2 = array(
        'updated_at' => date("Y-m-d H:i:s"),
        'updated_by' => $this->session->userdata('userName'),
      );
      $data = array_merge($data, $data2);
      $save = $this->ProsesModel->update_personal($data, $hid, 'download_pages', 'id');
      $this->ReferensiModel->insert_logs($this->session->userdata('idUser'),'update','update unduhan',$hid,'download_pages');
      $this->session->set_flashdata('response', $this->ReferensiModel->showMessage('Sukses mengupdate data.', 'success'));
    } 
    redirect(base_url() . 'content/'.$action);
  }
  function updatePanduan(){
    $hid = $this->input->post('hid');
    $action = $this->input->post('action');

    $data = array(
      'id_pansel' => $this->input->post('pansel'),
      'judul' => $this->input->post('judul'),
      'penjelasan' => $this->input->post('penjelasan'),
    );

    if (!empty($_FILES['inputFile']['name'])) {
        $target_dir = 'assets/uploads/panduan/';
			  $file_name=$this->input->post('pansel')."_".basename(str_replace(" ","",$_FILES["inputFile"]["name"]));
			  $target_file = $target_dir.$file_name;
        if (move_uploaded_file($_FILES["inputFile"]["tmp_name"], $target_file)) {
          $data=array_merge($data,array('icon'=>$file_name));
        }
    }
    if (!empty($_FILES['inputFile2']['name'])) {
      $target_dir = 'assets/uploads/panduan/';
      $file_name=$this->input->post('pansel')."_".basename(str_replace(" ","",$_FILES["inputFile2"]["name"]));
      $target_file = $target_dir.$file_name;
      if (move_uploaded_file($_FILES["inputFile2"]["tmp_name"], $target_file)) {
        $data=array_merge($data,array('file'=>$file_name));
      }
  }
    

    if ($hid == '') {
      $data2 = array(
        'created_at' => date("Y-m-d H:i:s"),
        'created_by' => $this->session->userdata('userName'),
      );
      $data = array_merge($data, $data2);
      $save = $this->ProsesModel->insert_personal($data, 'panduan');
      $this->ReferensiModel->insert_logs($this->session->userdata('idUser'),'create','create panduan','','panduan');
      $this->session->set_flashdata('response', $this->ReferensiModel->showMessage('Data telah berhasil ditambahkan.', 'success'));
    } else {
      $data2 = array(
        'updated_at' => date("Y-m-d H:i:s"),
        'updated_by' => $this->session->userdata('userName'),
      );
      $data = array_merge($data, $data2);
      $save = $this->ProsesModel->update_personal($data, $hid, 'panduan', 'id');
      $this->ReferensiModel->insert_logs($this->session->userdata('idUser'),'update','update panduan',$hid,'panduan');
      $this->session->set_flashdata('response', $this->ReferensiModel->showMessage('Sukses mengupdate data.', 'success'));
    } 
    redirect(base_url() . 'content/'.$action);
  }
  function updateFaq(){
    $hid = $this->input->post('hid');
    $action = $this->input->post('action');

    $data = array(
      'id_pansel' => $this->input->post('pansel'),
      'kategori' => $this->input->post('kategori'),
      'pertanyaan' => $this->input->post('judul'),
      'jawaban' => $this->input->post('penjelasan'),
    );

   

    if ($hid == '') {
      $data2 = array(
        'created_at' => date("Y-m-d H:i:s"),
        'created_by' => $this->session->userdata('userName'),
      );
      $data = array_merge($data, $data2);
      $save = $this->ProsesModel->insert_personal($data, 'faq');
      $this->ReferensiModel->insert_logs($this->session->userdata('idUser'),'create','create faq','','faq');
      $this->session->set_flashdata('response', $this->ReferensiModel->showMessage('Data telah berhasil ditambahkan.', 'success'));
    } else {
      $data2 = array(
        'updated_at' => date("Y-m-d H:i:s"),
        'updated_by' => $this->session->userdata('userName'),
      );
      $data = array_merge($data, $data2);
      $save = $this->ProsesModel->update_personal($data, $hid, 'faq', 'id');
      $this->ReferensiModel->insert_logs($this->session->userdata('idUser'),'update','update faq',$hid,'faq');
      $this->session->set_flashdata('response', $this->ReferensiModel->showMessage('Sukses mengupdate data.', 'success'));
    } 
    redirect(base_url() . 'content/'.$action);
  }
  function pengumuman()
  {
    $data['judulpage'] = 'Pengumuman';
    $data['action'] = 'pengumuman';
    

    $this->ReferensiModel->insert_logs($this->session->userdata('idUser'),'read','index pengumuman','','pengumuman');
    $this->load->view('PengumumanView', $data);
  }
  function unduhan()
  {
    $data['judulpage'] = 'Unduhan';
    $data['action'] = 'unduhan';
    

    $this->ReferensiModel->insert_logs($this->session->userdata('idUser'),'read','index unduhan','','unduhan');
    $this->load->view('UnduhanView', $data);
  }
  function panduan()
  {
    $data['judulpage'] = 'Panduan';
    $data['action'] = 'panduan';
    

    $this->ReferensiModel->insert_logs($this->session->userdata('idUser'),'read','index panduan','','panduan');
    $this->load->view('PanduanView', $data);
  }
  function faq()
  {
    $data['judulpage'] = 'FAQ';
    $data['action'] = 'faq';
    

    $this->ReferensiModel->insert_logs($this->session->userdata('idUser'),'read','index faq','','faq');
    $this->load->view('FAQView', $data);
  }
  function kontak()
  {
    $data['judulpage'] = 'Contact';
    $data['action'] = 'contact';
    

    $this->ReferensiModel->insert_logs($this->session->userdata('idUser'),'read','index contact','','contact');
    $this->load->view('ContactView', $data);
  }
  function hapusPengumuman(){
    $hid=$this->input->post('hid');
    $action=$this->input->post('action');
    
    $data=array(
      'deleted_at'=>date("Y-m-d H:i:s")
    );
    $save=$this->ProsesModel->update_personal($data,$hid,'pengumuman','id');

    $this->ReferensiModel->insert_logs($this->session->userdata('idUser'),'delete','delete pengumuman',$hid,'pengumuman');
    $this->session->set_flashdata('response', $this->ReferensiModel->showMessage('Sukses menghapus data.', 'success'));
  }
  function hapusFaq(){
    $hid=$this->input->post('hid');
    $action=$this->input->post('action');
    
    $data=array(
      'deleted_at'=>date("Y-m-d H:i:s")
    );
    $save=$this->ProsesModel->update_personal($data,$hid,'faq','id');

    $this->ReferensiModel->insert_logs($this->session->userdata('idUser'),'delete','delete faq',$hid,'faq');
    $this->session->set_flashdata('response', $this->ReferensiModel->showMessage('Sukses menghapus data.', 'success'));
  }
  function hapusPanduan(){
    $hid=$this->input->post('hid');
    $action=$this->input->post('action');
    
    $data=array(
      'deleted_at'=>date("Y-m-d H:i:s")
    );
    $save=$this->ProsesModel->update_personal($data,$hid,'panduan','id');

    $this->ReferensiModel->insert_logs($this->session->userdata('idUser'),'delete','delete panduan',$hid,'panduan');
    $this->session->set_flashdata('response', $this->ReferensiModel->showMessage('Sukses menghapus data.', 'success'));
  }
  function hapusUnduhan(){
    $hid=$this->input->post('hid');
    $action=$this->input->post('action');
    
    $data=array(
      'deleted_at'=>date("Y-m-d H:i:s")
    );
    $save=$this->ProsesModel->update_personal($data,$hid,'download_pages','id');

    $this->ReferensiModel->insert_logs($this->session->userdata('idUser'),'delete','delete unduhan',$hid,'download_pages');
    $this->session->set_flashdata('response', $this->ReferensiModel->showMessage('Sukses menghapus data.', 'success'));
  }
  function modal(){
    $hid = $this->input->get('hid');
    $hid = preg_replace('/[^a-zA-Z0-9-_\.]/', '', $hid);
    $data['hid'] = $hid;
    $data['action'] = $this->input->get('action');

    $query = $this->db->get_where('pengumuman', array('id' => $hid));
    $rw = $query->row_array();

    $this->load->view('ModalContentView', $data);
  }
  function imageUpload(){
		 
		// cek 1
		if (preg_match('/^image\/p?jpeg$/i', $_FILES['imagewyg']['type']) or
		preg_match('/^image\/gif$/i', $_FILES['imagewyg']['type']) or
		preg_match('/^image\/jpg$/i', $_FILES['imagewyg']['type']) or
		preg_match('/^image\/(x-)?png$/i', $_FILES['imagewyg']['type'])) {

			$pictureName = str_replace(" ", "", $_FILES['imagewyg']['name']);

			$tpFile = htmlspecialchars($_FILES['imagewyg']['tmp_name'], ENT_QUOTES, 'UTF-8');
			$pictureName = htmlspecialchars($pictureName, ENT_QUOTES, 'UTF-8');

		} else {

			$updErr = 'Please upload a JPEG, GIF, or PNG image file';
			exit;

		}

		// cek 2
		$type = array("jpg","jpeg","gif","png");

		$ext = explode(".", $_FILES['imagewyg']['name']);
		$ext = strtolower(end($ext));

		if (!in_array($ext, $type)){
			$updErr = 'Please upload a JPEG, GIF, or PNG image file';
			exit;
		}

		// upload
		if (!is_uploaded_file($_FILES['imagewyg']['tmp_name']) ) {

			$updErr = 'Please upload a JPEG, GIF, or PNG image file';

		} else {

			move_uploaded_file($tpFile, "assets/uploads/panduan/".$pictureName);

		}

		
		$file = base_url().'assets/uploads/panduan/'.$pictureName;

		$data['success'] = true;
		$data['url'] = $file;

		header('Content-type:application/json;charset=utf-8');
		echo json_encode( $data );
		
	}
}

