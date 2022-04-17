<?php
class KamusModel extends CI_Model {
	
    

	var $table = "(SELECT 
    b.id,CASE WHEN NULLIF( a.gelar_belakang, '' ) IS NULL THEN CASE WHEN NULLIF( a.gelar_depan, '' ) IS NULL
    THEN UPPER(a.nama)
    ELSE CONCAT( a.gelar_depan, ' ', UPPER(a.nama) )
    END ELSE CONCAT(CASE WHEN NULLIF( a.gelar_depan, '' ) IS NULL
    THEN UPPER(a.nama)
    ELSE CONCAT( a.gelar_depan, ' ', UPPER(a.nama) )
    END,', ',a.gelar_belakang) END namalengkap,c.nama_pansel,c.id idpansel,a.nik,nomor_pendaftaran,b.susulan, 
    CASE 
    WHEN cs_awal IS NULL THEN ''
    WHEN d.jmlcs>=d.jml AND d.jmlket<1 THEN 'Lengkap'
    WHEN d.jmlcs>=d.jml AND d.jmlket>0 THEN 'Lengkap dengan keterangan'
    ELSE 'Tidak lengkap' 
    END statuskelengkapan,
    CASE WHEN cs_awal IS NULL THEN 'Belum diverifikasi' ELSE 'Sudah diverifikasi' END statusverifikasi,
    id_cara_daftar,
    cs_awal,cs_akhir,verifikator_awal,verifikator_akhir,a.email,u.nama assignedverifikator1,verifikasi1_assigned 
    FROM data_diri_submit a 
    JOIN pendaftaran_pansel b ON b.id_data_diri=a.id 
    JOIN pansel c ON b.id_pansel=c.id
    LEFT JOIN users u ON b.verifikasi1_assigned=u.username
    LEFT JOIN (SELECT id_pendaftaran_pansel,COUNT(*) jml,SUM(CASE WHEN cs='1' THEN 1 ELSE 0 END)jmlcs,SUM(CASE WHEN IFNULL(cs_keterangan,'')<>'' THEN 1 ELSE 0 END) jmlket FROM syarat_pendaftar_per_pansel GROUP BY id_pendaftaran_pansel) d ON d.id_pendaftaran_pansel=b.id
    WHERE a.deleted_at IS NULL AND b.deleted_at IS NULL AND nomor_pendaftaran IS NOT NULL AND tanggal_daftar IS NOT NULL ORDER BY a.nama) x";
    var $column_order = array(null, 'kategori','uraian_kegiatan','jabatan','nomor_pendaftaran','statuskelengkapan','id'); //set column field database for datatable orderable
    var $column_search = array('nama_pansel','nik','namalengkap','nomor_pendaftaran','statuskelengkapan'); //set column field database for datatable searchable 
    var $order = array('namalengkap' => 'asc'); // default order 
	public function __construct()
    {
        parent::__construct();
        $this->load->database();
    }
	private function _get_datatables_query()
    {
        $flt=array('statuskelengkapan<>'=>NULL);
        $flt=array_merge($flt,array('idpansel'=>$this->input->get('pansel')));
        if ($this->input->get('cara') != '')$flt=array_merge($flt,array('id_cara_daftar'=>$this->input->get('cara')));
        if ($this->input->get('status') != '')$flt=array_merge($flt,array('statusverifikasi'=>$this->input->get('status')));
         
        //var_dump($flt);
        
        if ($this->session->userdata('userName')!='admin'){
            $flt=array_merge($flt,array('verifikasi1_assigned'=>$this->session->userdata('userName')));
            $this->db->from($this->table)
            ->where($flt)
            ->where("idpansel IN (SELECT id_pansel FROM pansel_auth WHERE id_user='".$this->session->userdata('idUser')."')", NULL, FALSE);
            
        } else $this->db->from($this->table)->where($flt);
 
        $i = 0;
     
        foreach ($this->column_search as $item) // loop column 
        {

            //var_dump($_POST['search']);
           
            if($this->input->post('search')['value']) // if datatable send POST for search
            {
                
                if($i===0) // first loop
                {
                    $this->db->group_start(); // open bracket. query Where with OR clause better with bracket. because maybe can combine with other WHERE with AND.
                    $this->db->like($item, $_POST['search']['value']);
                }
                else
                {
                    $this->db->or_like($item, $_POST['search']['value']);
                }
 
                if(count($this->column_search) - 1 == $i) //last loop
                    $this->db->group_end(); //close bracket
            }
            $i++;
        }
         
        if(isset($_POST['order'])) // here order processing
        {
            $this->db->order_by($this->column_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
        } 
        else if(isset($this->order))
        {
            $order = $this->order;
            $this->db->order_by(key($order), $order[key($order)]);
        }
    }
 
    function get_datatables()
    {
        $this->_get_datatables_query();
        if($_POST['length'] != -1)
        $this->db->limit($_POST['length'], $_POST['start']);
        $query = $this->db->get();
        return $query->result();
    }
 
    function count_filtered()
    {
        $this->_get_datatables_query();
        $query = $this->db->get();
        return $query->num_rows();
    }
 
    public function count_all()
    {
        $this->db->from($this->table);
        return $this->db->count_all_results();
    }
}
