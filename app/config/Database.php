<?php 

define('DB_HOST', 'localhost');
define('DB_NAME', 'inventario-celulares');
define('DB_USER', 'root');
define('DB_PASS', '');

try {
    // criando uma conexão
    $pdo = new PDO("mysql:host=". DB_HOST.";dbname=".DB_NAME,  DB_USER, DB_PASS);
    // definindo o modo de erro do PDO
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "Conectado ao banco de dados com sucesso";
    return $pdo;
} catch (PDOException $e) {
    die("Falha na conexão " . $e->getMessage());
}

