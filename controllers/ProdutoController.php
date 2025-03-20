<?php

class ProdutoController
{
    private $produto;

    public function __construct($produto)
    {
        $this->produto = $produto;
    }

    public function home()
    {
        $produtos = $this->produto->getAll();
        include "../views/home.php";
    }

    // Exibir todos os produtos
    public function index()
    {
        $produtos = $this->produto->getAll();
        include '../views/produto/index.php';
    }

    // Exibir detalhes de um produto específico
    public function detalhes($id)
    {
        $produto = $this->produto->getById($id);
        if ($produto) {
            include '../views/produto/detalhes.php';
        } else {
            echo "Produto não encontrado!";
        }
    }
}
