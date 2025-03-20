<?php 
    require_once "../views/layouts/main_layout.php";
?>

<title>Inventário de Celulares</title>
<div class="container py-5">
    <h1 class="text-center text-light mb-4 bg-dark">Inventário de Celulares</h1>
    <!-- Formulário de busca -->
    <div class="mb-4">
        <form id="search-form" method="GET" action="../cadastro/ficha_tecnica.php">
        <input type="hidden" name="userId" id="userId">
            <div class="input-group">
                <input type="text" class="form-control" name="q" id="idq" autocomplete="off" placeholder="Informe o ID/Usuário" required>
                <button class="btn btn-primary" type="submit">Buscar</button>
            </div>
        </form>
    </div>
</div>
<h2>Detalhes do Produto</h2>

<?php echo $_SERVER['REQUEST_URI']; if ($produto): ?>
    <p><strong>Nome:</strong> <?php echo $produto['nome']; ?></p>
    <p><strong>Preço:</strong> <?php echo number_format($produto['preco'], 2, ',', '.'); ?></p>
    <p><a href="index.php?controller=produto&action=index">Voltar à lista</a></p>

<?php else: ?>
    <p>Produto não encontrado!</p>
<?php endif; ?>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>


