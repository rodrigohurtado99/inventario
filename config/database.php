<?php

// Arquivo config/database.php
$host = 'localhost';  // endereço do banco de dados
$dbname = 'inventario-celulares'; // nome do banco de dados
$username = 'root';  // nome de usuário
$password = '';  // senha

try {
    // Criando a conexão PDO
    $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo "Erro na conexão: " . $e->getMessage();
}
