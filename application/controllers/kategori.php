<?php 
class Kategori extends CI_Controller{

	//TUPPERWARE
	public function health()
	{
		$data['health'] = $this->model_kategori->data_health()->result();
		$this->load->view('template/header');
		$this->load->view('template/sidebar');
		$this->load->view('health',$data);
		$this->load->view('template/footer');
	}

	public function outdoor()
	{
		$data['outdoor'] = $this->model_kategori->data_outdoor()->result();
		$this->load->view('template/header');
		$this->load->view('template/sidebar');
		$this->load->view('outdoor',$data);
		$this->load->view('template/footer');
	}

	public function fpreparation()
	{
		$data['fpreparation'] = $this->model_kategori->data_fpreparation()->result();
		$this->load->view('template/header');
		$this->load->view('template/sidebar');
		$this->load->view('fpreparation',$data);
		$this->load->view('template/footer');
	}

	public function fserving()
	{
		$data['fserving'] = $this->model_kategori->data_fserving()->result();
		$this->load->view('template/header');
		$this->load->view('template/sidebar');
		$this->load->view('fserving',$data);
		$this->load->view('template/footer');
	}

	public function fstorage()
	{
		$data['fstorage'] = $this->model_kategori->data_fstorage()->result();
		$this->load->view('template/header');
		$this->load->view('template/sidebar');
		$this->load->view('fstorage',$data);
		$this->load->view('template/footer');
	}

	public function cookware()
	{
		$data['cookware'] = $this->model_kategori->data_cookware()->result();
		$this->load->view('template/header');
		$this->load->view('template/sidebar');
		$this->load->view('cookware',$data);
		$this->load->view('template/footer');
	}
}
?>