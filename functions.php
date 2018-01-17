<?php 
session_start(); 
define("SERVIDOR", "localhost");
define("USUARIO", "root");	
define("SENHA", "");					//dados do banco de dados
define("BANCO", "ecomerce");

function AbreConexao(){
	$con = new mysqli(SERVIDOR, USUARIO, SENHA, BANCO); //Conecta com o banco
	return $con;
}
if (isset($_POST["Enviar"]))
{
$nome = $_POST["nome"];
$cpf = $_POST["cpf"];
$rg = $_POST["rg"];			//Dados da página index
$nascimento = $_POST["nascimento"];
$email = $_POST["email"];
$senha = $_POST["senha"];
inserir($nome, $cpf, $rg, $nascimento, $email, $senha);		//chama função para cadastrar no banco
}
else if (isset($_POST["Salvar"]))
{
$email = $_POST["emailLogin"];
$senha = $_POST["senhaLogin"];
logar($email, $senha);
}
else if (isset($_POST["Alterar"])){
	$nome = $_POST["nome"];
	$cpf = $_POST["cpf"];
	$rg = $_POST["rg"];
	$nascimento = $_POST["dataNasc"];
	$email = $_POST["email"];
	$senha = $_POST["senha"];
	$novaFoto = $_FILES["foto"]["name"];
	$nomeFotoAtual = $_POST["nomeFotoAtual"];
	alterarDados($nome, $cpf, $rg, $nascimento, $email, $senha, $novaFoto, $nomeFotoAtual);
}
else if (isset($_POST["cadastrarTel"])){
	$ddd = $_POST["ddd"];
	$telefone = $_POST["telefone"];
	inserirTelefone($ddd, $telefone);
}
else if (isset($_POST["cadastrarEnd"])){
	$logradouro = $_POST["logradouro"];
	$numero = $_POST["numero"];
	$bairro = $_POST["bairro"];
	$complemento = $_POST["complemento"];
	$cep = $_POST["cep"];
	inserirEndereco($logradouro, $numero, $bairro, $complemento, $cep);
}

else if (isset($_POST["alterarEnd"])){
	$logradouro = $_POST["logradouro"];
	$numero = $_POST["numero"];
	$bairro = $_POST["bairro"];
	$complemento = $_POST["complemento"];
	$cep = $_POST["cep"];
	$id = $_POST["id"];
	alterarEnd($logradouro, $numero, $bairro, $complemento, $cep, $id);
}

