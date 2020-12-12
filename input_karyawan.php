<html>

<head>
    <title>Form Input Karyawan</title>
    <link rel="stylesheet" href="style.css" type="text/css">
</head>

<body>
    <div class="bg">
        <h2>Form Registrasi Karyawan</h2>

        <form method="POST" action="aksi_input_karyawan.php">
            <table>
                <tr>
                    <td width="130px">
                        <label for="id">ID</label>
                    </td>
                    <td>
                        <input type="text" name="id" id="id" placeholder="Id Karyawan">
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="nama">Nama</label>
                    </td>
                    <td>
                        <input type="text" name="nama" id="nama" placeholder="Nama Lengkap">
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="tanggal">Tanggal Lahir</label>
                    </td>
                    <td>
                        <input type="text" name="tanggal" id="tanggal" placeholder="yyyy-mm-dd">
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="jeniskelamin">Jenis kelamin</label>
                    </td>
                    <td>
                        <select name="jeniskelamin" id="jeniskelamin">
                            <option value="P">Perempuan</option>
                            <option value="L">Laki-laki</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="alamat">Alamat</label>
                    </td>
                    <td>
                        <input type="text" name="alamat" id="alamat" placeholder="Alamat Lengkap">
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