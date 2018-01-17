<?php 
	include("functions.php");
	include("encontraFornecedor.php");
 ?>
<?php 
	if(isset($_POST["nomeForn"])){
		$nomForn = $_POST["nomeForn"];
		$resultado = selectFornecedorNome($nomForn);
	}
	else if (isset($_POST["cidadeForn"])) {
		$cidadeForn = $_POST["cidadeForn"];
		$resultado = selectFornecedorCidade($cidadeForn);
	}
	else if(isset($_POST["logradouroForn"])){
		$logrForn = $_POST["logradouroForn"];
		$resultado = selectFornecedorLogradouro($logrForn);
	}
	else if(isset($_POST["cepForn"])){
		$cepForne = $_POST["cepForn"];
		$resultado = selectFornecedorCEP($cepForne);
	}
	else if(isset($_POST["telefoneForn"])){
		$telefForn = $_POST["telefoneForn"];
		$resultado = selectFornecedorTelefone($telefForn);
	}
	else if(isset($_POST["emailForn"])){
		$emailForn = $_POST["emailForn"];
		$resultado = selectFornecedorEmail($emailForn);
	}
 ?>
 <?php 
 		if ($resultado != 0) {
			foreach ($resultado as $produto) { ?>
		<form name="alterarFornecedor" action="functions.php" method="POST">
	<table border="1">
		<tbody>
			<tr>
				<td>Nome do fornecedor: </td>
				<td><input type="text" name="tipoProd" value="<?=$produto["nomeEmp"]?>" size="20"></td>
			</tr>
			<tr>
				<td>Logradouro: </td>
				<td><input type="text" name="nomeProd" value="<?=$produto["logradouroEmp"]?>"></td>
			</tr>
			<tr>
				<td>Número:  </td>
				<td><input type="text" name="marcaProd" value="<?=$produto["numeroEmp"]?>" size="20"></td>
			</tr>
			<tr>
				<td>Bairro </td>
				<td><input type="text" name="valorProd" value="<?=$produto["bairro"]?>" size="20"></td>
			</tr>
			<tr>
				<td>Complemento: </td>
				<td><input type="text" name="descProd" value="<?=$produto["complemento"]?>" size="20"></td>
			</tr>
			<tr>
				<td>CEP: </td>
				<td><input type="number" name="especProd" value="<?=$produto["cep"]?>" size="20"></td>
			</tr>
			<tr>
				<td>DDD: </td>
				<td><input type="number" name="dddForn" value="<?=$produto["ddd"]?>" size="20"></td>
			</tr>
			<tr>
				<td>Telefone: </td>
				<td><input type="number" name="telForn" value="<?=$produto["telefone"]?>" size="20"></td>
			</tr>
			<tr>
				<td>Email: </td>
				<td><input type="text" name="emailForn" value="<?=$produto["email"]?>" size="20"></td>
			</tr>
			<tr>
				<input type="hidden" name="idForn" value="<?=$produto["idFornecedor"]?>">
				<td><input type="submit" value="Alterar" name="alterarFornecedor"></td>


			</tr>
		</tbody>
	</table>
</form>
			
		 
	
<?php }} else{echo "Não encontrado";} ?>