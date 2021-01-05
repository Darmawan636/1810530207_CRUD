<!DOCTYPE html>
<html>
<head>
	<title>Mahasiswa</title>
	<link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<div class="alert alert-info">Tambah Data Mahasiswa</div>
		<?php
			require '../koneksi.php';
			if (isset($_POST['simpan'])){
			$input_nim = $_POST['txtnim'];
			$input_nama = $_POST['txtnama'];
			$input_prodi= $_POST['txtprodi'];

			$query = "INSERT INTO mahasiswa VALUES('$input_nim','$input_nama','$input_prodi')";
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
				<label for="">NIM</label>
				<input type="text" class="form-control" name="txtnim">
			</div>
			<div class="from-group">
				<label for="">Nama</label>
				<input type="text" class="form-control" name="txtnama">
			</div>
			<div class="from-group">
				<label for="">Prodi</label>
				<input type="text" class="form-control" name="txtprodi">
			</div>
			<br>
			<input type="submit" name="simpan" class="btn btn-info" value="Simpan Data">
			<a href="index.php" class="btn btn-warning">Batal</a>			
		</form>	
	</div>
</body>
</html>