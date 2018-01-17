<?php 
	include("functions.php");
?>
<div align="right "> <h3><a href="carrinho.php">Carrinho</a></h3> </div>
<div align="right "> <h3><a href="index.php">Voltar</a></h3> </div>
<form name="cadastrarEndereco" action="search.php" method="POST">
				<input type="submit" name="memo" value="Memória">
				</br>
				<input type="submit" name="proce" value="Processador">
				</br>
				<input type="submit" name="placaM" value="Placa Mãe">
				</br>
				<input type="submit" name="font" value="Fonte">
				</br>
				<input type="submit" name="placaV" value="Placa de Vídeo">
				</br>
				<input type="submit" name="hd" value="HD">
				</br>
				<input type="submit" name="mouse" value="Mouse">
				</br>
				<input type="submit" name="teclado" value="Teclado">
				</br>
				<input type="submit" name="headset" value="HeadSet">
				</br>
				<input type="submit" name="mouseP" value="Mouse Pad">
				</br>
</form>
<?php
	if (isset($_POST["Pesquisar"])) {
		$pesquisar = $_POST["buscar"];
		$resultado = selectProdutoSearch($pesquisar);
	}
	else if (isset($_POST["Promocao"])) {
		$data = date('d-m-Y');
		$resultadoPromocao = selectPromocao($data);
		foreach ($resultadoPromocao as $produto) { 
	?>
		<form name="alterarProduto" action="functions.php" method="POST" enctype="multipart/form-data">
			<a href="mostraProduto.php?idProd=<?=$produto["codProduto"]?>">PROMOÇÃO </a></br>
			<a href="mostraProduto.php?idProd=<?=$produto["codProduto"]?>"><img src="fotos/<?php echo $produto["fotoUm"]; ?>" height="108px" width="108px"></a></br>
			<a href="mostraProduto.php?idProd=<?=$produto["codProduto"]?>"><?php echo $produto["nomeProduto"]; ?></a></br>
			<a href="mostraProduto.php?idProd=<?=$produto["codProduto"]?>"><?php echo $produto["percentDesconto"]; ?> % de desconto</a></br>
			<?php 
				$valorPromo = $produto["valor"];
				$desconto = $produto["percentDesconto"];
				$valorDesconto = ($valorPromo*$desconto)/100;
				$valorTotal = $valorPromo - $valorDesconto;
			 ?>
			<a href="mostraProduto.php?idProd=<?=$produto["codProduto"]?>">De <?php echo $produto["valor"]; ?> R$ POR <?php echo $valorTotal; ?> R$</a></br>
			<a href="mostraProduto.php?idProd=<?=$produto["codProduto"]?>">Economize <?php echo $valorDesconto; ?> R$</a></br>
			<a href="mostraProduto.php?idProd=<?=$produto["codProduto"]?>">Valido até <?php echo $produto["dataFimPromo"]; ?></a>
			<input type="hidden" name="idProd" value="<?=$produto["codProduto"]?>">
			<input type="hidden" name="quantidade" value="1">
			<input type="submit" value="Adcionar ao carrinho" name="addCarrinho">
</form>
		<?php }
}
else if (isset($_POST["memo"])) {
		$pesquisar = "Memória";
		$resultado = selectProdutoSearch($pesquisar);
	}
else if (isset($_POST["proce"])) {
		$pesquisar = "Processador";
		$resultado = selectProdutoSearch($pesquisar);
	}
else if (isset($_POST["placaM"])) {
		$pesquisar = "Placa Mãe";
		$resultado = selectProdutoSearch($pesquisar);
	}
else if (isset($_POST["font"])) {
		$pesquisar = "Fonte";
		$resultado = selectProdutoSearch($pesquisar);
	}
else if (isset($_POST["placaV"])) {
		$pesquisar = "placa de video";
		$resultado = selectProdutoSearch($pesquisar);
	}
else if (isset($_POST["hd"])) {
		$pesquisar = "HD";
		$resultado = selectProdutoSearch($pesquisar);
	}
else if (isset($_POST["mouse"])) {
		$pesquisar = "Mouse";
		$resultado = selectProdutoSearch($pesquisar);
	}
else if (isset($_POST["teclado"])) {
		$pesquisar = "Teclado";
		$resultado = selectProdutoSearch($pesquisar);
	}
else if (isset($_POST["headset"])) {
		$pesquisar = "HeadSet";
		$resultado = selectProdutoSearch($pesquisar);
	}
else if (isset($_POST["mouseP"])) {
		$pesquisar = "MousePad";
		$resultado = selectProdutoSearch($pesquisar);
	}
else {
		$resultado = selectProduto();
	}
 

if (isset($resultado)) {
	foreach ($resultado as $produto) { 
		$data = date('Y-m-d');
		$de = date('Y-m-d', strtotime($produto["dataInicioPromo"]));
		$ate = date('Y-m-d', strtotime($produto["dataFimPromo"]));
		if($data >= $de && $data <= $ate){?>
			<form name="alterarProduto" action="functions.php" method="POST" enctype="multipart/form-data">
			<a href="mostraProduto.php?idProd=<?=$produto["codProduto"]?>">PROMOÇÃO </a></br>
			<a href="mostraProduto.php?idProd=<?=$produto["codProduto"]?>"><img src="fotos/<?php echo $produto["fotoUm"]; ?>" height="108px" width="108px"></a></br>
			<a href="mostraProduto.php?idProd=<?=$produto["codProduto"]?>"><?php echo $produto["nomeProduto"]; ?></a></br>
			<a href="mostraProduto.php?idProd=<?=$produto["codProduto"]?>"><?php echo $produto["percentDesconto"]; ?> % de desconto</a></br>
			<?php 
				$valorPromo = $produto["valor"];
				$desconto = $produto["percentDesconto"];
				$valorDesconto = ($valorPromo*$desconto)/100;
				$valorTotal = $valorPromo - $valorDesconto;
			 ?>
			<a href="mostraProduto.php?idProd=<?=$produto["codProduto"]?>">De <?php echo $produto["valor"]; ?> R$ POR <?php echo $valorTotal; ?> R$</a></br>
			<a href="mostraProduto.php?idProd=<?=$produto["codProduto"]?>">Economize <?php echo $valorDesconto; ?> R$</a></br>
			<a href="mostraProduto.php?idProd=<?=$produto["codProduto"]?>">Valido até <?php echo $produto["dataFimPromo"]; ?></a>
			<input type="hidden" name="idProd" value="<?=$produto["codProduto"]?>">
			<input type="hidden" name="quantidade" value="1">
			<input type="submit" value="Adcionar ao carrinho" name="addCarrinho">
			</form>
		<?php }
		
		else{	?>
		<form name="alterarProduto" action="functions.php" method="POST" enctype="multipart/form-data">
			<a href="mostraProduto.php?idProd=<?=$produto["codProduto"]?>"><img src="fotos/<?php echo $produto["fotoUm"]; ?>" height="108px" width="108px"></a></br>
			<a href="mostraProduto.php?idProd=<?=$produto["codProduto"]?>"><?php echo $produto["nomeProduto"]; ?></a></br>
			<a href="mostraProduto.php?idProd=<?=$produto["codProduto"]?>">R$ <?php echo $produto["valor"]; ?></a></br>
			<input type="hidden" name="idProd" value="<?=$produto["codProduto"]?>">
			<input type="hidden" name="quantidade" value="1">
			<input type="submit" value="Adcionar ao carrinho" name="addCarrinho">
		</form>
<?php } } }?>

<a href="index.php">Voltar</a>