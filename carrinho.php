<?php 
	include("functions.php");
	$vetorProduto = $_SESSION['ArrProduto'];
	$quantidade = $_SESSION['ArrayQuantidade'];
	$tamanho = $_SESSION['Tamanho'];
	$_SESSION['valorTotal'] = 0;
	$_SESSION['economizando'] = 0;
 ?>
<table border="1">
<tbody>
	<tr>
		<td>Produtos</td>
		<td>Quantidade</td>
		<td>Unitário</td>
		<td>Total</td>
	</tr>
 <?php 

 	for ($i=0; $i < $tamanho; $i++) {
 		$vetorProduto = $_SESSION['ArrProduto'];
		$quantidade = $_SESSION['ArrayQuantidade'];
		$valorDo = $i;
		if (array_key_exists($valorDo, $vetorProduto)) {
 		$produtoId = $vetorProduto[$i];
 		$resultado = selectProdutoIdTd($produtoId);
 		$quantidadee =  $quantidade[$i];
 		foreach ($resultado as $produto) { 
 			$data = date('Y-m-d');
			$de = date('Y-m-d', strtotime($produto["dataInicioPromo"]));
			$ate = date('Y-m-d', strtotime($produto["dataFimPromo"]));
			if($data >= $de && $data <= $ate){?> 
						<form name="attQuantidade"action="functions.php" method="POST" enctype="multipart/form-data">
						<tr>
							<td><img src="fotos/<?php echo $produto["fotoUm"]; ?>" height="108px" width="108px">
							<?php echo $produto["nomeProduto"]; ?></td>
							<td><input type="number" name="attQuantidade" value="<?=$quantidade[$i];?>" size="20" min="1"></br>
							<input type="hidden" name="valorDoI" value="<?=$valorDo;?>">
							<input type="submit" name="attQuant" value="Atualizar">
							<input type="submit" name="excluirProd" value="Excluir"></td>
							<?php 
								$valorPromo = $produto["valor"];
								$valorSemDesconto = $valorPromo * $quantidade[$i];
								$desconto = $produto["percentDesconto"];
								$valorDesconto = ($valorPromo*$desconto)/100;
								$valorTotal = $valorPromo - $valorDesconto;
								$valorTotalQnt = $quantidade[$i] * $valorTotal;
								$_SESSION['valorTotal'] = $_SESSION['valorTotal'] + $valorTotalQnt;
								$_SESSION['economizando'] = $_SESSION['economizando'] + $valorSemDesconto - $valorTotalQnt;
							 ?>
							<td>De <?php echo $produto["valor"]; ?> R$ POR <?php echo $valorTotal; ?> R$</td>
							<td><?php echo $valorTotalQnt; ?> R$</td>
						</tr>
						</form>



			<?php } 
			else{?>
					<form name="attQuantidade"action="functions.php" method="POST" enctype="multipart/form-data">
						<tr>
							<td><img src="fotos/<?php echo $produto["fotoUm"]; ?>" height="108px" width="108px">
							<?php echo $produto["nomeProduto"]; ?></td>
							<td><input type="number" name="attQuantidade" value="<?=$quantidade[$i];?>" size="20" min="1"></br>
							<input type="hidden" name="valorDoI" value="<?=$valorDo;?>">
							<input type="submit" name="attQuant" value="Atualizar">
							<input type="submit" name="excluirProd" value="Excluir"></td>
							<?php 
								$valorPromo = $produto["valor"];
								$desconto = $produto["percentDesconto"];
								$valorDesconto = ($valorPromo*$desconto)/100;
								$valorTotal = $valorPromo - $valorDesconto;
								$valorTotalQnt = $quantidade[$i] * $valorTotal;
								$_SESSION['valorTotal'] = $_SESSION['valorTotal'] + $valorTotalQnt;
							 ?>

							<td><?php echo $valorTotal; ?> R$</td>

							<td><?php echo $valorTotalQnt; ?> R$</td>
						</tr>
					</form>
			<?php }
 		}
 	}
 }
 echo "<h3>Valor Total: ".$_SESSION['valorTotal']."R$</h3>";
 echo "<h3>Você está economizando: ".$_SESSION['economizando']."R$</h3>";

  ?>
</tbody>
</table>







</br></br>
<a href="index.php">Continuar Comprando</a></br></br>
<a href="pagamento.php">Finalizar compra</a> -->
