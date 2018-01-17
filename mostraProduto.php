<?php 
	include("functions.php");
	$idProduto = $_GET['idProd'];
	$resultado = selectProdutoIdTd($idProduto);
 ?>
 <?php 
 		foreach ($resultado as $produto) { 
		$data = date('Y-m-d');
		$de = date('Y-m-d', strtotime($produto["dataInicioPromo"]));
		$ate = date('Y-m-d', strtotime($produto["dataFimPromo"]));
		if($data >= $de && $data <= $ate){?>
			<form name="mostraProdutoProm" action="carrinho.php" method="POST" enctype="multipart/form-data">
			<h1><?php echo $produto["nomeProduto"]; ?></br></h1>
			<img src="fotos/<?php echo $produto["fotoUm"]; ?>" height="108px" width="108px">
			<img src="fotos/<?php echo $produto["fotoDois"]; ?>" height="108px" width="108px">
			<img src="fotos/<?php echo $produto["fotoTres"]; ?>" height="108px" width="108px">
			<img src="fotos/<?php echo $produto["fotoQuatro"]; ?>" height="108px" width="108px"></br>
			<h3>Tipo: <?php echo $produto["tipo"]; ?></h3>
			<h3>Marca: <?php echo $produto["marca"]; ?></h3>
			<h3>Descrição: <?php echo $produto["descricao"]; ?></h3>
			<h3>Especificação Técnica: <?php echo $produto["especTecnica"]; ?></h3>
			<h3>PRMOÇÃO</h3>
			<h3><?php echo $produto["percentDesconto"]; ?> % de desconto</h3></br>
			<?php 
				$valorPromo = $produto["valor"];
				$desconto = $produto["percentDesconto"];
				$valorDesconto = ($valorPromo*$desconto)/100;
				$valorTotal = $valorPromo - $valorDesconto;
			 ?>
			<h3>De <?php echo $produto["valor"]; ?> R$ POR <?php echo $valorTotal; ?> R$</h3></br>
			<h3>Economize <?php echo $valorDesconto; ?> R$</h3></br>
			<h3>Valido até <?php echo $produto["dataFimPromo"]; ?></h3>
			Quantidade: <input type="number"name="quantidade" value="1"> </br> 
			<input type="hidden" name="idProd" value="<?=$produto["codProduto"]?>">
			<input type="submit" value="Adcionar ao carrinho" name="addCarrinho">
		</form>
			<?php }
		
		else{	?>
		<form name="mostraProduto" action="carrinho.php" method="POST" enctype="multipart/form-data">
			<h1><a href=""><?php echo $produto["nomeProduto"]; ?></a></br></h1>
			<img src="fotos/<?php echo $produto["fotoUm"]; ?>" height="108px" width="108px">
			<img src="fotos/<?php echo $produto["fotoDois"]; ?>" height="108px" width="108px">
			<img src="fotos/<?php echo $produto["fotoTres"]; ?>" height="108px" width="108px">
			<img src="fotos/<?php echo $produto["fotoQuatro"]; ?>" height="108px" width="108px"></br>
			<h3>Tipo: <?php echo $produto["tipo"]; ?></h3>
			<h3>Marca: <?php echo $produto["marca"]; ?></h3>
			<h3>Descrição: <?php echo $produto["descricao"]; ?></h3>
			<h3>Especificação Técnica: <?php echo $produto["especTecnica"]; ?></h3>
			<h3>Preço: R$ <?php echo $produto["valor"]; ?></br></h3>
			Quantidade: <input type="number"name="quantidade" value="1"> </br></br>
			<input type="hidden" name="idProd" value="<?=$produto["codProduto"]?>">
			<input type="submit" value="Adcionar ao carrinho" name="addCarrinho">
		</form>
<?php } } ?>