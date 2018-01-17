<?php 
	include("functions.php") ;
	$usuarioLogado = $_SESSION["idPessoa"];
	$pessoa = selectIdPessoa($usuarioLogado);
	$fotoAtual = $pessoa["foto"];
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="UTF-8">
	<title>Loja Comp 3</title>
	<link rel="stylesheet" href="arquivo.css">
</head>
<body>
	<center>
	<form name = "dadosPessoa" action="functions.php" method = "POST"  enctype="multipart/form-data">

 	<table border="1">
 		<tbody>
 			<?php 
 				$fotoAtual = $pessoa["foto"];
 			 ?>
 			<tr>
 			</tr>
 			<tr>
 				<td>Nome:</td>
 				<td><input type="text" name="nome" value="<?=$pessoa["nome"]?>" size="20"></td>
 			</tr>
 			<tr>
 				<td>CPF:</td>
 				<td><input type="number" name="cpf" value="<?=$pessoa["CPF"]?>"></td>
 			</tr>
 			<tr>
 				<td>RG:</td>
 				<td><input type="text" name="rg" value="<?=$pessoa["RG"]?>" size="20"></td>
 			</tr>
 			<tr>
 				<td>Nascimento:</td>
 				<td><input type="date" name="dataNasc" value="<?=$pessoa["dataNasc"]?>" size="20"></td>
 			</tr>
 			<tr>
 				<td>Email:</td>
 				<td><input type="text" name="email" value="<?=$pessoa["email"]?>" size="20"></td>
 			</tr>
 			<tr>
 				<td>Senha:</td>
 				<td><input type="text" name="senha" value="<?=$pessoa["senha"]?>" size="20"></td>
 			</tr>
 			<tr>
 				<div class="tres">
 					<img src="fotos/<?php echo $fotoAtual; ?>" height="108px" width="108px">
 				</div>
 			</tr>
 			<tr>
 				Nova Foto: <input type="file" name="foto">
 			</tr>
 			<tr>
 				<input type="hidden" name="nomeFotoAtual" value="<?=$fotoAtual?>">
 				<td><input type="submit" value="Alterar" name="Alterar"></td>
 			</tr>
 		</tbody>
 	</table>
 </form>
</br>
</br>
<a href="cadastraEndereco.php">Endereço</a>
<a href="cadastraTelefone.php">Telefone</a>
</br>
<a href="index.php">Voltar</a>
</center>
</body>
</html>