else if(isset($_POST["alterarTel"])){
	$id = $_POST["id"];
	$ddd = $_POST["ddd"];
	$numero = $_POST["numero"];
	alterarTel($id, $ddd, $numero);
}
else if(isset($_POST["fazerLogout"])){
	session_destroy(); 
	header("Location:index.php");
}
else if(isset($_POST["gerenciaProduto"])){
	header("Location:produto.php");
}
else if(isset($_POST["gerenciaPromocao"])){
	header("Location:promocao.php");
}
else if(isset($_POST["gerenciaFornecedor"])){
	header("Location:fornecedor.php");
}
else if(isset($_POST["entradaEstoque"])){
	header("Location:entradaEstoque.php");
}
else if(isset($_POST["cadastraPromo"])){
	header("Location:cadastraPromocao.php");
}
else if(isset($_POST["alteraPromo"])){
	header("Location:editaPromocao.php");
}
else if(isset($_POST["cadastrarProduto"])){
	$tipo = $_POST["tipo"];
	$marca = $_POST["marca"];
	$nome = $_POST["nome"];
	$valor = $_POST["valor"];
	$descricao = $_POST["descricao"];
	$especificacao = $_POST["especificacao"];
	$novaFotoUm = $_FILES["fotoUm"]["name"];
	$novaFotoDois = $_FILES["fotoDois"]["name"];
	$novaFotoTres = $_FILES["fotoTres"]["name"];
	$novaFotoQuatro = $_FILES["fotoQuatro"]["name"];
	cadastrarProduto($tipo, $marca, $nome, $valor, $descricao, $especificacao, $novaFotoUm, $novaFotoDois, $novaFotoTres, $novaFotoQuatro);
}
else if(isset($_POST["alterarProd"])){
	$idProd = $_POST["idProd"];
	$tipoProd = $_POST["tipoProd"];
	$nomProd = $_POST["nomeProd"];
	$marcaProd = $_POST["marcaProd"];
	$valorProd = $_POST["valorProd"];
	$descProd = $_POST["descProd"];
	$especProd = $_POST["especProd"];
	$novaFotoUm = $_FILES["fotoUmAlt"]["name"];
	$novaFotoDois = $_FILES["fotoDoisAlt"]["name"];
	$novaFotoTres = $_FILES["fotoTresAlt"]["name"];
	$novaFotoQuatro = $_FILES["fotoQuatroAlt"]["name"];
	alteraProduto($idProd, $tipoProd, $nomProd, $marcaProd, $valorProd, $descProd, $especProd, $novaFotoUm, $novaFotoDois, $novaFotoTres, $novaFotoQuatro);
}
else if(isset($_POST["cadastrarPromo"])){
	$idProdutoP = $_POST["idPromo"];
	$percentDesconto = $_POST["percentDesconto"];
	$dataIni = $_POST["dataIni"];
	$dataFinal = $_POST["dataFinal"];
	cadastraPromocao($idProdutoP, $percentDesconto, $dataIni, $dataFinal);
}
else if(isset($_POST["editaPromo"])){
	$idProduto = $_POST["id"];
	$percent = $_POST["percent"];
	$dataIni = $_POST["dataIni"];
	$dataFim = $_POST["dataFim"];
	editaPromocao($idProduto, $percent, $dataIni, $dataFim);
}
else if (isset($_POST["cadastrarFornecedor"])){
	$nome = $_POST["nome"];
	$logradouro = $_POST["logradouro"];
	$numero = $_POST["numero"];
	$bairro = $_POST["bairro"];
	$complemento = $_POST["complemento"];
	$cep = $_POST["cep"];
	$ddd = $_POST["ddd"];
	$telefone = $_POST["telefone"];
	$email = $_POST["email"];
	inserirFornecedor($nome, $logradouro, $numero, $bairro, $complemento, $cep, $ddd, $telefone, $email);
}
else if(isset($_POST["alterarFornecedor"])){
	$idForn = $_POST["idForn"];
	$nomeForn = $_POST["tipoProd"];
	$logradouroForn = $_POST["nomeProd"];
	$numeroForn = $_POST["marcaProd"];
	$bairroForn = $_POST["valorProd"];
	$complementoForn = $_POST["descProd"];
	$cepForn = $_POST["especProd"];
	$dddForn = $_POST["dddForn"];
	$telefoneForn = $_POST["telForn"];
	$emailForn = $_POST["emailForn"];
	alteraFornecedor($idForn, $nomeForn, $logradouroForn, $numeroForn, $bairroForn, $complementoForn, $cepForn, $dddForn, $telefoneForn, $emailForn);
}
else if(isset($_POST["addCarrinho"])){
	$vetorProduto = $_SESSION['ArrProduto'];
	$vetorQuantidade = $_SESSION['ArrayQuantidade'];
	$tamanho = $_SESSION['Tamanho'];
	$tamanho = $tamanho + 1;
	$produto = $_POST["idProd"];
	$quantidade = $_POST["quantidade"];
	echo "$quantidade";
	$vetorProduto[] = $produto;
	$vetorQuantidade[] = $quantidade;
	$_SESSION['ArrProduto'] = $vetorProduto;
	$_SESSION['ArrayQuantidade'] = $vetorQuantidade;
	$_SESSION['Tamanho'] = $tamanho;
	$vetorProduto = $_SESSION['ArrProduto'];
	$quantidade = $_SESSION['ArrayQuantidade'];
	print_r($vetorProduto);
	print_r($quantidade);
	//echo $vetorProduto[2];
	//echo $quantidade[2];
	//$tamanho =  sizeof($vetorProduto);
	//echo $tamanho;
	header("Location:carrinho.php");
}
else if(isset($_POST["attQuant"])){
	$novaQuantidade = $_POST["attQuantidade"];
	$posicaoDoI = $_POST["valorDoI"];
	$quantidade = $_SESSION['ArrayQuantidade'];
	$quantidade[$posicaoDoI] = $novaQuantidade;
	$_SESSION['ArrayQuantidade'] = $quantidade;
	echo $novaQuantidade;
	echo $posicaoDoI;
	header("Location:carrinho.php");
}
else if(isset($_POST["excluirProd"])){
	$vetorProduto = $_SESSION['ArrProduto'];
	$vetorQuantidade = $_SESSION['ArrayQuantidade'];
	print_r($vetorProduto);
	print_r($vetorQuantidade);
	$posicaoDoI = $_POST["valorDoI"];
	echo "--".$posicaoDoI."--";
	unset($vetorProduto[$posicaoDoI]);
	unset($vetorQuantidade[$posicaoDoI]);
	$_SESSION['ArrProduto'] = $vetorProduto;
	$_SESSION['ArrayQuantidade'] = $vetorQuantidade;
	header("Location:carrinho.php");
}
else if(isset($_POST["cadastrarEntrada"])){
	$idForn = $_SESSION['idDoFornecedor'];
	$idProd = $_SESSION['idDoProduto'];
	$quantidade = $_POST["quantidade"];
	$data = $_POST["dataFinal"];
	echo $idForn."</br>";
	echo $idProd;
	echo $quantidade."</br>";
	echo $data."</br>";
	cadastrarEntrada($idForn, $idProd, $quantidade, $data);
}
else if(isset($_POST["finalizaPedido"])){
	echo "<script>alert('Compra Finalizada.');</script>";
	echo "<h1>Agradescemos pela preferencia.</h1>";
}
//RISPTERS POADCAST .TEC
//*******************************************************************************

