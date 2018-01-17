<?php 
include("pagamento.php");
$usuarioLogado = $_SESSION["idPessoa"];
$endereco = selectEndPessoa($usuarioLogado);

		if($endereco != 0){
			echo "<h2>Selecione o endereço da entrega: </h2>";
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
				<td><input type="submit" value="Entregar neste endereço" name="finalizaPedido"></td>
			</form>
				<?php 
		}

		}		else{
		echo "<script>alert('Favor, cadastrar um endereço antes.');</script>";
		echo("<script type='text/javascript'>location.href='cadastraEndereco.php';</script>");

}