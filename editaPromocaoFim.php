<?php 
	include("editaPromocao.php");
 ?>
 <?php 
if (isset($_POST["nomeProdo"])) {
	$nomProduto = $_POST["nomeProdd"];
	$resultado = selectProdutoNome($nomProduto);
}
else if (isset($_POST["marcaProdo"])) {
	$marcProduto = $_POST["marcaProdd"];
	$resultado = selectProdutoMarca($marcProduto); 
}
else if (isset($_POST["tipoProdo"])) {
	$tipProduto = $_POST["tipoProdd"];
	$resultado = selectProdutoTipo($tipProduto);
}
else if (isset($_POST["editaPromo"])) {
	$idProduto = $_POST["idprod"];
	$resultado = selectProdutoID($idProduto);
}
else if (isset($_POST["valorProdo"])) {
	$valProduto = $_POST["valorProd"];
	$resultado = selectProdutoValor($valProduto);
}
else if (isset($_POST["descProdo"])) {
	$descProduto = $_POST["descProd"];
	$resultado = selectProdutoDescricao($descProduto);
}
else if (isset($_POST["espProdo"])) {
	$espProduto = $_POST["especProd"];
	$resultado = selectEspecTecnica($espProduto);
}
  ?>




<?php 


  //***********************************lista os produtos pra cima**************
	foreach ($resultado as $pessoa) { ?>
		<form name="alterarPromocao" action="functions.php" method="POST">
	<table border="1">
		<tbody>
			<tr>
				<td>Percentual Desconto: </td>
				<td><input type="number" name="percent" value="<?=$pessoa["percentDesconto"]?>" size="20"></td>
			</tr>
			<tr>
				<td>Data Inicial: </td>
				<td><input type="date" name="dataIni" value="<?=$pessoa["dataInicioPromo"]?>"></td>
			</tr>
			<tr>
				<td>Data Final: </td>
				<td><input type="date" name="dataFim" value="<?=$pessoa["dataFimPromo"]?>"></td>
			</tr>
			<tr>
				<input type="hidden" name="id" value="<?=$pessoa["codProduto"]?>">
				<td><input type="submit" value="Alterar" name="editaPromo"></td>


			</tr>
		</tbody>
	</table>
</form>


<?php }
 
?>