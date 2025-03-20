<?php

class Router
{
    public function parseUrl()
    {
        // Verifica se existe controller e action na URL
        if (isset($_GET['controller']) && isset($_GET['action'])) {
            // Nome do controller (exemplo: ProdutoController)
            $controllerName = ucfirst($_GET['controller']) . 'Controller';
            $actionName = $_GET['action'];

            // Define o caminho para o arquivo do controller
            $controllerFile = '../controllers/' . $controllerName . '.php';

            // Verifica se o arquivo do controller existe
            if (file_exists($controllerFile)) {
                include_once $controllerFile;

                // Verifica se a classe do controller existe
                if (class_exists($controllerName)) {
                    $controller = new $controllerName($this->getModel());

                    // Verifica se a ação existe no controller
                    if (method_exists($controller, $actionName)) {
                        if (isset($_GET['id'])) {
                            $controller->$actionName($_GET['id']);
                        } else {
                            $controller->$actionName();
                        }
                    } else {
                        echo "Ação '$actionName' não encontrada!";
                    }
                } else {
                    echo "Controller '$controllerName' não encontrado!";
                }
            } else {
                echo "Arquivo do controller '$controllerName' não encontrado!";
                echo $_SERVER['REQUEST_URI'];
            }
        } else {
            echo "Controller ou ação não definidos!";
            echo $_SERVER['REQUEST_URI'];
        }
    }

    private function getModel()
    {
        // Inclui o modelo necessário
        include_once '../models/Produto.php';
        return new Produto($pdo);
    }
}
