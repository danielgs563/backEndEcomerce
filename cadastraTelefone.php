<?php 
	include("functions.php");
	$usuarioLogado = $_SESSION["idPessoa"];
	$telefone = selectTelPessoa($usuarioLogado);
?>
<form name="cadastrarTelefone" action="functions.php" method="POST">
	<table border="1">
		<tbody>
			<tr>
				<td>DDD: </td>
				<td><input type="number" name="ddd" values=""></td><!-- name vai pro banco, tr td é tabela -->
			</tr>
			<tr>
				<td>Telefone/Celular: </td>
				<td><input type="number" name="telefone" values=""></td>
			</tr>
			<tr>
				<td><input type="submit" value="Cadastrar" name="cadastrarTel"></td>
			</tr>
		</tbody>
	</table>
</form>

	<?php 
	if ($telefone != 0) {
	
			foreach ($telefone as $pessoa) { ?>
		<form name="alterarTelefone" action="functions.php" method="POST">
	<table border="1">
		<tbody>
			<tr>
				<td>DDD: </td>
				<td><input type="text" name="ddd" value="<?=$pessoa["DDD"]?>" size="20"></td>
			</tr>
			<tr>
				<td>Telefone: </td>
				<td><input type="text" name="numero" value="<?=$pessoa["telefone"]?>"></td>
			</tr>
			<tr>
				<input type="hidden" name="id" value="<?=$pessoa["codTelPessoa"]?>">
				<td><input type="submit" value="Alterar" name="alterarTel"></td>


			</tr>
		</tbody>
	</table>
</form>
			
		 
	
<?php } } ?>
<a href="index.php">Voltar página inicial</a>