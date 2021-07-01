<?php 
class Model_kategori extends CI_Model{
	public function data_elektronik()
	{
		return $this->db->get_where('tb_barang',array('kategori' => 'elektronik'));//nama bebase =>elektronik
	}
	public function data_pakaian_pria()
	{
		return $this->db->get_where('tb_barang',array('kategori' => 'pakaian pria'));
	}
	public function data_pakaian_wanita()
	{
		return $this->db->get_where('tb_barang',array('kategori' => 'pakaian wanita'));
	}
	public function data_pakaian_anak_anak()
	{
		return $this->db->get_where('tb_barang',array('kategori' => 'pakaian anak anak'));
	}
	public function data_peralatan_olahraga()
	{
		return $this->db->get_where('tb_barang',array('kategori' => 'peralatan olahraga'));
	}


	//TUPPERWARE
	public function data_health(){
		return $this->db->get_where('tb_barang',array('kategori' => 'health'));
	}

	public function data_outdoor(){
		return $this->db->get_where('tb_barang',array('kategori' => 'outdoor'));
	}

	public function data_fpreparation(){
		return $this->db->get_where('tb_barang',array('kategori' => 'food preparation'));
	}

	public function data_fserving(){
		return $this->db->get_where('tb_barang',array('kategori' => 'food serving'));
	}

	public function data_fstorage(){
		return $this->db->get_where('tb_barang',array('kategori' => 'food storage'));
	}

	public function data_cookware(){
		return $this->db->get_where('tb_barang',array('kategori' => 'cookware'));
	}
}
?>