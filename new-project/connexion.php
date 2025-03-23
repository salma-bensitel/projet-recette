<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

$bd = realpath("C:\\xampp\\htdocs\\new-project\\recettes2.accdb");

if (!$bd) {
    die("❌ Fichier de base de données introuvable !");
}

$DSNLess = "DRIVER={Microsoft Access Driver (*.mdb, *.accdb)}; DBQ=$bd";
$cnx = odbc_connect($DSNLess, '', '');

if (!$cnx) {
    die("❌ Impossible de se connecter : " . odbc_errormsg());
}

echo "✅ Connexion réussie à la base de données Access !";
?>