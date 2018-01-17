<?php  
	include("functions.php");
	$usuarioLogado = $_SESSION["idPessoa"];
	$endereco = selectEndPessoa($usuarioLogado);
	
?>

<form name="cadastrarEndereco" action="functions.php" method="POST">
	<table border="1">
		<tbody>
			<tr>
				<td>Logradouro: </td>
				<td><input type="text" name="logradouro" values=""></td>
			</tr>
			<tr>
				<td>Número: </td>
				<td><input type="number" name="numero" values=""></td>
			</tr>
			<tr>
				<td>Bairro: </td>
				<td><input type="text" name="bairro" values=""></td>
			</tr>
			<tr>
				<td>Complemento: </td>
				<td><input type="text" name="complemento" values=""></td>
			</tr>
			<tr>
				<td>CEP: </td>
				<td><input type="number" name="cep" values=""></td>
			</tr>
			<tr>
				<td><input type="submit" value="Cadastrar" name="cadastrarEnd"></td>
			</tr>
		</tbody>
	</table>
</form>


	<?php 
	if ($endereco != 0) {
			foreach ($endereco as $pessoa) { ?>
		<form name="cadastrarEndereco" action="functions.php" method="POST">
	<table border="1">
		<tbody>
			<tr>
				<td>Logradouro: </td>
				<td><input type="text" name="logradouro" value="<?=$pessoa["logradouro"]?>" size="20"></td>
			</tr>
			<tr>
				<td>Número: </td>
				<td><input type="text" name="numero" value="<?=$pessoa["numero"]?>"></td>
			</tr>
			<tr>
				<td>Bairro: </td>
				<td><input type="text" name="bairro" value="<?=$pessoa["bairro"]?>"</td>
			</tr>
			<tr>
				<td>Complemento: </td>
				<td><input type="text" name="complemento" value="<?=$pessoa["complemento"]?>"</td>
			</tr>
			<tr>
				<td>CEP: </td>
				<td><input type="text" name="cep" value="<?=$pessoa["cep"]?>"</td>
			</tr>
			<tr>
				<input type="hidden" name="id" value="<?=$pessoa["codEndPessoa"]?>">
				<td><input type="submit" value="Alterar" name="alterarEnd"></td>


			</tr>
		</tbody>
	</table>
</form>
			
		 
	
<?php } } ?>
<a href="index.php">Voltar página inicial</a>