<?php 
	include("functions.php");
	include("redirecionaAltProd.php");
 ?>
<?php 
	if(isset($_POST["nomeProd"])){
		$nomProduto = $_POST["nomeProd"];
		$resultado = selectProdutoNome($nomProduto);
		}
	else if (isset($_POST["marcaProd"])) {
		$marcProduto = $_POST["marcaProd"];
		$resultado = selectProdutoMarca($marcProduto);
	}
	else if(isset($_POST["tipoProd"])){
		$tipProduto = $_POST["tipoProd"];
		$resultado = selectProdutoTipo($tipProduto);
	}
	else if(isset($_POST["idProd"])){
		$idProduto = $_POST["idProd"];
		$resultado = selectProdutoID($idProduto);
	}
	else if(isset($_POST["valorProd"])){
		$valProduto = $_POST["valorProd"];
		$resultado = selectProdutoValor($valProduto);
	}
	else if(isset($_POST["descProd"])){
		$descProduto = $_POST["descProd"];
		$resultado = selectProdutoDescricao($descProduto);
	}
	else if(isset($_POST["espProd"])){
		$espProduto = $_POST["espProd"];
		$resultado = selectEspecTecnica($espProduto);
	}
 ?>
 <?php 
 	if ($resultado != 0) {
			foreach ($resultado as $produto) { 
				$fotoUm = $produto["fotoUm"];
				$fotoDois = $produto["fotoDois"];
				$fotoTres = $produto["fotoTres"];
				$fotoQuatro = $produto["fotoQuatro"];
	?>
		<form name="alterarProduto" action="functions.php" method="POST" enctype="multipart/form-data">
	<table border="1">
		<tbody>
			<tr>
				<td>Tipo </td>
				<td><input type="text" name="tipoProd" value="<?=$produto["tipo"]?>" size="20"></td>
			</tr>
			<tr>
				<td>Nome do produto: </td>
				<td><input type="text" name="nomeProd" value="<?=$produto["nomeProduto"]?>"></td>
			</tr>
			<tr>
				<td>Marca:  </td>
				<td><input type="text" name="marcaProd" value="<?=$produto["marca"]?>" size="20"></td>
			</tr>
			<tr>
				<td>Valor </td>
				<td><input type="number" name="valorProd" value="<?=$produto["valor"]?>" size="20" step=0.01></td>
			</tr>
			<tr>
				<td>Descrição: </td>
				<td><input type="text" name="descProd" value="<?=$produto["descricao"]?>" size="20"></td>
			</tr>
			<tr>
				<td>Especificação: </td>
				<td><input type="text" name="especProd" value="<?=$produto["especTecnica"]?>" size="20"></td>
			</tr>
			<tr>
 					<td><img src="fotos/<?php echo $fotoUm; ?>" height="108px" width="108px">
 					Nova Foto: <input type="file" name="fotoUmAlt"></td>
 			</tr>
 			<tr>
 					<td><img src="fotos/<?php echo $fotoDois; ?>" height="108px" width="108px">
 					Nova Foto: <input type="file" name="fotoDoisAlt"></td>
 			</tr>
 			<tr>
 					<td><img src="fotos/<?php echo $fotoTres; ?>" height="108px" width="108px">
 					Nova Foto: <input type="file" name="fotoTresAlt"></td>
 			</tr>
 			<tr>
 					<td><img src="fotos/<?php echo $fotoQuatro; ?>" height="108px" width="108px">
 					Nova Foto: <input type="file" name="fotoQuatroAlt"></td>
 			</tr>
			<tr>
				<input type="hidden" name="idProd" value="<?=$produto["codProduto"]?>">
				<td><input type="submit" value="Alterar" name="alterarProd"></td>


			</tr>
		</tbody>
	</table>
</form>
			
		 
	
<?php } }
else{
	echo "Não encontrado";
}?>