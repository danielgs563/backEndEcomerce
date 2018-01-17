<?php 
	include("functions.php");
	$produtos = listaTodosProdutos();
 ?>
 <?php 
			foreach ($produtos as $produto) { ?>
		<form name="alterarProduto" action="functions.php" method="POST">
	<table border="1">
		<tbody>
			<tr>
				<td>Nome do produto: </td>
				<td><input type="text" name="nomeProd" value="<?=$produto["nomeProduto"]?>"></td>
			</tr>
			<tr>
				<td>Valor </td>
				<td><input type="number" name="valorProd" value="<?=$produto["valor"]?>" size="20"></td>
			</tr>
			<tr>
				<input type="hidden" name="idProd" value="<?=$produto["codProduto"]?>">
				<td><input type="submit" value="Alterar" name="alterarProd"></td>


			</tr>
		</tbody>
	</table>
</form>
			
		 
	
<?php } ?>