<form name="cadastrarFornecedor" action="functions.php" method="POST">
	<table border="1">
		<tbody>

			<tr>
				<td>Nome da empresa: </td>
				<td><input type="text" name="nome" values=""></td>
			</tr>
			<tr><td>-------------Endereço--------------</td></tr>
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
			<tr><td>----------Contato------------------</td></tr>	
			<tr>
				<td>DDD: </td>
				<td><input type="number" name="ddd" values=""></td>
			</tr>
			<tr>
				<td>Telefone: </td>
				<td><input type="number" name="telefone" values=""></td>
			</tr>
			<tr>
				<td>Email: </td>
				<td><input type="text" name="email" values=""></td>
			</tr>
			<tr>
				<td><input type="submit" value="Cadastrar" name="cadastrarFornecedor"></td>
			</tr>
		</tbody>
	</table>
</form>
<a href="painelAdm.php">Voltar</a>