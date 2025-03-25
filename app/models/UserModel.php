<?php 
// importa a conexão ao banco de dados
require_once BASE_PATH . "/app/config/Database.php";
class User
{
    public $pdo;
    
    public function __construct()
    {
        global $pdo;
        $this->pdo = $pdo;
    }
    public function ListarCelulares()
    {
        
        $sql = "SELECT * FROM celulares";
        $stmt = $this->pdo->prepare($sql);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}