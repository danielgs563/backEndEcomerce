<?php 
	include("functions.php");
	include("encontraProduto.php");
 ?>
<?php 
	if(isset($_POST["nomeProd"])){
		$nomProduto = $_POST["nomeProd"];
		$resultado = selectProdutoNomePro($nomProduto);
		if ($resultado != 0) {
		foreach ($resultado as $produto) { ?>
		<form name="alterarProduto" action="cadastraPromocao.php" method="POST">
	<table border="1">
		<tbody><tr>
				<td>Nome do produto: </td>
				<td><input type="text" name="nomeProd" value="<?=$produto["nomeProduto"]?>" readonly="readonly"></td>
			</tr>
			<tr>
				<input type="hidden" name="idProd" value="<?=$produto["codProduto"]?>">
				<td><input type="submit" value="Cadastrar promoção deste produto" name="cadastraPromoNome"></td>
			</tr>
		</tbody>
		</table>
		</form>
	<?php } }else {echo"Não encontrado";}}
	else if (isset($_POST["marcaProd"])) {
		$marcProduto = $_POST["marcaProd"];
		$resultado = selectProdutoMarcaPro($marcProduto);
		if ($resultado != 0) {
		foreach ($resultado as $produto) { ?>
		<form name="alterarProduto" action="cadastraPromocao.php" method="POST">
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
				<td><input type="submit" value="Cadastrar promoção deste produto" name="cadastraPromoMarca"></td>
			</tr>
		</tbody>
		</table>
		</form>
	<?php
	} }else {echo"Não encontrado";}}
	else if(isset($_POST["tipoProd"])){
		$tipProduto = $_POST["tipoProd"];
		$resultado = selectProdutoTipoPro($tipProduto);
		if ($resultado != 0) {
		foreach ($resultado as $produto) { ?>
		<form name="alterarProduto" action="cadastraPromocao.php" method="POST">
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
				<td><input type="submit" value="Cadastrar promoção deste produto" name="cadastraPromoTipo"></td>
			</tr>
		</tbody>
		</table>
		</form>
	<?php
	} }else {echo"Não encontrado";}}
	else if(isset($_POST["idProd"])){
		$idProduto = $_POST["idProd"];
		$resultado = selectProdutoIDPro($idProduto);
		if ($resultado != 0) {
		foreach ($resultado as $produto) { ?>
		<form name="alterarProduto" action="cadastraPromocao.php" method="POST">
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
				<td><input type="submit" value="Cadastrar promoção deste produto" name="cadastraPromoID"></td>
			</tr>
		</tbody>
		</table>
		</form>
	<?php
	} }else {echo"Não encontrado";}}
	else if(isset($_POST["valorProd"])){
		$valProduto = $_POST["valorProd"];
		$resultado = selectProdutoValorPro($valProduto);
		if ($resultado != 0) {
		foreach ($resultado as $produto) { ?>
		<form name="alterarProduto" action="cadastraPromocao.php" method="POST">
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
				<td><input type="submit" value="Cadastrar promoção deste produto" name="cadastraPromoValor"></td>
			</tr>
		</tbody>
		</table>
		</form>
	<?php
	} }else {echo"Não encontrado";}}
	else if(isset($_POST["descProd"])){
		$descProduto = $_POST["descProd"];
		$resultado = selectProdutoDescricaoPro($descProduto);
		if ($resultado != 0) {
		foreach ($resultado as $produto) { ?>
		<form name="alterarProduto" action="cadastraPromocao.php" method="POST">
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
				<td><input type="submit" value="Cadastrar promoção deste produto" name="cadastraPromoDescricao"></td>
			</tr>
		</tbody>
		</table>
		</form>
	<?php
	} }else {echo"Não encontrado";}}
	else if(isset($_POST["espProd"])){
		$espProduto = $_POST["espProd"];
		$resultado = selectEspecTecnicaPro($espProduto);
		if ($resultado != 0) {
		foreach ($resultado as $produto) { ?>
		<form name="alterarProduto" action="cadastraPromocao.php" method="POST">
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
				<td><input type="submit" value="Cadastrar promoção deste produto" name="cadastraPromoEspecTec"></td>
			</tr>
		</tbody>
		</table>
		</form>
	<?php
	} }else {echo"Não encontrado";}}
 //***********************************lista os produtos pra cima**************
 if(isset($_POST["cadastraPromoNome"])){
 	?><form name="cadastrarPromocao" action="functions.php" method="POST">
	<table border="1">
		<tbody>
			<tr>
				<td>% de desconto: </td>
				<td><input type="number" name="percentDesconto" values=""></td>
			</tr>
			<tr>
				<td>Data inicial da promoção: </td>
				<td><input type="date" name="dataIni" values=""></td>
			</tr>
			<tr>
				<td>Data final da promoção: </td>
				<td><input type="date" name="dataFinal" values=""></td>
			</tr>
			<tr>
				<input type="hidden" name="idPromo" value="<?=$_POST["idProd"]?>">
				<td><input type="submit" value="CadastrarPromoção" name="cadastrarPromo"></td>
			</tr>
		</tbody>
	</table>
</form>
<?php
 }
 else if (isset($_POST["cadastraPromoMarca"])) {
 	?><form name="cadastrarPromocao" action="functions.php" method="POST">
	<table border="1">
		<tbody>
			<tr>
				<td>% de desconto: </td>
				<td><input type="number" name="percentDesconto" values=""></td>
			</tr>
			<tr>
				<td>Data inicial da promoção: </td>
				<td><input type="date" name="dataIni" values=""></td>
			</tr>
			<tr>
				<td>Data final da promoção: </td>
				<td><input type="date" name="dataFinal" values=""></td>
			</tr>
			<tr>
				<input type="hidden" name="idPromo" value="<?=$_POST["idProd"]?>">
				<td><input type="submit" value="CadastrarPromoção" name="cadastrarPromo"></td>
			</tr>
		</tbody>
	</table>
</form>
 <?php }
