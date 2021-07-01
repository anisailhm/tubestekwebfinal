<?php 
class Registrasi extends CI_Controller{
	public function index()
	{
		$this->form_validation->set_rules('nama','Nama','required',[
			'required' => 'Wajib Diisi'
		]);
		$this->form_validation->set_rules('username','username','required',[
			'required' => 'Wajib Diisi'
		]);
		$this->form_validation->set_rules('password_1','password','required|matches[password_2]',[
			'required' => 'Password Wajib Diisi',
			'matches'	=> 'password tidak cocok'
		]);
		$this->form_validation->set_rules('password_2','password','required|matches[password_1]');
		if($this->form_validation->run() == false){
			$this->load->view('template/header');
			$this->load->view('registrasi');
			$this->load->view('template/footer');
		}else{
			$data = array(
				'id' 		=> '',
				'nama' 		=> $this->input->post('nama'),
				'username' 		=> $this->input->post('username'),
				'password' 	=> $this->input->post('password_1'),
				'role_id'	=> 2,
			);
			$this->db->insert('tb_user',$data);
			redirect('auth/login');
		}
	}
}
?>