function inserir($nome, $cpf, $rg, $nascimento, $email, $senha){
	$sql = "SELECT * FROM pessoas WHERE CPF = '$cpf'";
	$conexao = AbreConexao();
	$resultado = $conexao->query($sql);		//Comando sql
	$conexao->close();
	if (mysqli_num_rows($resultado) == 0 ) {
		$sql = "SELECT * FROM pessoas WHERE RG = '$rg'";
		$conexao = AbreConexao();
		$resultado = $conexao->query($sql);		//Comando sql
		$conexao->close();
		if (mysqli_num_rows($resultado) == 0 ) {
				$sql = "SELECT * FROM pessoas WHERE email = '$email'";
				$conexao = AbreConexao();
				$resultado = $conexao->query($sql);		//Comando sql
				$conexao->close();
				if (mysqli_num_rows($resultado) == 0 ) {
					$sql = "INSERT INTO pessoas(nome, cpf, rg, dataNasc, email, senha) VALUES ('$nome', '$cpf', '$rg', '$nascimento', '$email', '$senha')";
					$conexao = AbreConexao();
					$conexao->query($sql);		//Comando sql
					$conexao->close();
					echo "<script>alert('Cadastro efetuado com sucesso.');</script>";
					echo("<script type='text/javascript'>location.href='index.php';</script>");
				}else{
					echo "<script>alert('Email já cadastrado');</script>";
				}
			}else{
				echo "<script>alert('RG já cadastrado');</script>";
			}
	}else{
		echo "<script>alert('CPF já cadastrado');</script>";
	}
}

function logar($email, $senha){
	$sql = "SELECT * FROM pessoas WHERE email ='$email'";
	$conexao = AbreConexao();
	$resultado = $conexao->query($sql);		//Comand  sql
	$conexao->close();
	if (mysqli_num_rows($resultado) == 0 ) {
		echo "<script>alert('Email não cadastrado.');</script>";
		echo("<script type='text/javascript'>location.href='cadastroLogin.php';</script>");
	}
	else {
		$sql = "SELECT * FROM pessoas WHERE email ='$email' and senha ='$senha'";
		$conexao = AbreConexao();
		$resultado2 = $conexao->query($sql);		//Comand  sql
		$conexao->close();
		if (mysqli_num_rows($resultado2) == 0 ) {
			echo "<script>alert('Senha incorreta.');</script>";
					echo("<script type='text/javascript'>location.href='cadastroLogin.php';</script>");
		}
		else{
				$pessoa = mysqli_fetch_array($resultado2); 
				$codigoPessoa =  $pessoa["codPessoa"];
				$_SESSION["idPessoa"] = $codigoPessoa;
				$tipoAcesso =  $pessoa["tipoAcesso"];
				if ($tipoAcesso == 1) {
					header("Location:index.php");	
				}
				else if ($tipoAcesso == 0) {
					header("Location: painelAdm.php");
				}			
		}	
		
	}

}

function localizaNome($usuarioLogado){
	$id = $usuarioLogado;
	$sql = "SELECT 	nome FROM pessoas WHERE codPessoa ='$id'";
		$conexao = AbreConexao();
		$resultado2 = $conexao->query($sql);		//Comand  sql
		$conexao->close();
		
				$pessoa = mysqli_fetch_array($resultado2); 
				$nome =  $pessoa["nome"];
				return $nome;
}

function selectIdPessoa($usuarioLogado){
	$sql = "SELECT * FROM pessoas WHERE codPessoa =".$usuarioLogado;
	$conexao = AbreConexao();
	$resultado = $conexao->query($sql);		//Comand  sql
	$conexao->close();
	$pessoa = mysqli_fetch_assoc($resultado); 
	return $pessoa;
}

function AlterarDados($nome, $cpf, $rg, $nascimento, $email, $senha, $novaFoto, $nomeFotoAtual){
	$usuarioLogado = $_SESSION["idPessoa"];
	$sql = "UPDATE pessoas SET nome='$nome',CPF='$cpf',RG='$rg',dataNasc='$nascimento',email='$email',senha='$senha' WHERE codPessoa='$usuarioLogado'";
	$conexao = AbreConexao();
	$conexao->query($sql);		//Comando sql
	$conexao->close();
	if ($novaFoto != null){
		if ($nomeFotoAtual == "padrao.jpg") {
		}
		else {
			unlink("fotos/".$nomeFotoAtual);
		}
		move_uploaded_file($_FILES["foto"]["tmp_name"], "fotos/".$novaFoto);
		$sql = "UPDATE pessoas SET foto='$novaFoto' WHERE codPessoa='$usuarioLogado'";
		$conexao = AbreConexao();
		$conexao->query($sql);		//Comando sql
		$conexao->close();
	}

	header("Location:perfil.php");
}

