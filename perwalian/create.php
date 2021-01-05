<!DOCTYPE html>
<html>
<head>
	<title>Perwalian</title>
	<link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<div class="alert alert-info">Tambah Data Perwalian</div>
		<?php
			require '../koneksi.php';
			if (isset($_POST['simpan'])){
			$input_id = $_POST['txtid'];
			$input_nip = $_POST['txtnip'];
			$input_nim= $_POST['txtnim'];

			$query = "INSERT INTO perwalian VALUES('$input_id','$input_nip','$input_nim')";
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
				<label for="">ID</label>
				<input type="text" class="form-control" name="txtid">
			</div>
			<div class="from-group">
				<label for="">NIP</label>
				<input type="text" class="form-control" name="txtnip">
			</div>
			<div class="from-group">
				<label for="">NIM</label>
				<input type="text" class="form-control" name="txtnim">
			</div>
			<br>
			<input type="submit" name="simpan" class="btn btn-info" value="Simpan Data">
			<a href="index.php" class="btn btn-warning">Batal</a>			
		</form>	
	</div>
</body>
</html>