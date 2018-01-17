 <form name="cadastrarProduto" action="functions.php" method="POST" enctype="multipart/form-data">
      <table border="1">
        <tbody>
          <tr>
            <td>Tipo: </td>
            <td><input type="text" name="tipo" values=""></td><!-- name vai pro banco, tr td é tabela -->
          </tr>
          <tr>
            <td>Marca: </td>
            <td><input type="text" name="marca" values=""></td><!-- name vai pro banco, tr td é tabela -->
          </tr>
          
          <tr>
            <td>Nome do produto: </td>
            <td><input type="text" name="nome" values=""></td><!-- name vai pro banco, tr td é tabela -->
          </tr>
          <tr>
            <td>Valor: </td>
            <td><input type="number" name="valor" values="" step=0.01></td><!-- name vai pro banco, tr td é tabela -->
          </tr>
          <tr>
            <td>Descrição Técnica: </td>
            <td><input type="text" name="descricao" values=""></td><!-- name vai pro banco, tr td é tabela -->
          </tr>
          <tr>
            <td>Especificações Técnicas: </td>
            <td><input type="text" name="especificacao" values=""></td><!-- name vai pro banco, tr td é tabela -->
          </tr>
          <tr>
            <td>Foto 1 do produto: </td>
            <td><input type="file" name="fotoUm"></td>
          </tr>
          <tr>
            <td>Foto 2 do produto: </td>
            <td><input type="file" name="fotoDois"></td>
          </tr>
          <tr>
            <td>Foto 3 do produto: </td>
            <td><input type="file" name="fotoTres"></td>
          </tr>
          <tr>
            <td>Foto 4 do produto: </td>
            <td><input type="file" name="fotoQuatro"></td>
          </tr>
          <tr>
            <td><input type="submit" value="Cadastrar" name="cadastrarProduto"></td>
          </tr>
        </tbody>
      </table>
    </form>

          <a href="painelAdm.php">Voltar</a>