function inserirEndereco($logradouro, $numero, $bairro, $complemento, $cep){
	$usuarioLogado = $_SESSION["idPessoa"];
	$sql = "INSERT INTO endpessoa(codPessoa, logradouro, numero, bairro, complemento, cep) VALUES ('$usuarioLogado', '$logradouro', '$numero', '$bairro', '$complemento', '$cep')";
	$conexao = AbreConexao();
	$conexao->query($sql);		//Comando sql
	$conexao->close();
	header("Location:index.php");
}

function selectEndPessoa($usuarioLogado){
	$sql = "SELECT * FROM endpessoa WHERE codPessoa =".$usuarioLogado;
	$conexao = AbreConexao();
	$resultado = $conexao->query($sql);		//Comand  sql
	$conexao->close();
	if (mysqli_num_rows($resultado) == 0) {
		return "Não há endereco cadastrado";
	}
	else{
	while ($row = mysqli_fetch_array($resultado)) {
		$grupo[] = $row;
	}
	return $grupo;
}
}

function alterarEnd($logradouro, $numero, $bairro, $complemento, $cep, $id)
{	
	$sql = "UPDATE endpessoa SET logradouro='$logradouro',numero='$numero',bairro='$bairro',complemento='$complemento',cep='$cep' WHERE codEndPessoa='$id'";
	$conexao = AbreConexao();
	$conexao->query($sql);		//Comando sql
	$conexao->close();
	header("Location:cadastraEndereco.php");
}

function inserirTelefone($ddd, $telefone){
	$usuarioLogado = $_SESSION["idPessoa"];
	$sql = "INSERT INTO telefonepessoa(idPessoa, DDD, telefone) VALUES ('$usuarioLogado', '$ddd', '$telefone')";
	$conexao = AbreConexao();
	$conexao->query($sql);		//Comando sql
	$conexao->close();
	header("Location:index.php");
}

function selectTelPessoa($usuarioLogado){
	$sql = "SELECT * FROM telefonepessoa WHERE idPessoa =".$usuarioLogado;
	$conexao = AbreConexao();
	$resultado = $conexao->query($sql);		//Comand  sql
	$conexao->close();
	if (mysqli_num_rows($resultado) == 0) {
		return "Não há telefone cadastrado";
	}
	else{	
		while ($row = mysqli_fetch_array($resultado)) {
			$grupo[] = $row;
	}
	return $grupo;
	}
}

function alterarTel($id, $ddd, $numero)
{	
	$sql = "UPDATE telefonepessoa SET DDD='$ddd',telefone='$numero' WHERE codTelPessoa='$id'";
	$conexao = AbreConexao();
	$conexao->query($sql);		//Comando sql
	$conexao->close();
	header("Location:cadastraTelefone.php");
}

function cadastrarProduto($tipo, $marca, $nome, $valor, $descricao, $especificacao, $novaFotoUm, $novaFotoDois, $novaFotoTres, $novaFotoQuatro){
	move_uploaded_file($_FILES["fotoUm"]["tmp_name"], "fotos/".$novaFotoUm);
	move_uploaded_file($_FILES["fotoDois"]["tmp_name"], "fotos/".$novaFotoDois);
	move_uploaded_file($_FILES["fotoTres"]["tmp_name"], "fotos/".$novaFotoTres);
	move_uploaded_file($_FILES["fotoQuatro"]["tmp_name"], "fotos/".$novaFotoQuatro);
	$sql = "INSERT INTO produto(tipo, nomeProduto, marca, valor, descricao, especTecnica, fotoUm, fotoDois, fotoTres, fotoQuatro) VALUES ('$tipo', '$nome', '$marca', '$valor', '$descricao', '$especificacao', '$novaFotoUm', '$novaFotoDois', '$novaFotoTres', '$novaFotoQuatro')";
	$conexao = AbreConexao();
	$conexao->query($sql);		//Comando sql
	$conexao->close();
	header("Location: produto.php");
}

function selectProdutoID($idProduto){
	$sql = "SELECT * FROM produto WHERE codProduto =".$idProduto;
	$conexao = AbreConexao();
	$resultado = $conexao->query($sql);		//Comand  sql
	$conexao->close();
	if (mysqli_num_rows($resultado) == 0) {
		return "Não há produto cadastrado";
	}
	else{	
		while ($row = mysqli_fetch_array($resultado)) {
			$grupo[] = $row;
	}
	return $grupo;
	}
}

function selectProdutoTipo($tipoProduto){
	$sql = "SELECT * FROM produto WHERE tipo like ('%$tipoProduto%')";
	$conexao = AbreConexao();
	$resultado = $conexao->query($sql);		//Comand  sql
	$conexao->close();
	if (mysqli_num_rows($resultado) == 0) {
		return "Não há produto cadastrado";
	}
	else{	
		while ($row = mysqli_fetch_array($resultado)) {
			$grupo[] = $row;
	}
	return $grupo;
	}
}

