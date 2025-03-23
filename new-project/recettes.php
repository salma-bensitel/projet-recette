<?php
include("cnx.php");

$pays = isset($_GET['pays']) ? $_GET['pays'] : '';

$query = "SELECT * FROM Recettes WHERE pays = ?";
$stmt = odbc_prepare($conn, $query);
odbc_execute($stmt, [$pays]);
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Recettes de <?php echo htmlspecialchars($pays); ?></title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <header>
        <h1>Recettes de <?php echo htmlspecialchars($pays); ?></h1>
        <a href="index.php">⬅ Retour</a>
    </header>

    <div class="container">
        <?php
        while ($row = odbc_fetch_array($stmt)) {
            echo "<div class='recette'>";
            echo "<h2>" . $row['nom'] . "</h2>";
            echo "<p>" . $row['description'] . "</p>";
            echo "<a href='details.php?id=" . $row['id'] . "' class='btn'>Voir la recette</a>";
            echo "</div>";
        }
        ?>
    </div>
</body>
</html>
