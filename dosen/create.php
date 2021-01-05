<!DOCTYPE html>
<html>
<head>
	<title>Dosen</title>
	<link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<div class="alert alert-info">Tambah Data Dosen</div>
		<?php
			require '../koneksi.php';
			if (isset($_POST['simpan'])){
			$input_nip = $_POST['txtnip'];
			$input_nama = $_POST['txtnama'];
			$input_alamat= $_POST['txtalamat'];

			$query = "INSERT INTO dosen VALUES('$input_nip','$input_nama','$input_alamat')";
			$result = mysqli_query($link, $query);
			if ($result) {
				header('location: index.php');
			}else{
				echo 'Gagal disimpan : ' . mysqli_error($link);
			}
		}		
			?>
		<form action="" method="post">
			<div class="from-group">
				<label for="">NIP</label>
				<input type="text" class="form-control" name="txtnip">
			</div>
			<div class="from-group">
				<label for="">Nama</label>
				<input type="text" class="form-control" name="txtnama">
			</div>
			<div class="from-group">
				<label for="">Alamat</label>
				<input type="text" class="form-control" name="txtalamat">
			</div>
			<br>
			<input type="submit" name="simpan" class="btn btn-info" value="Simpan Data">
			<a href="index.php" class="btn btn-warning">Batal</a>			
		</form>	
	</div>
</body>
</html>