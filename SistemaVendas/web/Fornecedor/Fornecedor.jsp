<%@page import="java.util.ArrayList"%>
<%@page import="br.com.model.Produto"%>
<%@page import="br.com.DAO.ProdutoDAO"%>
<html>
    <head>
        <title>Cadastrar Fornecedor</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <form action="inserirFornecedor.jsp" method="POST">

            <label>Nome_Fornecedor: </label> 
            <input type="text" name="Nome_Fornecedor"><br> 
            <label>idFornecedor: </label> 
            <input type="text" name="idFornecedor"><br> 
            <label>Endereco: </label> 
            <input type="text" name="Endereco"><br> 
           
              


            </select><br>

            <button type="submit">CADASTRAR</button> <br>             

        </form>
        <a href="listarFornecedor.jsp">Listar Fornecedor</a>
    </body>
</html>
