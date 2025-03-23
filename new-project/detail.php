<?php
include("connexion.php");

$id = isset($_GET['id']) ? (int)$_GET['id'] : 0;

$query = "SELECT * FROM Recettes WHERE id = ?";
$stmt = odbc_prepare($conn, $query);
odbc_execute($stmt, [$id]);

$recette = odbc_fetch_array($stmt);
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo htmlspecialchars($recette['nom']); ?></title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <header>
        <h1><?php echo htmlspecialchars($recette['nom']); ?></h1>
        <a href="recettes.php?pays=<?php echo urlencode($recette['pays']); ?>">⬅ Retour aux recettes</a>
    </header>

    <div class="container">
        <h2>Ingrédients</h2>
        <p><?php echo nl2br($recette['ingredients']); ?></p>

        <h2>Préparation</h2>
        <p><?php echo nl2br($recette['preparation']); ?></p>
    </div>
</body>
</html>
