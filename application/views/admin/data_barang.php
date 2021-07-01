<div class="container-fluid">
	<button class="btn btn-sm btn-primary mb-3" data-toggle="modal" data-target="#tambah_barang"><i class="fas fa-plus fa-sm"></i>Tambah Barang</button>
	<table class="table table-bordered">
	 <tr>	
		<th>NO</th>		
		<th>NAMA BARANG</th>		
		<th>KETERANGAN</th>		
		<th>KATEGORI</th>		
		<th>HARGA</th>		
		<th>STOCK</th>		
		<th colspan="3">AKSI</th>
	  </tr>
	  <?php $no=1; foreach ($barang as $brg):  ?>
	  <tr>
	  	<td><?php echo $no++?></td>
	  	<td><?php echo $brg->nama_brg?></td>
	  	<td><?php echo $brg->keterangan?></td>
	  	<td><?php echo $brg->kategori?></td>
	  	<td><?php echo $brg->harga?></td>
	  	<td><?php echo $brg->stok?></td>
	  	<td><?php echo anchor('admin/data_barang/edit/'.$brg->id_brg,'<div class="btn btn-primary btn-sm"><i class="fas fa-edit"></i></div>') ?></td>
	  	<td><?php echo anchor('admin/data_barang/hapus/'.$brg->id_brg,'<div class="btn btn-danger btn-sm"><i class="fas fa-trash"></i></div>') ?></td>
	  </tr>	
	  <?php endforeach; ?>	
	</table>

</div>


<!-- Modal -->
<div class="modal fade" id="tambah_barang" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">FORM INPUT PRODUK</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="<?php echo base_url('admin/data_barang/tambah_aksi'); ?>" method="POST" enctype="multipart/form-data">
        	<div class="form-group">
        		<label>Nama Barang</label>
        		<input type="text" name="nama_brg" class="form-control">
        	</div>
        	<div class="form-group">
        		<label>Keterangan</label>
        		<input type="text" name="keterangan" class="form-control">
        	</div>
        	<div class="form-group">
        		<label>kategori</label>
        		<select class="form-control" name="kategori">
              <option>Health</option>  
              <option>Outdoor</option>  
              <option>Food Preparation</option>  
              <option>Food Serving</option>  
              <option>Food Storage</option>  
			  <option>Cookware</option>
            </select>
        	</div>
        	<div class="form-group">
        		<label>harga</label>
        		<input type="text" name="harga" class="form-control">
        	</div>
        	<div class="form-group">
        		<label>stok</label>
        		<input type="text" name="stok" class="form-control">
        	</div>
        	<div class="form-group">
        		<label>Gambar produk</label>
        		<input type="file" name="gambar" class="form-control">
        	</div>        	
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Simpan</button>
      </div>
      </form>
    </div>
  </div>
</div>