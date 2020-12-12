<?php
include "konek.php";

if (!empty($_REQUEST['id'])) {
    $id = $_REQUEST['id'];
    $nama = $_REQUEST['nama'];
    $tanggal = $_REQUEST['tanggal'];
    $jeniskelamin = $_REQUEST['jeniskelamin'];
    $alamat = $_REQUEST['alamat'];

    // query sql
    $sql = "UPDATE tb_karyawan
            SET nama='$nama',
                tgl_lahir='$tanggal',
                jns_kelamin='$jeniskelamin',
                alamat='$alamat'
            WHERE id='$id'";
    $query = mysqli_query($db, $sql) or die(mysqli_error($db));
}
if (!empty($id)) {
    if ($query) {
        echo '<script>
			alert("Data berhasil diupdate!!");
			window.location="aksi_input_karyawan.php";
			</script>';
    } else {
        echo "Error :" . $sql . "<br>" . mysqli_error($db);
    }

    mysqli_close($db);
} else {
    echo '<script>
		alert("Tidak ada data yang diupdate!!");
		window.location="aksi_input_karyawan.php";
		</script>';
}
?>