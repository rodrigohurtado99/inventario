<h2>Detalhes do Produto</h2>

<?php if ($produto): ?>
    <p><strong>Nome:</strong> <?php echo $produto['nome']; ?></p>
    <p><strong>Preço:</strong> <?php echo number_format($produto['preco'], 2, ',', '.'); ?></p>
    <p><a href="index.php?controller=produto&action=index">Voltar à lista</a></p>
<?php else: ?>
    <p>Produto não encontrado!</p>
<?php endif; ?>
