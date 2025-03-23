<?php
$host = "localhost"; 
$dbname = "recettes_db"; 
$username = "root"; 
$password = ""; 

try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

   // echo "Connexion réussie !"; // ➜ Affiche ce message si la connexion marche
} catch (PDOException $e) {
    die("Erreur de connexion : " . $e->getMessage());
}
?>
