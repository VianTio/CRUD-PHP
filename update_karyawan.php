<?php
include "konek.php";

if (!empty($_REQUEST["id"])) {
    $id = $_REQUEST["id"];

    $sql = "SELECT * FROM tb_karyawan WHERE id='$id'";
    $query = mysqli_query($db, $sql) or die(mysqli_error($db));

    if (mysqli_num_rows($query) > 0) {
        $row = mysqli_fetch_array($query);
    }
} else {
    echo '<script>
			alert("Aksi Illegal Silahkan Kembali!!");
			window.location="aksi_input_karyawan.php";
			</script>';
}
?>
<html>

<head>
    <title>Form Update Karyawan</title>
    <link rel="stylesheet" href="style.css" type="text/css">
</head>

<body>
    <div class="bg">
        <h2>Update Data Karyawan</h2>
        <form method="POST" action="aksi_update_karyawan.php">
            <table>
                <tr>
                    <td width="130px">
                        <label for="id">ID</label>
                    </td>
                    <td>
                        <input style="border: none" type="text" name="id" id="id" value="<?php echo $row[0] ?>" readonly>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="nama">Nama</label>
                    </td>
                    <td>
                        <input type="text" name="nama" id="nama" value="<?php echo $row[1] ?>">
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="tanggal">Tanggal Lahir</label>
                    </td>
                    <td>
                        <input type="text" name="tanggal" id="tanggal" value="<?php echo $row[2] ?>">
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="jeniskelamin">Jenis kelamin</label>
                    </td>
                    <td>
                        <select name="jeniskelamin" id="jeniskelamin">
                            <option <?php if ($row[3] == "P") {
                                        echo "selected";
                                    } ?> value="P">Perempuan</option>
                            <option <?php if ($row[3] == "L") {
                                        echo "selected";
                                    } ?> value="L">Laki-laki</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="alamat">Alamat</label>
                    </td>
                    <td>
                        <input type="text" name="alamat" id="alamat" value="<?php echo $row[4] ?>">
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <button type="submit" name="send">Kirim</button>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>

</html>