<?php

// Inclui o arquivo de roteamento
include '../core/Router.php';

// Cria o objeto do roteador e executa o roteamento
$router = new Router();
$router->parseUrl();
