<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cuisine du Monde</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="styles.css">
</head>
<body>

    <!-- Navbar Bootstrap -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand d-flex align-items-center" href="index.php">
                <img src="images/logo.png" alt="Logo" height="40" class="me-2">
                <span>Cuisine du Monde</span>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a href="index.php" class="nav-link active">Pays</a></li>
                    <li class="nav-item"><a href="categories.php" class="nav-link">Catégories</a></li>
                    <li class="nav-item"><a href="about.php" class="nav-link">À Propos</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Contenu principal -->
    <div class="container my-5">
        <h1 class="text-center mb-4">Découvrez les Cuisines du Monde</h1>

        <div class="row">
            <?php
            require_once 'cnx.php';

            try {
                
                $sql = "SELECT * FROM tab_pays ORDER BY nom_pays";
                $stmt = $pdo->query($sql);


                while ($pays = $stmt->fetch(PDO::FETCH_ASSOC)) {
                    $nom_pays = htmlspecialchars($pays['nom_pays']);
                    $description = htmlspecialchars($pays['description']);
                
                    // ✅ Associer une image en fonction du nom du pays
                    $image_path = "images/pays/default.jpg"; 
                    if ($nom_pays == "France") {
                        $image_path = "images/pays/" . strtolower($nom_pays) . ".jpg";
                    } elseif ($nom_pays == "Italie") {
                        $image_path = "images/pays/" . strtolower($nom_pays) . ".jpg";
                    } elseif ($nom_pays == "Japon") {
                        $image_path = "https://upload.wikimedia.org/wikipedia/en/9/9e/Flag_of_Japan.svg";
                    } elseif ($nom_pays == "Maroc") {
                        $image_path = "https://upload.wikimedia.org/wikipedia/commons/2/2c/Flag_of_Morocco.svg";
                    } elseif ($nom_pays == "Mexique") {
                        $image_path = "https://upload.wikimedia.org/wikipedia/commons/f/fc/Flag_of_Mexico.svg";
                    }
                    elseif ($nom_pays == "ESPAGNE") {
                        $image_path = "images/pays/" . strtolower($nom_pays) . ".jpg";
                    }
                
                    echo '<div class="col-md-4 col-sm-6 mb-4">';
                    echo '<div class="card h-100 shadow">';
                    echo '<a href="pays.php?id=' . $pays['id_pays'] . '" class="text-decoration-none text-dark">';
                    echo '<img src="' . $image_path . '" class="card-img-top" alt="' . $nom_pays . '" style="height:200px; object-fit:cover;">';
                    echo '<div class="card-body">';
                    echo '<h5 class="card-title">' . $nom_pays . '</h5>';
                    echo '<p class="card-text">' . $description . '</p>';
                    echo '</div>';
                    echo '</a>';
                    echo '</div>';
                    echo '</div>';
                }
            } catch (PDOException $e) {
                echo '<p class="alert alert-danger">Erreur lors de la récupération des pays : ' . $e->getMessage() . '</p>';
            }
            ?>
        </div>
    </div>

    <!-- Pied de page -->
    <footer class="bg-dark text-white text-center py-3">
        <p>&copy; <?php echo date('Y'); ?> Cuisine du Monde - Tous droits réservés</p>
    </footer>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
