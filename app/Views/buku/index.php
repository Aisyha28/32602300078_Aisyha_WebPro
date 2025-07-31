<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Daftar Buku</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 30px;
            background: #f9f9f9;
        }

        h1 {
            margin-bottom: 20px;
        }

        form.search-form {
            margin-bottom: 15px;
        }

        input[type="text"] {
            padding: 6px;
            width: 200px;
            margin-right: 8px;
        }

        a.button {
            display: inline-block;
            padding: 8px 16px;
            background-color: #007bff;
            color: #fff;
            text-decoration: none;
            border-radius: 4px;
            margin-bottom: 15px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background: #fff;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
        }

        th,
        td {
            padding: 12px;
            border: 1px solid #ddd;
            text-align: left;
        }

        th {
            background-color: #f0f0f0;
        }

        tr:nth-child(even) {
            background-color: #fafafa;
        }

        .flash-message {
            background-color: #d4edda;
            color: #155724;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #c3e6cb;
            border-radius: 4px;
        }

        .action-links a {
            margin-right: 10px;
            color: #007bff;
            text-decoration: none;
        }

        .action-links a:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>

    <h1>Daftar Buku</h1>

    <?php if (session()->getFlashdata('success')): ?>
        <div class="flash-message">
            <?= session()->getFlashdata('success') ?>
        </div>
    <?php endif ?>

    <!-- Form pencarian -->
    <form method="get" action="/buku" class="search-form">
        <input type="text" name="q" value="<?= esc($keyword ?? '') ?>" placeholder="Cari judul atau kode...">
        <button type="submit">Cari</button>
        <a href="/buku">Reset</a>
    </form>

    <a href="/buku/create" class="button">+ Tambah Buku</a>

    <table>
        <thead>
            <tr>
                <th>Kode</th>
                <th>Judul</th>
                <th>Penulis</th>
                <th>Tahun</th>
                <th>Status</th>
                <th>Aksi</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($buku as $b): ?>
                <tr>
                    <td><?= esc($b['kode_buku']) ?></td>
                    <td><?= esc($b['judul']) ?></td>
                    <td><?= esc($b['penulis']) ?></td>
                    <td><?= esc($b['tahun_terbit']) ?></td>
                    <td><?= $b['ketersediaan'] ? 'Tersedia' : 'Tidak tersedia' ?></td>
                    <td class="action-links">
                        <a href="/buku/edit/<?= $b['id'] ?>">Edit</a>
                        <a href="/buku/delete/<?= $b['id'] ?>" onclick="return confirm('Yakin ingin menghapus?')">Hapus</a>
                    </td>
                </tr>
            <?php endforeach ?>
        </tbody>
    </table>

</body>

</html>