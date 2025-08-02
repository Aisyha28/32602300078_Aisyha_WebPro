<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Tambah Buku</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(to right, #f1f4f9, #dff1ff);
            padding: 40px;
            display: flex;
            justify-content: center;
            align-items: flex-start;
            min-height: 100vh;
        }

        h2 {
            margin-bottom: 25px;
            color: #333;
            font-weight: 600;
            text-align: center;
        }

        form {
            background: #ffffff;
            padding: 30px;
            border-radius: 12px;
            max-width: 500px;
            width: 100%;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.05);
            transition: all 0.3s ease;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: 600;
            color: #333;
        }

        input[type="text"],
        input[type="number"],
        select {
            width: 100%;
            padding: 10px 12px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 14px;
            transition: border-color 0.2s ease-in-out;
        }

        input[type="text"]:focus,
        input[type="number"]:focus,
        select:focus {
            border-color: #0077cc;
            outline: none;
        }

        button {
            background-color: #007bff;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 8px;
            font-weight: 600;
            font-size: 14px;
            cursor: pointer;
            transition: background-color 0.2s ease-in-out;
            width: 100%;
        }

        button:hover {
            background-color: #005fa3;
        }

        .error-list {
            background-color: #ffe5e5;
            color: #a30000;
            border: 1px solid #f5c6cb;
            padding: 12px 16px;
            margin-bottom: 20px;
            border-radius: 8px;
            font-size: 14px;
        }

        .error-list ul {
            padding-left: 18px;
            margin: 0;
        }

        .form-title {
            margin-bottom: 30px;
        }
    </style>
</head>

<body>

    <form action="/buku/store" method="post">
        <h2 class="form-title">Tambah Buku</h2>

        <?php if (session()->getFlashdata('errors')): ?>
            <div class="error-list">
                <ul>
                    <?php foreach (session()->getFlashdata('errors') as $error): ?>
                        <li><?= esc($error) ?></li>
                    <?php endforeach ?>
                </ul>
            </div>
        <?php endif ?>

        <label for="kode_buku">Kode Buku</label>
        <input type="text" name="kode_buku" id="kode_buku" value="<?= old('kode_buku') ?>" required>

        <label for="judul">Judul</label>
        <input type="text" name="judul" id="judul" value="<?= old('judul') ?>" required>

        <label for="penulis">Penulis</label>
        <input type="text" name="penulis" id="penulis" value="<?= old('penulis') ?>" required>

        <label for="penerbit">Penerbit</label>
        <input type="text" name="penerbit" id="penerbit" value="<?= old('penerbit') ?>" required>

        <label for="tahun_terbit">Tahun Terbit</label>
        <input type="number" name="tahun_terbit" id="tahun_terbit" value="<?= old('tahun_terbit') ?>" required>

        <label for="ketersediaan">Ketersediaan</label>
        <select name="ketersediaan" id="ketersediaan">
            <option value="1" <?= old('ketersediaan') == '1' ? 'selected' : '' ?>>Tersedia</option>
            <option value="0" <?= old('ketersediaan') == '0' ? 'selected' : '' ?>>Tidak Tersedia</option>
        </select>

        <button type="submit">Simpan</button>
    </form>

</body>

</html>
