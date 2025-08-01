<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title><?= $title ?? 'Perpustakaan' ?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">

    <style>
        body {
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            font-family: 'Segoe UI', sans-serif;
            background-color: #f4f6f9;
        }

        .wrapper {
            display: flex;
            flex: 1;
        }

        .sidebar {
            width: 240px;
            background-color: #343a40;
            color: #fff;
            padding: 25px 15px;
            min-height: 100vh;
            transition: transform 0.3s ease;
        }

        .sidebar.hidden {
            transform: translateX(-100%);
        }

        .sidebar h5 {
            color: #adb5bd;
            margin-bottom: 1.5rem;
        }

        .sidebar a {
            display: block;
            color: #dee2e6;
            margin-bottom: 12px;
            padding: 10px 15px;
            text-decoration: none;
            border-radius: 8px;
            transition: all 0.2s ease-in-out;
        }

        .sidebar a:hover {
            background-color: #495057;
            color: #fff;
        }

        .sidebar a.active {
            background-color: #0d6efd;
            color: #fff;
        }

        .content {
            flex: 1;
            padding: 30px;
            background-color: #f8f9fa;
        }

        .navbar-brand {
            font-weight: 600;
            font-size: 20px;
        }

        .btn {
            border-radius: 6px;
        }

        .alert {
            border-radius: 6px;
        }

        .profile-icon {
            font-size: 22px;
            color: #fff;
        }

        @media (max-width: 768px) {
            .wrapper {
                flex-direction: column;
            }

            .sidebar {
                position: absolute;
                z-index: 1000;
                top: 56px;
                left: 0;
                height: calc(100% - 56px);
                transform: translateX(-100%);
            }

            .sidebar.show {
                transform: translateX(0);
            }

            .content {
                padding: 20px;
            }
        }
    </style>
</head>

<body>

    <!-- Navbar Atas -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary shadow-sm">
        <div class="container-fluid">
            <button class="btn btn-outline-light d-lg-none me-2" id="toggleSidebar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand" href="/">📚 Perpustakaan Mini</a>
            <div class="ms-auto">
                <a href="#" class="profile-icon me-3">
                    <i class="bi bi-person-circle"></i>
                </a>
            </div>
        </div>
    </nav>

    <div class="wrapper">
        <!-- Sidebar -->
        <div class="sidebar" id="sidebar">
            <h5>Dashboard</h5>
            <a href="/buku" class="<?= current_url() == base_url('/buku') ? 'active' : '' ?>">📖 Daftar Buku</a>
            <a href="/buku/create" class="<?= current_url() == base_url('/buku/create') ? 'active' : '' ?>">➕ Tambah Buku</a>
        </div>

        <!-- Konten Utama -->
        <div class="content">
            <?= $this->renderSection('content') ?>
        </div>
    </div>

    <!-- Scripts -->
    <script>
        const toggleBtn = document.getElementById('toggleSidebar');
        const sidebar = document.getElementById('sidebar');

        toggleBtn.addEventListener('click', () => {
            sidebar.classList.toggle('show');
        });
    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>