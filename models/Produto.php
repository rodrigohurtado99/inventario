<?php

    require_once "../config/database.php";
class Produto
{
    private $pdo;

    public function __construct($pdo)
    {
        $this->pdo = $pdo;
    }
    public function getAll()
    {   
        // Dados de exemplo (sem banco de dados)
        return [
            ['id' => 1, 'nome' => 'Produto 1', 'preco' => 10.00],
            ['id' => 2, 'nome' => 'Produto 2', 'preco' => 20.00],
            ['id' => 3, 'nome' => 'Produto 3', 'preco' => 30.00],
        ];
    }

    // public function teste() 
    // {   

    //     $query = "SELECT * FROM usuarios";

    //     $stmt = $this->pdo->prepare($query);
    //     $stmt->execute();

    //     return $stmt->fetchAll(PDO::FETCH_ASSOC);
    // }

    public function getById($id)
    {
        // Dados de exemplo
        $produtos = $this->getAll();
        foreach ($produtos as $produto) {
            if ($produto['id'] == $id) {
                return $produto;
            }
        }
        return null; // Caso não encontre o produto
    }
}