function selectProdutoNome($nomeProduto){
	$sql = "SELECT * FROM produto WHERE nomeProduto like ('%$nomeProduto%')";
	$conexao = AbreConexao();
	$resultado = $conexao->query($sql);		//Comand  sql
	$conexao->close();
	if (mysqli_num_rows($resultado) == 0) {
		return "Não há prooduto cadastrado";
	}
	else{	
		while ($row = mysqli_fetch_array($resultado)) {
			$grupo[] = $row;
	}
	return $grupo;
	}
}
function selectProdutoMarca($marcaProduto){
	$sql = "SELECT * FROM produto WHERE marca like ('%$marcaProduto%')";
	$conexao = AbreConexao();
	$resultado = $conexao->query($sql);		//Comand  sql
	$conexao->close();
	if (mysqli_num_rows($resultado) == 0) {
		return "Não há produto cadastrado";
	}
	else{	
		while ($row = mysqli_fetch_array($resultado)) {
			$grupo[] = $row;
	}
	return $grupo;
	}
}
function selectProdutoValor($valorProduto){
	$sql = "SELECT * FROM produto WHERE valor like ('%$valorProduto%')";
	$conexao = AbreConexao();
	$resultado = $conexao->query($sql);		//Comand  sql
	$conexao->close();
	if (mysqli_num_rows($resultado) == 0) {
		return "Não há produto cadastrado";
	}
	else{	
		while ($row = mysqli_fetch_array($resultado)) {
			$grupo[] = $row;
	}
	return $grupo;
	}
}
function selectProdutoDescricao($descricaoProduto){
	$sql = "SELECT * FROM produto WHERE descricao like ('%$descricaoProduto%')";
	$conexao = AbreConexao();
	$resultado = $conexao->query($sql);		//Comand  sql
	$conexao->close();
	if (mysqli_num_rows($resultado) == 0) {
		return "Não há produto cadastrado";
	}
	else{	
		while ($row = mysqli_fetch_array($resultado)) {
			$grupo[] = $row;
	}
	return $grupo;
	}
}
function selectEspecTecnica($especProduto){
	$sql = "SELECT * FROM produto WHERE especTecnica like ('%$especProduto%')";
	$conexao = AbreConexao();
	$resultado = $conexao->query($sql);		//Comand  sql
	$conexao->close();
	if (mysqli_num_rows($resultado) == 0) {
		return "Não há produto cadastrado";
	}
	else{	
		while ($row = mysqli_fetch_array($resultado)) {
			$grupo[] = $row;
	}
	return $grupo;
	}
}

function alteraProduto($idProd, $tipoProd, $nomProd, $marcaProd, $valorProd, $descProd, $especProd, $novaFotoUm, $novaFotoDois, $novaFotoTres, $novaFotoQuatro){
	$sql = "UPDATE produto SET tipo='$tipoProd',nomeProduto='$nomProd',marca='$marcaProd',valor='$valorProd',descricao='$descProd',especTecnica='$especProd' WHERE codProduto='$idProd'";
	$conexao = AbreConexao();
	$conexao->query($sql);		//Comando sql
	$conexao->close();
	if ($novaFotoUm != null){
			//unlink("fotos/".$nomeFotoAtual);
		move_uploaded_file($_FILES["fotoUmAlt"]["tmp_name"], "fotos/".$novaFotoUm);
		$sql = "UPDATE produto SET fotoUm='$novaFotoUm' WHERE codProduto='$idProd'";
		$conexao = AbreConexao();
		$conexao->query($sql);		//Comando sql
		$conexao->close();
		echo "alterou a foto";
	}
	if ($novaFotoDois != null){
			//unlink("fotos/".$nomeFotoAtual);
		move_uploaded_file($_FILES["fotoDoisAlt"]["tmp_name"], "fotos/".$novaFotoUm);
		$sql = "UPDATE produto SET fotoUm='$novaFotoDois' WHERE codProduto='$idProd'";
		$conexao = AbreConexao();
		$conexao->query($sql);		//Comando sql
		$conexao->close();
		echo "alterou a foto";
	}
	if ($novaFotoTres != null){
			//unlink("fotos/".$nomeFotoAtual);
		move_uploaded_file($_FILES["fotoTresAlt"]["tmp_name"], "fotos/".$novaFotoUm);
		$sql = "UPDATE produto SET fotoUm='$novaFotoTres' WHERE codProduto='$idProd'";
		$conexao = AbreConexao();
		$conexao->query($sql);		//Comando sql
		$conexao->close();
		echo "alterou a foto";
	}
	if ($novaFotoQuatro != null){
			//unlink("fotos/".$nomeFotoAtual);
		move_uploaded_file($_FILES["fotoQuatroAlt"]["tmp_name"], "fotos/".$novaFotoUm);
		$sql = "UPDATE produto SET fotoUm='$novaFotoQuatro' WHERE codProduto='$idProd'";
		$conexao = AbreConexao();
		$conexao->query($sql);		//Comando sql
		$conexao->close();
		echo "alterou a foto";
	}
	
	echo "<script>alert('Alterado com sucesso';)</script>";
	echo("<script type='text/javascript'>location.href='produto.php';</script>");
}

