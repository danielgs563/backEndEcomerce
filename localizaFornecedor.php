<?php 
if (isset($_POST["idProd"])) {
  session_start();
   $idProduto = $_POST["idProd"];
  $_SESSION['idDoProduto'] = $idProduto; 
 } 

 ?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <title>Altera Fornecedor</title>
  <script src="js/jquery.min.js"></script>
  <script src="js/javascript.js"></script>
  <link rel="stylesheet" href="css/stylesheet.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
</head>
<body>
  Localizar fornecedor
</br>
  Pesquisar fornecedor por: 
      <select name="select" id="select">
        <option value="">Selecione</option>
        <option value="div1">Nome da Empresa</option>
        <option value="div2">Logradouro</option>
        <option value="div3">Bairro</option>
        <option value="div4">CEP</option>
        <option value="div5">DDD</option>
        <option value="div6">Telefone</option>
        <option value="div7">Email</option>
      </select>
    </br></br>
      <div id="pai">
          <div id="div1">
            <form name="verificaProduto1" action="listaFornecedor.php" method="POST">
            Nome da Empresa: 
            <input type="text" name="nomeForn" values="">
            <input type="submit" value="Pesquisar" name="pesquisaFornNome">
            </form>
          </div>
          <div id="div2">
            <form name="verificaProduto1" action="listaFornecedor.php" method="POST">
            Logradouro: 
            <input type="text" name="logradouroForn" values="">
            <input type="submit" value="Pesquisar" name="pesquisaFornLogr">
            </form>
          </div>
          <div id="div3">
            <form name="verificaProduto1" action="listaFornecedor.php" method="POST">
            Bairro: 
            <input type="text" name="bairroForn" values="">
            <input type="submit" value="Pesquisar" name="pesquisaFornBairr">
            </form>
          </div>
          <div id="div4">
            <form name="verificaProduto1" action="listaFornecedor.php" method="POST">
            CEP: 
            <input type="number" name="cepForn" values="">
            <input type="submit" value="Pesquisar" name="pesquisaFornCEP">
            </form>
          </div>
          <div id="div5">
            <form name="verificaProduto1" action="listaFornecedor.php" method="POST">
            DDD: 
            <input type="number" name="dddForn" values="">
            <input type="submit" value="Pesquisar" name="pesquisaFornDDD">
            </form>
          </div>
          <div id="div6">
            <form name="verificaProduto1" action="listaFornecedor.php" method="POST">
            Telefone: 
            <input type="text" name="telefoneForn" values="">
            <input type="submit" value="Pesquisar" name="pesquisaFornTel">
            </form>
          </div>
          <div id="div7">
            <form name="verificaProduto1" action="listaFornecedor.php" method="POST">
            Email: 
            <input type="text" name="emailForn" values="">
            <input type="submit" value="Pesquisar" name="pesquisaFornEmail">
            </form>
          </div>
      </div>
</body>
</html>