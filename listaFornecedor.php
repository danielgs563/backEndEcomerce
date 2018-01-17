<?php 
	include("functions.php");
	include("localizaFornecedor.php");
	echo $_SESSION['idDoProduto'];
 ?>
<?php 
	if(isset($_POST["pesquisaFornNome"])){
		$nomForn = $_POST["nomeForn"];
		$resultado = selectFornecedorNome($nomForn);
		foreach ($resultado as $produto) { ?>
		<form name="alterarFornecedor" action="listaFornecedor.php" method="POST">
	<table border="1">
		<tbody>
			<tr>
				<td>Nome do fornecedor: </td>
				<td><input type="text" name="tipoProd" value="<?=$produto["nomeEmp"]?>" size="20"></td>
				<input type="hidden" name="idForn" value="<?=$produto["idFornecedor"]?>">
				<td><input type="submit" value="Cadastrar entrada estoque deste fornecedor" name="cadastraEntrada"></td>
			</tr>
		</tbody>
	</table>
</form><?php
	}
	}
	else if(isset($_POST["pesquisaFornLogr"])){
		$logrForn = $_POST["logradouroForn"];
		$resultado = selectFornecedorLogradouro($logrForn);
		foreach ($resultado as $produto) { ?>
		<form name="alterarFornecedor" action="listaFornecedor.php" method="POST">
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
	else if(isset($_POST["pesquisaFornBairr"])){
		$cepForne = $_POST["bairroForn"];
		$resultado = selectFornecedorBairro($cepForne);
		foreach ($resultado as $produto) { ?>
		<form name="alterarFornecedor" action="listaFornecedor.php" method="POST">
	<table border="1">
		<tbody>
			<tr>
				<td>Nome do fornecedor: </td>
				<td><input type="text" name="tipoProd" value="<?=$produto["nomeEmp"]?>" size="20"></td>
			</tr>
			<tr>
				<td>Bairro: </td>
				<td><input type="text" name="especProd" value="<?=$produto["bairro"]?>" size="20"></td>
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
	else if(isset($_POST["pesquisaFornCEP"])){
		$telefForn = $_POST["cepForn"];
		$resultado = selectFornecedorCEP($telefForn);
		foreach ($resultado as $produto) { ?>
		<form name="alterarFornecedor" action="listaFornecedor.php" method="POST">
	<table border="1">
		<tbody>
			<tr>
				<td>Nome do fornecedor: </td>
				<td><input type="text" name="tipoProd" value="<?=$produto["nomeEmp"]?>" size="20"></td>
			</tr>
			<tr>
				<td>CEP: </td>
				<td><input type="number" name="telForn" value="<?=$produto["cep"]?>" size="20"></td>
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
else if(isset($_POST["pesquisaFornDDD"])){
		$emailForn = $_POST["dddForn"];
		$resultado = selectFornecedorDDD($emailForn);
		foreach ($resultado as $produto) { ?>
		<form name="alterarFornecedor" action="listaFornecedor.php" method="POST">
	<table border="1">
		<tbody>
			<tr>
				<td>Nome do fornecedor: </td>
				<td><input type="text" name="tipoProd" value="<?=$produto["nomeEmp"]?>" size="20"></td>
			</tr>
			<tr>
				<td>DDD: </td>
				<td><input type="text" name="emailForn" value="<?=$produto["ddd"]?>" size="20"></td>
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
else if(isset($_POST["pesquisaFornTel"])){
		$emailForn = $_POST["telefoneForn"];
		$resultado = selectFornecedorTelefone($emailForn);
		foreach ($resultado as $produto) { ?>
		<form name="alterarFornecedor" action="listaFornecedor.php" method="POST">
	<table border="1">
		<tbody>
			<tr>
				<td>Nome do fornecedor: </td>
				<td><input type="text" name="tipoProd" value="<?=$produto["nomeEmp"]?>" size="20"></td>
			</tr>
			<tr>
				<td>Telefone: </td>
				<td><input type="text" name="emailForn" value="<?=$produto["telefone"]?>" size="20"></td>
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
else if(isset($_POST["pesquisaFornEmail"])){
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
//*****************************************************************************************************
if(isset($_POST["cadastraEntrada"])){
 	?><form name="cadastraEntradaNom" action="functions.php" method="POST">
	<table border="1">
		<tbody>
			<tr>
				<td>Quantidade: </td>
				<td><input type="number" name="quantidade" values=""></td>
			</tr>
			<tr>
				<td>Data da entrada: </td>
				<td><input type="date" name="dataFinal" values=""></td>
			</tr>
			<tr>
				<?php 
					$idForn = $_POST["idForn"];
					$_SESSION['idDoFornecedor'] = $idForn;
				 ?>
				<td><input type="submit" value="Cadastrar Entrada" name="cadastrarEntrada"></td>
			</tr>
		</tbody>
	</table>
</form>
<?php } ?>