function selectProdutoIDPro($idProduto){
	$sql = "SELECT * FROM produto WHERE codProduto =".$idProduto;
	$conexao = AbreConexao();
	$resultado = $conexao->query($sql);		//Comand  sql
	$conexao->close();
	if (mysqli_num_rows($resultado) == 0) {
		return "Não há produto cadastrado";
	}
	else{	
		while ($row = mysqli_fetch_array($resultado)) {
			$grupo[] = $row;
	}
	return $grupo;
	}
}

function selectProdutoTipoPro($tipoProduto){
	$sql = "SELECT * FROM produto WHERE tipo like ('%$tipoProduto%')";
	$conexao = AbreConexao();
	$resultado = $conexao->query($sql);		//Comand  sql
	$conexao->close();
	if (mysqli_num_rows($resultado) == 0) {
		return "Não há produto cadastrado";
	}
	else{	
		while ($row = mysqli_fetch_array($resultado)) {
			$grupo[] = $row;
	}
	return $grupo;
	}
}

function selectProdutoNomePro($nomeProduto){
	$sql = "SELECT * FROM produto WHERE nomeProduto like ('%$nomeProduto%')";
	$conexao = AbreConexao();
	$resultado = $conexao->query($sql);		//Comand  sql
	$conexao->close();
	if (mysqli_num_rows($resultado) == 0) {
		return "Não há produto cadastrado";
	}
	else{	
		while ($row = mysqli_fetch_array($resultado)) {
			$grupo[] = $row;
	}
	return $grupo;
	}
}
function selectProdutoMarcaPro($marcaProduto){
	$sql = "SELECT * FROM produto WHERE marca like ('%$marcaProduto%')";
	$conexao = AbreConexao();
	$resultado = $conexao->query($sql);		//Comand  sql
	$conexao->close();
	if (mysqli_num_rows($resultado) == 0) {
		return "Não há produto cadastrado";
	}
	else{	
		while ($row = mysqli_fetch_array($resultado)) {
			$grupo[] = $row;
	}
	return $grupo;
	}
}
function selectProdutoValorPro($valorProduto){
	$sql = "SELECT * FROM produto WHERE valor like ('%$valorProduto%')";
	$conexao = AbreConexao();
	$resultado = $conexao->query($sql);		//Comand  sql
	$conexao->close();
	if (mysqli_num_rows($resultado) == 0) {
		return "Não há protudo cadastrado";
	}
	else{	
		while ($row = mysqli_fetch_array($resultado)) {
			$grupo[] = $row;
	}
	return $grupo;
	}
}
function selectProdutoDescricaoPro($descricaoProduto){
	$sql = "SELECT * FROM produto WHERE descricao like ('%$descricaoProduto%')";
	$conexao = AbreConexao();
	$resultado = $conexao->query($sql);		//Comand  sql
	$conexao->close();
	if (mysqli_num_rows($resultado) == 0) {
		return "Não há produto cadastrado";
	}
	else{	
		while ($row = mysqli_fetch_array($resultado)) {
			$grupo[] = $row;
	}
	return $grupo;
	}
}
function selectEspecTecnicaPro($especProduto){
	$sql = "SELECT * FROM produto WHERE especTecnica like ('%$especProduto%')";
	$conexao = AbreConexao();
	$resultado = $conexao->query($sql);		//Comand  sql
	$conexao->close();
	if (mysqli_num_rows($resultado) == 0) {
		return "Não há produto cadastrado";
	}
	else{	
		while ($row = mysqli_fetch_array($resultado)) {
			$grupo[] = $row;
	}
	return $grupo;
	}
}

