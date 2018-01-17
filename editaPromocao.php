<?php 
	include("functions.php");
	include("editaPromo.php");
 ?>
<?php 
	if(isset($_POST["nomeProd"])){
		$nomProduto = $_POST["nomeProd"];
		$resultado = selectProdutoNomePro($nomProduto);
		if($resultado != 0){
		foreach ($resultado as $produto) { ?>
		<form name="alterarPromo" action="editaPromocaoFim.php" method="POST">
	<table border="1">
		<tbody><tr>
				<td>Nome do produto: </td>
				<td><input type="text" name="nomeProdd" value="<?=$produto["nomeProduto"]?>" readonly="readonly"></td>
			</tr>
			<tr>
				<input type="hidden" name="idProd" value="<?=$produto["codProduto"]?>">
				<td><input type="submit" value="Editar promoção deste produto" name="nomeProdo"></td>
			</tr>
		</tbody>
		</table>
		</form>
	<?php } }else {echo "Não encontrado";}}
	else if (isset($_POST["marcaProd"])) {
		$marcProduto = $_POST["marcaProd"];
		$resultado = selectProdutoMarcaPro($marcProduto);
		if($resultado != 0){
		foreach ($resultado as $produto) { ?>
		<form name="alterarPromo" action="editaPromocaoFim.php" method="POST">
	<table border="1">
		<tbody><tr>
				<td>Marca:  </td>
				<td><input type="text" name="marcaProdd" value="<?=$produto["marca"]?>" size="20" readonly="readonly"></td>
			</tr>
			<tr>
				<td>Nome do produto: </td>
				<td><input type="text" name="nomeProd" value="<?=$produto["nomeProduto"]?>" readonly="readonly"></td>
			</tr>
			<tr>
				<input type="hidden" name="idProd" value="<?=$produto["codProduto"]?>">
				<td><input type="submit" value="Editar promoção deste produto" name="marcaProdo"></td>
			</tr>
		</tbody>
		</table>
		</form>
	<?php
	} }else {echo "Não encontrado";}}
	else if(isset($_POST["tipoProd"])){
		$tipProduto = $_POST["tipoProd"];
		$resultado = selectProdutoTipoPro($tipProduto);
		if($resultado != 0){
		foreach ($resultado as $produto) { ?>
		<form name="alterarPromo" action="editaPromocaoFim.php" method="POST">
	<table border="1">
		<tbody><tr>
				<td>Tipo </td>
				<td><input type="text" name="tipoProdd" value="<?=$produto["tipo"]?>" size="20" readonly="readonly"></td>
			</tr>
			<tr>
				<td>Nome do produto: </td>
				<td><input type="text" name="nomeProd" value="<?=$produto["nomeProduto"]?>" readonly="readonly"></td>
			</tr>
			<tr>
				<input type="hidden" name="idProd" value="<?=$produto["codProduto"]?>">
				<td><input type="submit" value="Editar promoção deste produto" name="tipoProdo"></td>
			</tr>
		</tbody>
		</table>
		</form>
	<?php
	} }else {echo "Não encontrado";}}
	else if(isset($_POST["idProd"])){
		$idProduto = $_POST["idProd"];
		$resultado = selectProdutoIDPro($idProduto);
		if($resultado != 0){
		foreach ($resultado as $produto) { ?>
		<form name="alterarPromo" action="editaPromocaoFim.php" method="POST">
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
				<td><input type="submit" value="Editar promoção deste produto" name="editaPromo"></td>
			</tr>
		</tbody>
		</table>
		</form>
	<?php
	} }else {echo "Não encontrado";}}
	else if(isset($_POST["valorProd"])){
		$valProduto = $_POST["valorProd"];
		$resultado = selectProdutoValorPro($valProduto);
		if($resultado != 0){
		foreach ($resultado as $produto) { ?>
		<form name="alterarPromo" action="editaPromocaoFim.php" method="POST">
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
				<td><input type="submit" value="Editar promoção deste produto" name="valorProdo"></td>
			</tr>
		</tbody>
		</table>
		</form>
	<?php
	} }else {echo "Não encontrado";}}
	else if(isset($_POST["descProd"])){
		$descProduto = $_POST["descProd"];
		$resultado = selectProdutoDescricaoPro($descProduto);
		if($resultado != 0){
		foreach ($resultado as $produto) { ?>
		<form name="alterarPromo" action="editaPromocaoFim.php" method="POST">
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
				<td><input type="submit" value="Editar promoção deste produto" name="descProdo"></td>
			</tr>
		</tbody>
		</table>
		</form>
	<?php
	} }else {echo "Não encontrado";}}
	else if(isset($_POST["espProd"])){
		$espProduto = $_POST["espProd"];
		$resultado = selectEspecTecnicaPro($espProduto);
		if($resultado != 0){
		foreach ($resultado as $produto) { ?>
		<form name="alterarPromo" action="editaPromocaoFim.php" method="POST">
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
				<td><input type="submit" value="Editar promoção deste produto" name="espProdo"></td>
			</tr>
		</tbody>
		</table>
		</form>
	<?php
	} }else {echo "Não encontrado";}}
 