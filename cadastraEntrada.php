<?php 
	include("functions.php");
	include("encontraFornecedor.php");
 ?>
<?php 
	if(isset($_POST["nomeForn"])){
		$nomForn = $_POST["nomeForn"];
		$idProduto = $_POST["idProduto"];
		echo $idProduto;
		$resultado = selectFornecedorNome($nomForn);
		foreach ($resultado as $produto) { ?>
		<form name="alterarFornecedor" action="cadastraEntrada.php" method="POST">
	<table border="1">
		<tbody>
			<tr>
				<td><?php echo $idProduto; ?></td>
				<td>Nome do fornecedor: </td>
				<td><input type="text" name="tipoProd" value="<?=$produto["nomeEmp"]?>" size="20"></td>
			</tr>
			<tr>
				<input type="hidden" name="idForn" value="<?=$produto["idFornecedor"]?>">
				<td><input type="submit" value="Cadastrar entrada estoque deste fornecedor" name="cadastraEntrada"></td>
			</tr>
		</tbody>
	</table>
</form><?php
	}
	}
	else if (isset($_POST["cidadeForn"])) {
		$cidadeForn = $_POST["cidadeForn"];
		$resultado = selectFornecedorCidade($cidadeForn);
		foreach ($resultado as $produto) { ?>
		<form name="alterarFornecedor" action="cadastraEntrada.php" method="POST">
	<table border="1">
		<tbody>
			<tr>
				<td>Nome do fornecedor: </td>
				<td><input type="text" name="tipoProd" value="<?=$produto["nomeEmp"]?>" size="20"></td>
			</tr>
			
			<tr>
				<input type="hidden" name="idForn" value="<?=$produto["idFornecedor"]?>">
				<td><input type="submit" value="Cadastrar entrada estoque deste fornecedor" name="cadastraEntrada"></td>


			</tr>
		</tbody>
	</table>
</form><?php
	}
	}
	else if(isset($_POST["logradouroForn"])){
		$logrForn = $_POST["logradouroForn"];
		$resultado = selectFornecedorLogradouro($logrForn);
		foreach ($resultado as $produto) { ?>
		<form name="alterarFornecedor" action="cadastraEntrada.php" method="POST">
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
				<input type="hidden" name="idForn" value="<?=$produto["idFornecedor"]?>">
				<td><input type="submit" value="Cadastrar entrada estoque deste fornecedor" name="cadastraEntrada"></td>


			</tr>
		</tbody>
	</table>
</form><?php
	}
	}
	else if(isset($_POST["cepForn"])){
		$cepForne = $_POST["cepForn"];
		$resultado = selectFornecedorCEP($cepForne);
		foreach ($resultado as $produto) { ?>
		<form name="alterarFornecedor" action="cadastraEntrada.php" method="POST">
	<table border="1">
		<tbody>
			<tr>
				<td>Nome do fornecedor: </td>
				<td><input type="text" name="tipoProd" value="<?=$produto["nomeEmp"]?>" size="20"></td>
			</tr>
			<tr>
				<td>CEP: </td>
				<td><input type="number" name="especProd" value="<?=$produto["cep"]?>" size="20"></td>
			</tr><tr>
				<td>Telefone: </td>
				<td><input type="number" name="telForn" value="<?=$produto["telefone"]?>" size="20"></td>
			</tr>
			<tr>
				<input type="hidden" name="idForn" value="<?=$produto["idFornecedor"]?>">
				<td><input type="submit" value="Cadastrar entrada estoque deste fornecedor" name="cadastraEntrada"></td>


			</tr>
		</tbody>
	</table>
</form><?php
	}
	}
	else if(isset($_POST["telefoneForn"])){
		$telefForn = $_POST["telefoneForn"];
		$resultado = selectFornecedorTelefone($telefForn);
		foreach ($resultado as $produto) { ?>
		<form name="alterarFornecedor" action="cadastraEntrada.php" method="POST">
	<table border="1">
		<tbody>
			<tr>
				<td>Nome do fornecedor: </td>
				<td><input type="text" name="tipoProd" value="<?=$produto["nomeEmp"]?>" size="20"></td>
			</tr>
			<tr>
				<td>Telefone: </td>
				<td><input type="number" name="telForn" value="<?=$produto["telefone"]?>" size="20"></td>
			</tr>
			<tr>
				<input type="hidden" name="idForn" value="<?=$produto["idFornecedor"]?>">
				<td><input type="submit" value="Cadastrar entrada estoque deste fornecedor" name="cadastraEntrada"></td>


			</tr>
		</tbody>
	</table>
</form><?php
	}
	}
	else if(isset($_POST["emailForn"])){
		$emailForn = $_POST["emailForn"];
		$resultado = selectFornecedorEmail($emailForn);
		foreach ($resultado as $produto) { ?>
		<form name="alterarFornecedor" action="cadastraEntrada.php" method="POST">
	<table border="1">
		<tbody>
			<tr>
				<td>Nome do fornecedor: </td>
				<td><input type="text" name="tipoProd" value="<?=$produto["nomeEmp"]?>" size="20"></td>
			</tr>
			<tr>
				<td>Email: </td>
				<td><input type="text" name="emailForn" value="<?=$produto["email"]?>" size="20"></td>
			</tr>
			<tr>
				<input type="hidden" name="idForn" value="<?=$produto["idFornecedor"]?>">
				<td><input type="submit" value="Cadastrar entrada estoque deste fornecedor" name="cadastraEntrada"></td>


			</tr>
		</tbody>
	</table>
</form><?php
	}
	}
//************************************Localiza o fornecedor pra cima*************************************
if(isset($_POST["cadastraEntrada"])){
 	?><form name="cadastraEntradaNom" action="functions.php" method="POST">
	<table border="1">
		<tbody>
			<tr>
				<td>Quantidade: </td>
				<td><input type="number" name="dataIni" values=""></td>
			</tr>
			<tr>
				<td>Data da entrada: </td>
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