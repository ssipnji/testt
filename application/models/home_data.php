<?php
class Home_data extends CI_Model {
public function __construct()
        {
             
}
public function biota()
{
  
        $query = $this->db->get('master_biota');
        return $query->result_array();
}
}
?>