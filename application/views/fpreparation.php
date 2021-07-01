<div class="container-fluid">

	<div class="row text-center mt-3">
		<?php foreach($fpreparation as $brg) : ?>
			<div class="card ml-3" style="width: 16rem;">
			  <img size="200px" height="170px" src="<?php echo base_url().'/uploads/'.$brg->gambar ?>"  class="card-img-top" alt="..." 	>
			  <div class="card-body">
			    <h5 class="card-title mb-1"><?php echo $brg->nama_brg; ?></h5>
			    <small><?php echo $brg->keterangan ?></small><br>
			    <span class="badge badge-success mb-3">Rp <?php echo number_format($brg->harga,0,',','.') ?></span>
			    <?php echo anchor('dashboard/tambah_ke_keranjang/'.$brg->id_brg,'<div class="btn btn-sm btn-primary">Tambah Ke keranjang</div>') ?>
			    <?php echo anchor('dashboard/detail/'.$brg->id_brg,'<div class="btn btn-sm btn-success">Detail</div>') ?>
			    <!--<a href="#" class="btn btn-sm btn-primary">Tambah Ke keranjang
			    <a href="php" class="btn btn-sm btn-success">Detail</a></a> -->
			  </div>
			</div>
		<?php endforeach ?>	
	</div>
</div>
