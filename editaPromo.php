 <script src="js/jquery.min.js"></script>
  <script src="js/javascript.js"></script>
  <link rel="stylesheet" href="css/stylesheet.css">
Pesquisar por: 
      <select name="select" id="select">
        <option value="">Selecione</option>
        <option value="div1">Nome do Produto</option>
        <option value="div2">Marca do produto</option>
        <option value="div3">Tipo do produto</option>
        <option value="div4">ID do produto</option>
        <option value="div5">Valor R$</option>
        <option value="div6">Descrição Técnica</option>
        <option value="div7">Especificação Técnica</option>
      </select>
    </br></br>
      <div id="pai">
          <div id="div1">
            <form name="verificaProduto1" action="editaPromocao.php" method="POST">
            Nome do Produto: 
            <input type="text" name="nomeProd" values="">
            <input type="submit" value="Pesquisar" name="pesquisaProdutoNome">
            </form>
          </div>
          <div id="div2">
            <form name="verificaProduto1" action="editaPromocao.php" method="POST">
            Marca do Produto: 
            <input type="text" name="marcaProd" values="">
            <input type="submit" value="Pesquisar" name="pesquisaProdutoMarca">
            </form>
          </div>
          <div id="div3">
            <form name="verificaProduto1" action="editaPromocao.php" method="POST">
            Tipo do Produto: 
            <input type="text" name="tipoProd" values="">
            <input type="submit" value="Pesquisar" name="pesquisaProdutoTipo">
            </form>
          </div>
          <div id="div4">
            <form name="verificaProduto1" action="editaPromocao.php" method="POST">
            ID do Produto: 
            <input type="number" name="idProd" values="">
            <input type="submit" value="Pesquisar" name="pesquisaProdutoId">
            </form>
          </div>
          <div id="div5">
            <form name="verificaProduto1" action="editaPromocao.php" method="POST">
            Valor R$: 
            <input type="number" name="valorProd" values="">
            <input type="submit" value="Pesquisar" name="pesquisaProdutoValor">
            </form>
          </div>
          <div id="div6">
            <form name="verificaProduto1" action="editaPromocao.php" method="POST">
            Descrição Técnica: 
            <input type="text" name="descProd" values="">
            <input type="submit" value="Pesquisar" name="pesquisaProdutoDescricao">
            </form>
          </div>
          <div id="div7">
            <form name="verificaProduto1" action="editaPromocao.php" method="POST">
            Especificação Téncica: 
            <input type="text" name="espProd" values="">
            <input type="submit" value="Pesquisar" name="pesquisaProdutoEspecTec">
            </form>
          </div>
      </div>