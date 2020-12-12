<?php
include 'konek.php';
if (isset($_REQUEST['id'])) {
    $ID = $_REQUEST['id'];
    $NAMA = $_REQUEST['nama'];
    $TANGGAL = $_REQUEST['tanggal'];
    $JK = $_REQUEST['jeniskelamin'];
    $ALAMAT = $_REQUEST['alamat'];
}
if (!empty($ID)) {
    echo '<script>alert("Data berhasil ditambahkan")</script>';
    $input = mysqli_query($db, "insert into tb_karyawan values ('$ID','$NAMA','$TANGGAL','$JK','$ALAMAT')");
} else {
    echo '<script>alert("Tidak ada data baru yang ditambahkan / Data tidak boleh kosong")</script>';
}
$lihat = mysqli_query($db, "select * from tb_karyawan");
?>

<html>

<head>
    <title>Form Admin</title>
    <link rel="stylesheet" href="style.css" type="text/css">
</head>

<body>
    <div class="container" id="admin">
        <h2>Form Admin</h2>
        <a href="input_karyawan.php">[+] Tambah Karyawan Baru</a>
        <table border="1">
            <thead>
                <tr>
                    <td width="130px">ID Karyawan</td>
                    <td>Nama Karyawan</td>
                    <td width="130px">Tanggal Lahir</td>
                    <td width="130px">Jenis Kelamin</td>
                    <td>Alamat</td>
                    <td width="200px">Tindakan</td>
                </tr>
            </thead>
            <?php
            while ($row = mysqli_fetch_array($lihat)) {
                echo "<tbody>";
                echo "<tr>";
                echo "<td>$row[0]</td>";
                echo "<td>$row[1]</td>";
                echo "<td>$row[2]</td>";
                echo "<td>$row[3]</td>";
                echo "<td>$row[4]</td>";
                echo "<td>
                <form method='POST' action='update_karyawan.php'>
                    <input type='hidden' name='id' id='id' value=" . $row[0] . ">
                    <button class='btn-admin btn-tindakan' type='submit' name='send'>Edit</button>
                </form>
                <form method='POST' action='aksi_hapus_karyawan.php'>
                    <input type='hidden' name='id' id='id' value=" . $row[0] . ">
                    <button class='btn-admin btn-tindakan' type='submit' name='send'>Hapus</button>
                </form>
                </td>";
                echo "</tr>";
                echo "</tbody>";
            }
            ?>
        </table>
    </div>
</body>

</html>