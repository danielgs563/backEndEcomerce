<?php 
	include("functions.php");
 

	if (isset($_SESSION["idPessoa"])) {
		$valorTotal = $_SESSION['valorTotal'];
		$usuarioLogado = $_SESSION["idPessoa"];
		echo "<h2>".$valorTotal."  Valor total da compra</h2></br></br>";
		echo "<h2>Escolha a forma de pagamento: </h2>";?>
		<script src="js/jquery.min.js"></script>
	    <script src="js/javascript.js"></script>
  		<link rel="stylesheet" href="css/stylesheet.css">
  		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
		 <select name="select" id="select">
        <option value="">Selecione</option>
        <option value="div1">Boleto Bancário</option>
        <option value="div2">Cartão de Débito</option>
        <option value="div3">Cartão de Crédito</option>
        	</select>
    </br></br>
      <div id="pai">
          <div id="div1">
            <form name="verificaProduto1" action="formaPagamento.php" method="POST">
            <input type="hidden" name="tipoPagamento" values="1">
            <input type="submit" value="Escolher endereço de entrega">
            </form>
          </div>
          <div id="div2">
            <form name="verificaProduto1" action="formaPagamento.php" method="POST">
           <input type="hidden" name="tipoPagamento" values="1">
            <input type="submit" value="Escolher endereço de entrega">
            </form>
          </div>
          <div id="div3">
            <form name="verificaProduto1" action="formaPagamento.php" method="POST">
            <select name="select" id="select">
        <option value="">Selecione</option>
        <option value="div1">1 x no cartão de crédito</option>
        <option value="div2">2 x no cartão de crédito</option>
        <option value="div3">3 x no cartão de crédito</option>
        <option value="div4">4 x no cartão de crédito</option>
        <option value="div5">5 x no cartão de crédito</option>
        <option value="div6">6 x no cartão de crédito</option>
        div id="pai">
          <div id="div1">
            <form name="verificaProduto1" action="formaPagamento.php" method="POST">
            <input type="hidden" name="tipoPagamento" values="1">
            <input type="submit" value="Escolher endereço de entrega">
            </form>
          </div>
      </div>
        	</select>
            </form>
          </div>
        
      </div><?php 
}
else{
		echo "<script>alert('Favor, efetuar login antes.');</script>";
		echo("<script type='text/javascript'>location.href='cadastroLogin.php';</script>");
	}


 ?>