function cadastraPromocao($idProdutoP, $percentDesconto, $dataIni, $dataFinal){
	$sql = "UPDATE produto SET percentDesconto='$percentDesconto',dataInicioPromo='$dataIni',dataFimPromo='$dataFinal' WHERE codProduto='$idProdutoP'";
	$conexao = AbreConexao();
	$conexao->query($sql);		//Comando sql
	$conexao->close();
	echo "<script>alert('Promoção cadastrada com sucesso';)</script>";
	echo("<script type='text/javascript'>location.href='painelAdm.php';</script>");
}
function listaPromocao($idProduto){
	$sql = "SELECT * FROM produto WHERE codProduto = '$idProduto'";
	$conexao = AbreConexao();
	$resultado = $conexao->query($sql);		//Comand  sql
	$conexao->close();
	if (mysqli_num_rows($resultado) == 0) {
		return "Não há promoção cadastrada";
	}
	else{	
		while ($row = mysqli_fetch_array($resultado)) {
			$grupo[] = $row;
	}
	return $grupo;
	}
}
function editaPromocao($idProduto, $percent, $dataIni, $dataFim){
	$sql = "UPDATE produto SET percentDesconto='$percent',dataInicioPromo='$dataIni',dataFimPromo='$dataFim' WHERE codProduto='$idProduto'";
	$conexao = AbreConexao();
	$conexao->query($sql);		//Comando sql
	$conexao->close();
	echo "<script>alert('Alterado com sucesso';)</script>";
	echo("<script type='text/javascript'>location.href='produto.php';</script>");
}
function inserirFornecedor($nome, $logradouro, $numero, $bairro, $complemento, $cep, $ddd, $telefone, $email){
	$sql = "INSERT INTO fornecedor(nomeEmp, logradouroEmp, numeroEmp, bairro, complemento, cep, ddd, telefone, email) VALUES('$nome', '$logradouro', '$numero', '$bairro', '$complemento', '$cep', '$ddd', '$telefone', '$email')";
	$conexao = AbreConexao();
	$resultado = $conexao->query($sql);		//Comand  sql
	$conexao->close();
	header("Location:painelAdm.php");
}
function selectFornecedorNome($nomForn){
	$sql = "SELECT * FROM fornecedor WHERE nomeEmp like ('%$nomForn%')";
	$conexao = AbreConexao();
	$resultado = $conexao->query($sql);		//Comand  sql
	$conexao->close();
	if (mysqli_num_rows($resultado) == 0) {
		return "Não há fornecedor cadastrado";
	}
	else{	
		while ($row = mysqli_fetch_array($resultado)) {
			$grupo[] = $row;
	}
	return $grupo;
	}
}
function selectFornecedorLogradouro($logrForn){
	$sql = "SELECT * FROM fornecedor WHERE logradouroEmp like ('%$logrForn%')";
	$conexao = AbreConexao();
	$resultado = $conexao->query($sql);		//Comand  sql
	$conexao->close();
	if (mysqli_num_rows($resultado) == 0) {
		return "Não há fornecedor cadastrado";
	}
	else{	
		while ($row = mysqli_fetch_array($resultado)) {
			$grupo[] = $row;
	}
	return $grupo;
	}
}
function selectFornecedorCEP($cepForne){
	$sql = "SELECT * FROM fornecedor WHERE cep like ('%$cepForne%')";
	$conexao = AbreConexao();
	$resultado = $conexao->query($sql);		//Comand  sql
	$conexao->close();
	if (mysqli_num_rows($resultado) == 0) {
		return "Não há fornecedor cadastrado";
	}
	else{	
		while ($row = mysqli_fetch_array($resultado)) {
			$grupo[] = $row;
	}
	return $grupo;
	}
}
function selectFornecedorBairro($teleForn){
	$sql = "SELECT * FROM fornecedor WHERE bairro like ('%$teleForn%')";
	$conexao = AbreConexao();
	$resultado = $conexao->query($sql);		//Comand  sql
	$conexao->close();
	if (mysqli_num_rows($resultado) == 0) {
		return "Não há fornecedor cadastrado";
	}
	else{	
		while ($row = mysqli_fetch_array($resultado)) {
			$grupo[] = $row;
	}
	return $grupo;
	}
}
function selectFornecedorDDD($teleForn){
	$sql = "SELECT * FROM fornecedor WHERE ddd like ('%$teleForn%')";
	$conexao = AbreConexao();
	$resultado = $conexao->query($sql);		//Comand  sql
	$conexao->close();
	if (mysqli_num_rows($resultado) == 0) {
		return "Não há fornecedor cadastrado";
	}
	else{	
		while ($row = mysqli_fetch_array($resultado)) {
			$grupo[] = $row;
	}
	return $grupo;
	}
}
function selectFornecedorTelefone($teleForn){
	$sql = "SELECT * FROM fornecedor WHERE telefone like ('%$teleForn%')";
	$conexao = AbreConexao();
	$resultado = $conexao->query($sql);		//Comand  sql
	$conexao->close();
	if (mysqli_num_rows($resultado) == 0) {
		return "Não há fornecedor cadastrado";
	}
	else{	
		while ($row = mysqli_fetch_array($resultado)) {
			$grupo[] = $row;
	}
	return $grupo;
	}
}
function selectFornecedorEmail($emailForn){
	$sql = "SELECT * FROM fornecedor WHERE email like ('%$emailForn%')";
	$conexao = AbreConexao();
	$resultado = $conexao->query($sql);		//Comand  sql
	$conexao->close();
	if (mysqli_num_rows($resultado) == 0) {
		return "Não há fornecedor cadastrado";
	}
	else{	
		while ($row = mysqli_fetch_array($resultado)) {
			$grupo[] = $row;
	}
	return $grupo;
	}
}
function alteraFornecedor($idForn, $nomeForn, $logradouroForn, $numeroForn, $bairroForn, $complementoForn, $cepForn, $dddForn, $telefoneForn, $emailForn){
	$sql = "UPDATE fornecedor SET nomeEmp='$nomeForn',logradouroEmp='$logradouroForn',numeroEmp='$numeroForn',bairro='$bairroForn',complemento='$complementoForn', cep='$cepForn',ddd='$dddForn',telefone='$telefoneForn', email='$emailForn'  WHERE idFornecedor='$idForn'";
	$conexao = AbreConexao();
	$conexao->query($sql);		//Comando sql
	$conexao->close();
	header("Location:painelAdm.php");
}
function listaTodosProdutos(){
	$sql = "SELECT * FROM produto";
	$conexao = AbreConexao();
	$resultado = $conexao->query($sql);		//Comand  sql
	$conexao->close();
	if (mysqli_num_rows($resultado) == 0) {
		return "Não há produto cadastrado";
	}
	else{	
		while ($row = mysqli_fetch_array($resultado)) {
			$grupo[] = $row;
	}
	return $grupo;
	}
}
function selectProdutoSearch($pesquisar){
	$sql = "SELECT * FROM produto WHERE tipo like ('%$pesquisar%')";
	$conexao = AbreConexao();
	$resultado = $conexao->query($sql);		//Comand  sql
	$conexao->close();
	if (mysqli_num_rows($resultado) == 0) {
		return "Não há produto cadastrado";
	}
	else{	
		while ($row = mysqli_fetch_array($resultado)) {
			$grupo[] = $row;
	}
	return $grupo;
	}
}
function selectProduto(){
	$sql = "SELECT * FROM produto";
	$conexao = AbreConexao();
	$resultado = $conexao->query($sql);		//Comand  sql
	$conexao->close();
	if (mysqli_num_rows($resultado) == 0) {
		return "Não há produto cadastrado";
	}
	else{	
		while ($row = mysqli_fetch_array($resultado)) {
			$grupo[] = $row;
	}
	return $grupo;
	}
}
function selectPromocao($data){
	$array = explode("-", $data);
	$novaData = $array[2]."/".$array["1"]."/".$array["0"];	
	$sql = "SELECT * FROM produto WHERE '$novaData' BETWEEN dataInicioPromo AND dataFimPromo;";
	$conexao = AbreConexao();
	$resultado = $conexao->query($sql);		//Comand  sql
	$conexao->close();
	if (mysqli_num_rows($resultado) == 0) {
			return "Não há produto cadastrado";
		}
		else{	
			while ($row = mysqli_fetch_array($resultado)) {
				$grupo[] = $row;
		}
		return $grupo;
		}
}
function selectProdutoIdTd($idProduto){
	$sql = "SELECT * FROM produto WHERE codProduto =".$idProduto;
	$conexao = AbreConexao();
	$resultado = $conexao->query($sql);		//Comand  sql
	$conexao->close();
	if (mysqli_num_rows($resultado) == 0) {
		return "Não há produto cadastrado";
	}
	else{	
		while ($row = mysqli_fetch_array($resultado)) {
			$grupo[] = $row;
	}
	return $grupo;
	}
}
function selectUltimos(){
	$sql = "SELECT * FROM produto ORDER BY codProduto DESC LIMIT 4";
	$conexao = AbreConexao();
	$resultado = $conexao->query($sql);		//Comand  sql
	$conexao->close();
	if (mysqli_num_rows($resultado) == 0) {
		return "Não há produto cadastrado";
	}
	else{	
		while ($row = mysqli_fetch_array($resultado)) {
			$grupo[] = $row;
	}
	return $grupo;
	}
}
function selectPromocoesBest(){
	$sql = "SELECT * FROM produto ORDER BY percentDesconto DESC LIMIT 4";
	$conexao = AbreConexao();
	$resultado = $conexao->query($sql);		//Comand  sql
	$conexao->close();
	if (mysqli_num_rows($resultado) == 0) {
		return "Não há produto cadastrado";
	}
	else{	
		while ($row = mysqli_fetch_array($resultado)) {
			$grupo[] = $row;
	}
	return $grupo;
	}
}
function cadastrarEntrada($idForn, $idProd, $quantidade, $data){
	$sql = "INSERT INTO entrada(codProduto, codFornecedor, codEntrada, quantidade, dataEntrada) VALUES ('$idProd', '$idForn', '$quantidade', '$data')";
	$conexao = AbreConexao();
	$conexao->query($sql);		//Comando sql
	$conexao->close();
	header("Location:painelAdm.php");	
}




 ?>
 