else if (isset($_POST["cadastraPromoTipo"])) {
 	?><form name="cadastrarPromocao" action="functions.php" method="POST">
	<table border="1">
		<tbody>
			<tr>
				<td>% de desconto: </td>
				<td><input type="number" name="percentDesconto" values=""></td>
			</tr>
			<tr>
				<td>Data inicial da promoção: </td>
				<td><input type="date" name="dataIni" values=""></td>
			</tr>
			<tr>
				<td>Data final da promoção: </td>
				<td><input type="date" name="dataFinal" values=""></td>
			</tr>
			<tr>
				<input type="hidden" name="idPromo" value="<?=$_POST["idProd"]?>">
				<td><input type="submit" value="CadastrarPromoção" name="cadastrarPromo"></td>
			</tr>
		</tbody>
	</table>
</form>
 <?php }
 else if (isset($_POST["cadastraPromoID"])) {
 	?><form name="cadastrarPromocao" action="functions.php" method="POST">
	<table border="1">
		<tbody>
			<tr>
				<td>% de desconto: </td>
				<td><input type="number" name="percentDesconto" values=""></td>
			</tr>
			<tr>
				<td>Data inicial da promoção: </td>
				<td><input type="date" name="dataIni" values=""></td>
			</tr>
			<tr>
				<td>Data final da promoção: </td>
				<td><input type="date" name="dataFinal" values=""></td>
			</tr>
			<tr>
				<input type="hidden" name="idPromo" value="<?=$_POST["idProd"]?>">
				<td><input type="submit" value="CadastrarPromoção" name="cadastrarPromo"></td>
			</tr>
		</tbody>
	</table>
</form>
 <?php }
 else if (isset($_POST["cadastraPromoValor"])) {
 	?><form name="cadastrarPromocao" action="functions.php" method="POST">
	<table border="1">
		<tbody>
			<tr>
				<td>% de desconto: </td>
				<td><input type="number" name="percentDesconto" values=""></td>
			</tr>
			<tr>
				<td>Data inicial da promoção: </td>
				<td><input type="date" name="dataIni" values=""></td>
			</tr>
			<tr>
				<td>Data final da promoção: </td>
				<td><input type="date" name="dataFinal" values=""></td>
			</tr>
			<tr>
				<input type="hidden" name="idPromo" value="<?=$_POST["idProd"]?>">
				<td><input type="submit" value="CadastrarPromoção" name="cadastrarPromo"></td>
			</tr>
		</tbody>
	</table>
</form>
 <?php }
 else if (isset($_POST["cadastraPromoDescricao"])) {
 	 	?><form name="cadastrarPromocao" action="functions.php" method="POST">
	<table border="1">
		<tbody>
			<tr>
				<td>% de desconto: </td>
				<td><input type="number" name="percentDesconto" values=""></td>
			</tr>
			<tr>
				<td>Data inicial da promoção: </td>
				<td><input type="date" name="dataIni" values=""></td>
			</tr>
			<tr>
				<td>Data final da promoção: </td>
				<td><input type="date" name="dataFinal" values=""></td>
			</tr>
			<tr>
				<input type="hidden" name="idPromo" value="<?=$_POST["idProd"]?>">
				<td><input type="submit" value="CadastrarPromoção" name="cadastrarPromo"></td>
			</tr>
		</tbody>
	</table>
</form>
 <?php }
 else if (isset($_POST["cadastraPromoEspecTec"])) {
 	 	?><form name="cadastrarPromocao" action="functions.php" method="POST">
	<table border="1">
		<tbody>
			<tr>
				<td>% de desconto: </td>
				<td><input type="number" name="percentDesconto" values=""></td>
			</tr>
			<tr>
				<td>Data inicial da promoção: </td>
				<td><input type="date" name="dataIni" values=""></td>
			</tr>
			<tr>
				<td>Data final da promoção: </td>
				<td><input type="date" name="dataFinal" values=""></td>
			</tr>
			<tr>
				<input type="hidden" name="idPromo" value="<?=$_POST["idProd"]?>">
				<td><input type="submit" value="CadastrarPromoção" name="cadastrarPromo"></td>
			</tr>
		</tbody>
	</table>
</form>
 <?php } ?>


