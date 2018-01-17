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
  Pesquisar fornecedor por: 
      <select name="select" id="select">
        <option value="">Selecione</option>
        <option value="div1">Nome do Fornecedor</option>
        <option value="div2">Cidade</option>
        <option value="div3">Logradouro</option>
        <option value="div4">CEP</option>
        <option value="div5">Telefone</option>
        <option value="div6">Email</option>
      </select>
    </br></br>
      <div id="pai">
          <div id="div1">
            <form name="verificaFornecedor1" action="alteraFornecedor.php" method="POST">
            Nome do Fornecedor: 
            <input type="text" name="nomeForn" values="">
            <input type="submit" value="Pesquisar" name="pesquisaFornecedorNome">
            </form>
          </div>
          <div id="div2">
            <form name="verificaFornecedor1" action="alteraFornecedor.php" method="POST">
            Cidade: 
            <input type="text" name="cidadeForn" values="">
            <input type="submit" value="Pesquisar" name="pesquisaFornecedorCidade">
            </form>
          </div>
          <div id="div3">
            <form name="verificaFornecedor1" action="alteraFornecedor.php" method="POST">
            Logradouro: 
            <input type="text" name="logradouroForn" values="">
            <input type="submit" value="Pesquisar" name="pesquisaFornecedorLogradouro">
            </form>
          </div>
          <div id="div4">
            <form name="verificaFornecedor1" action="alteraFornecedor.php" method="POST">
            CEP: 
            <input type="number" name="cepForn" values="">
            <input type="submit" value="Pesquisar" name="pesquisaFornecedorCEP">
            </form>
          </div>
          <div id="div5">
            <form name="verificaFornecedor1" action="alteraFornecedor.php" method="POST">
            Telefone: 
            <input type="text" name="telefoneForn" values="">
            <input type="submit" value="Pesquisar" name="pesquisaFornecedorTelefone">
            </form>
          </div>
          <div id="div6">
            <form name="verificaFornecedor1" action="alteraFornecedor.php" method="POST">
            Email: 
            <input type="text" name="emailForn" values="">
            <input type="submit" value="Pesquisar" name="pesquisaFornecedorEmail">
            </form>
          </div>
      </div>
</body>
</html>