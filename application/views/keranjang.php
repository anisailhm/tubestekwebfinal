<div class="container-fluid">	
	<h4>Keranjang Belanja Anda</h4>
	<table class="table table-bordered table-striped table-hover">
		<tr>
			<th>No</th>	
			<th>Nama Produk</th>	
			<th>Jumlah</th>	
			<th>harga</th>	
			<th>sub Total</th>	
		</tr>	
		<?php $no=1; foreach($this->cart->contents() as $items): ?>
			<tr>
				<td><?php echo $no++; ?></td>
				<td><?php echo $items['name'] ?></td>
				<td><?php echo $items['qty'] ?></td>
				<td align="right">Rp. <?php echo number_format(	$items['price'],0,',','.')  ?></td>
				<td align="right">Rp.<?php echo number_format($items['subtotal'],0,',','.') ?></td>

			</tr>
			
		<?php endforeach; ?>
			<tr>
				<td></td>
				<td>Total Pembayaran</td>
				<td align="right" colspan="3">Rp. <?php echo number_format($this->cart->total(),0,',','.')?></td>
			</tr>	
	</table>
	<div align="right">
		<a href="<?php echo base_url('dashboard/hapus_keranjang') ?>"><div class="btn btn-sm btn-danger">Hapus Keranjang</div></a>
		<a href="<?php echo base_url('') ?>"><div class="btn btn-sm btn-primary">Lanjutkan Belanja</div></a>
		<a href="<?php echo base_url('dashboard/pembayaran') ?>"><div class="btn btn-sm btn-success">Pembayaran</div></a>
	</div>
</div>	