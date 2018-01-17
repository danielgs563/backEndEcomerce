<?php 
	include("functions.php");
	include("encontraProduto.php");
 ?>
<?php 
	if(isset($_POST["nomeProd"])){
		$nomProduto = $_POST["nomeProd"];
		$resultado = selectProdutoNomePro($nomProduto);
		foreach ($resultado as $produto) { ?>
		<form name="alterarProduto" action="localizaFornecedor.php" method="POST">
	<table border="1">
		<tbody><tr>
				<td>Nome do produto: </td>
				<td><input type="text" name="nomeProd" value="<?=$produto["nomeProduto"]?>" readonly="readonly"></td>
			</tr>
			<tr>
				<input type="hidden" name="idProd" value="<?=$produto["codProduto"]?>">
				<td><input type="submit" value="Cadastrar entrada deste produto" name="cadastraPromoNome"></td>
			</tr>
		</tbody>
		</table>
		</form>
	<?php } }
	else if (isset($_POST["marcaProd"])) {
		$marcProduto = $_POST["marcaProd"];
		$resultado = selectProdutoMarcaPro($marcProduto);
		foreach ($resultado as $produto) { ?>
		<form name="alterarProduto" action="localizaFornecedor.php" method="POST">
	<table border="1">
		<tbody><tr>
				<td>Marca:  </td>
				<td><input type="text" name="marcaProd" value="<?=$produto["marca"]?>" size="20" readonly="readonly"></td>
			</tr>
			<tr>
				<td>Nome do produto: </td>
				<td><input type="text" name="nomeProd" value="<?=$produto["nomeProduto"]?>" readonly="readonly"></td>
			</tr>
			<tr>
				<input type="hidden" name="idProd" value="<?=$produto["codProduto"]?>">
				<td><input type="submit" value="Cadastrar entrada deste produto" name="cadastraPromoMarca"></td>
			</tr>
		</tbody>
		</table>
		</form>
	<?php
	} }
	else if(isset($_POST["tipoProd"])){
		$tipProduto = $_POST["tipoProd"];
		$resultado = selectProdutoTipoPro($tipProduto);
		foreach ($resultado as $produto) { ?>
		<form name="alterarProduto" action="localizaFornecedor.php" method="POST">
	<table border="1">
		<tbody><tr>
				<td>Tipo </td>
				<td><input type="text" name="tipoProd" value="<?=$produto["tipo"]?>" size="20" readonly="readonly"></td>
			</tr>
			<tr>
				<td>Nome do produto: </td>
				<td><input type="text" name="nomeProd" value="<?=$produto["nomeProduto"]?>" readonly="readonly"></td>
			</tr>
			<tr>
				<input type="hidden" name="idProd" value="<?=$produto["codProduto"]?>">
				<td><input type="submit" value="Cadastrar entrada deste produto" name="cadastraPromoTipo"></td>
			</tr>
		</tbody>
		</table>
		</form>
	<?php
	} }
	else if(isset($_POST["idProd"])){
		$idProduto = $_POST["idProd"];
		$resultado = selectProdutoIDPro($idProduto);
		foreach ($resultado as $produto) { ?>
		<form name="alterarProduto" action="localizaFornecedor.php" method="POST">
	<table border="1">
		<tbody><tr>
				<td>ID do produto </td>
				<td><input type="text" name="idprod" value="<?=$produto["codProduto"]?>" size="20" readonly="readonly"></td>
			</tr>
			<tr>
				<td>Nome do produto: </td>
				<td><input type="text" name="nomeProd" value="<?=$produto["nomeProduto"]?>" readonly="readonly"></td>
			</tr>
			<tr>
				<input type="hidden" name="idProd" value="<?=$produto["codProduto"]?>">
				<td><input type="submit" value="Cadastrar entrada deste produto" name="cadastraPromoID"></td>
			</tr>
		</tbody>
		</table>
		</form>
	<?php
	} }
	else if(isset($_POST["valorProd"])){
		$valProduto = $_POST["valorProd"];
		$resultado = selectProdutoValorPro($valProduto);
		foreach ($resultado as $produto) { ?>
		<form name="alterarProduto" action="localizaFornecedor.php" method="POST">
	<table border="1">
		<tbody>
			<tr>
				<td>Valor </td>
				<td><input type="number" name="valorProd" value="<?=$produto["valor"]?>" size="20" readonly="readonly"></td>
			</tr>
			<tr>
				<td>Nome do produto: </td>
				<td><input type="text" name="nomeProd" value="<?=$produto["nomeProduto"]?>" readonly="readonly"></td>
			</tr>
			<tr>
				<input type="hidden" name="idProd" value="<?=$produto["codProduto"]?>">
				<td><input type="submit" value="Cadastrar entrada deste produto" name="cadastraPromoValor"></td>
			</tr>
		</tbody>
		</table>
		</form>
	<?php
	} }
	else if(isset($_POST["descProd"])){
		$descProduto = $_POST["descProd"];
		$resultado = selectProdutoDescricaoPro($descProduto);
		foreach ($resultado as $produto) { ?>
		<form name="alterarProduto" action="localizaFornecedor.php" method="POST">
	<table border="1">
		<tbody>
			<tr>
				<td>Descrição: </td>
				<td><input type="text" name="descProd" value="<?=$produto["descricao"]?>" size="20" readonly="readonly"></td>
			</tr>
			<tr>
				<td>Nome do produto: </td>
				<td><input type="text" name="nomeProd" value="<?=$produto["nomeProduto"]?>" readonly="readonly"></td>
			</tr>
			<tr>
				<input type="hidden" name="idProd" value="<?=$produto["codProduto"]?>">
				<td><input type="submit" value="Cadastrar entrada deste produto" name="cadastraPromoDescricao"></td>
			</tr>
		</tbody>
		</table>
		</form>
	<?php
	} }
	else if(isset($_POST["espProd"])){
		$espProduto = $_POST["espProd"];
		$resultado = selectEspecTecnicaPro($espProduto);
		foreach ($resultado as $produto) { ?>
		<form name="alterarProduto" action="localizaFornecedor.php" method="POST">
	<table border="1">
		<tbody>
			<tr>
				<td>Especificação: </td>
				<td><input type="text" name="especProd" value="<?=$produto["especTecnica"]?>" size="20" readonly="readonly"></td>
			</tr>
			<tr>
				<td>Nome do produto: </td>
				<td><input type="text" name="nomeProd" value="<?=$produto["nomeProduto"]?>" readonly="readonly"></td>
			</tr>
			<tr>
				<input type="hidden" name="idProd" value="<?=$produto["codProduto"]?>">
				<td><input type="submit" value="Cadastrar entrada deste produto" name="cadastraPromoEspecTec"></td>
			</tr>
		</tbody>
		</table>
		</form>
	<?php
	} }?>
