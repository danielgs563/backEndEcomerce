<?php 
include("functions.php");
?>
<center>
<h1>Painel Administrativo</h1>
	<?php  
		
	if (isset($_SESSION["idPessoa"])) {
		$usuarioLogado = $_SESSION["idPessoa"];
		$nomePessoa = localizaNome($usuarioLogado);?>
		<a href="perfil.php"><h1>Bem Vindo <?php echo "$nomePessoa";?></h1></a>

		<form name="logout "action="functions.php" method="POST"> 
			<input type="submit" value="Logout" name="fazerLogout" /> 
		</form>
<?php } ?>
 ************************************************************************************** 
</br></br></br>
		<form name="gerenciaProduto"action="functions.php" method="POST"> 
			<input type="submit" value="Produtos" name="gerenciaProduto" /> 
		</form>
</br></br></br>
		<form name="gerenciaPromocao"action="functions.php" method="POST"> 
			<input type="submit" value="Promoção" name="gerenciaPromocao" /> 
		</form>
		</br></br></br>
		<form name="gerenciaFornecedor"action="functions.php" method="POST"> 
			<input type="submit" value="Gerenciar Fornecedores" name="gerenciaFornecedor" /> 
		</form>
</br></br></br>
		<form name="Adcionar entrada estoque"action="functions.php" method="POST"> 
			<input type="submit" value="Adcionar Entrada Estoque" name="entradaEstoque" /> 
		</form>
</br></br></br>