<?php
include "konek.php";

if (!empty($_REQUEST["id"])) {
    $id = $_REQUEST["id"];

    // query sql
    $sql = "DELETE FROM tb_karyawan WHERE id='$id'";
    $query = mysqli_query($db, $sql) or die(mysqli_error($db));
}
if (!empty($id)) {
    if ($query) {
        echo '<script>
			alert("Data berhasil dihapus!!");
			window.location="aksi_input_karyawan.php";
			</script>';
    } else {
        echo "Error :" . $sql . "<br>" . mysqli_error($db);
    }

    mysqli_close($db);
} else {
    echo '<script>
		alert("Tidak ada data yang dihapus!!");
		window.location="aksi_input_karyawan.php";
		</script>';
}
?>