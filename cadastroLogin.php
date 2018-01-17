<?php session_start(); ?>
<form name="cadastrarPessoa" action="functions.php" method="POST">
	<table border="1">
		<tbody>
			<tr>
				<td>Nome: </td>
				<td><input type="text" name="nome" values=""></td><!-- name vai pro banco, tr td é tabela -->
			</tr>
			<tr>
				<td>CPF: </td>
				<td><input type="text" name="cpf" values=""></td>
			</tr>
			<tr>
				<td>RG: </td>
				<td><input type="text" name="rg" values=""></td>
			</tr>
			<tr>
				<td>Nascimento: </td>
				<td><input type="date" name="nascimento" values=""></td>
			</tr>
			<tr>
				<td>Email: </td>
				<td><input type="text" name="email" values=""></td>
			</tr>
			<tr>
				<td>Senha: </td>
				<td><input type="password" name="senha" values=""></td>
			</tr>
			<tr>
				<td><input type="submit" value="Cadastrar" name="Enviar"></td>
			</tr>
		</tbody>
	</table>
</form>
<form name="verificarLogin" action="functions.php" method="POST">
	<table border="1">
		<tbody>
			<tr>
				<td>Email: </td>
				<td><input type="text" name="emailLogin" values=""></td><!-- name vai pro banco, tr td é tabela -->
			</tr>
			<tr>
				<td>Senha: </td>
				<td><input type="password" name="senhaLogin" values=""></td><!-- name vai pro banco, tr td é tabela -->
			</tr>
			<tr>
				<td><input type="submit" value="Logar" name="Salvar"></td>
			</tr>
			</tbody>
	</table>
</form>