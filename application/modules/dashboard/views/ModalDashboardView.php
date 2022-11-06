<?php if ($action == 'notifikasi') {
$sql="UPDATE notifikasi SET statusinbox='-1' WHERE id='$hid'";
$query = $this->db->query($sql);

$query = $this->db->get_where('notifikasi', array('id' => $hid));
$rw = $query->row();

?>
    <div class="modal-header">
        <h4 class="modal-title"><?php echo $rw->subject; ?></h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
    </div>

    <div class="modal-body">
        <div class="row">
            <div class="col-md-12 group">
                <p><?php echo $rw->message; ?></p>
            </div>               

        </div>
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Tutup</button>
    </div>
<?php } ?>