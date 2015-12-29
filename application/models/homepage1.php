<?php
class homepage1 extends CI_Controller{
function_construct(){
parent: :_construct();
$this->load->database();
}
function lihat(){
$lihat = $this->db->get('test');
return $lihat->result();

}
}

?>