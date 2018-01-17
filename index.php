<?php 
include("functions.php");
$recentes = selectUltimos();
$promocoes = selectPromocoesBest();

?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="UTF-8">
	<title>Loja Comp3</title>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
</head>
<body>
<div align="right "> <h3><a href="carrinho.php">Carrinho</a></h3> </div>
	<center>
	<?php  
	if (isset($_SESSION["idPessoa"])) {
		$usuarioLogado = $_SESSION["idPessoa"];
		$nomePessoa = localizaNome($usuarioLogado);?>
		<a href="perfil.php"><h1>Bem Vindo <?php echo "$nomePessoa";?></h1></a>

		<form name="logout "action="functions.php" method="POST"> 
			<input type="submit" value="Sair" name="fazerLogout" /> 
		</form>
		<?php
	}
	else{
		?><a href="cadastrologin.php"><h1>Cadastro/Login</h1></a></br><?php	
	}

	?>

*********************************************************************************************************</br>
</center>
<form name="pesquisar" action="search.php" method="POST">
	<input type="text" name="buscar" align="left">
	<input type="submit" name="Pesquisar" value="Pesquisar"></br>
</form>
<form name="produto" action="search.php" method="POST">
	<input type="submit" name="Produto" value="Produtos"></br>
</form>
<form name="promocao" action="search.php" method="POST">
	<input type="submit" name="Promocao" value="Promoção"></br>
</form>
</body>
</html>
<center><h1>Destaques</h1></center>
 <?php 
 		foreach ($recentes as $produto) { 
		$data = date('Y-m-d');
		$de = date('Y-m-d', strtotime($produto["dataInicioPromo"]));
		$ate = date('Y-m-d', strtotime($produto["dataFimPromo"]));
		if($data >= $de && $data <= $ate){?>
			<form name="mostraProdutoProm" action="functions.php" method="POST" enctype="multipart/form-data">
			<a href="mostraProduto.php?idProd=<?=$produto["codProduto"]?>"><?php echo $produto["nomeProduto"]; ?></br></a>
			<a href="mostraProduto.php?idProd=<?=$produto["codProduto"]?>"><img src="fotos/<?php echo $produto["fotoUm"]; ?>" height="108px" width="108px"></a>
			<a href="mostraProduto.php?idProd=<?=$produto["codProduto"]?>"><h3>PRMOÇÃO</h3></a>
			<a href="mostraProduto.php?idProd=<?=$produto["codProduto"]?>"><h3><?php echo $produto["percentDesconto"]; ?> % de desconto</h3></br></a>
			<?php 
				$valorPromo = $produto["valor"];
				$desconto = $produto["percentDesconto"];
				$valorDesconto = ($valorPromo*$desconto)/100;
				$valorTotal = $valorPromo - $valorDesconto;
			 ?>
			<a href="mostraProduto.php?idProd=<?=$produto["codProduto"]?>"><h3>De <?php echo $produto["valor"]; ?> R$ POR <?php echo $valorTotal; ?> R$</h3></br></a>
			<input type="hidden" name="idProd" value="<?=$produto["codProduto"]?>">
			<input type="hidden" name="quantidade" value="1">
			<input type="submit" value="Adcionar ao carrinho" name="addCarrinho">
		</form>
			<?php }
		
		else{	?>
		<form name="mostraProduto" action="functions.php" method="POST" enctype="multipart/form-data">
			<a href="mostraProduto.php?idProd=<?=$produto["codProduto"]?>"><?php echo $produto["nomeProduto"]; ?></a></br>
			<a href="mostraProduto.php?idProd=<?=$produto["codProduto"]?>"><img src="fotos/<?php echo $produto["fotoUm"]; ?>" height="108px" width="108px"></a>
			<a href="mostraProduto.php?idProd=<?=$produto["codProduto"]?>"><h3>Preço: R$ <?php echo $produto["valor"]; ?></br></h3></a>
			<input type="hidden" name="idProd" value="<?=$produto["codProduto"]?>">
			<input type="hidden" name="quantidade" value="1">
			<input type="submit" value="Adcionar ao carrinho" name="addCarrinho">
		</form>
<?php } } ?>
<center><h1>Promoção</h1></center>
<?php 
 		foreach ($promocoes as $produto) { 
		$data = date('Y-m-d');
		$de = date('Y-m-d', strtotime($produto["dataInicioPromo"]));
		$ate = date('Y-m-d', strtotime($produto["dataFimPromo"]));
		if($data >= $de && $data <= $ate){?>
			<form name="mostraProdutoProm" action="functions.php" method="POST" enctype="multipart/form-data">
			<a href="mostraProduto.php?idProd=<?=$produto["codProduto"]?>"><?php echo $produto["nomeProduto"]; ?></br></a>
			<a href="mostraProduto.php?idProd=<?=$produto["codProduto"]?>"><img src="fotos/<?php echo $produto["fotoUm"]; ?>" height="108px" width="108px"></a>
			<a href="mostraProduto.php?idProd=<?=$produto["codProduto"]?>"><h3>PRMOÇÃO</h3></a>
			<a href="mostraProduto.php?idProd=<?=$produto["codProduto"]?>"><h3><?php echo $produto["percentDesconto"]; ?> % de desconto</h3></br></a>
			<?php 
				$valorPromo = $produto["valor"];
				$desconto = $produto["percentDesconto"];
				$valorDesconto = ($valorPromo*$desconto)/100;
				$valorTotal = $valorPromo - $valorDesconto;
			 ?>
			<a href="mostraProduto.php?idProd=<?=$produto["codProduto"]?>"><h3>De <?php echo $produto["valor"]; ?> R$ POR <?php echo $valorTotal; ?> R$</h3></br></a>
			<input type="hidden" name="idProd" value="<?=$produto["codProduto"]?>">
			<input type="hidden" name="quantidade" value="1">
			<input type="submit" value="Adcionar ao carrinho" name="addCarrinho">
		</form>
			<?php }
		}  ?>