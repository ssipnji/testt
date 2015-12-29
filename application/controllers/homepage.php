<?php
class Homepage extends CI_Controller {

        public function index()
     {
	
	$this->load->model('home_data');
	$data['master_biota'] = $this->home_data->biota();
        //print_r($data);exit;
        $this->load->view('homepage', $data);
        	
}
}
?>