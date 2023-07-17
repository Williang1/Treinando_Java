<%@page import="java.util.ArrayList"%>
<%@page import="br.com.model.Produto"%>
<%@page import="br.com.DAO.ProdutoDAO"%>
<html>
    <head>
        <title>Cadastrar Produto</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <form action="inserirProduto.jsp" method="POST">

            <label>idProduto: </label> 
            <input type="text" name="idProduto"><br> 
            <label>Descricao: </label> 
            <input type="text" name="Descricao"><br> 
            <label>PrecoUnitario: </label> 
            <input type="text" name="PrecoUnitario"><br> 
           
                <%
                    try {
                        ProdutoDAO objProdutoDAO = new ProdutoDAO();
                        ArrayList<Produto> lista = objProdutoDAO.pesquisarProduto();

                        for (int num = 0; num < lista.size(); num++) {
                            out.print("<option value=" + lista.get(num).getidProduto() + ">" + lista.get(num).getDescricao() + "</option>");

                        }

                    } catch (Exception e) {
                    }
                %>


            </select><br>

            <button type="submit">CADASTRAR</button> <br>             

        </form>
        <a href="listarProduto.jsp">Listar Produto</a>
    </body>
</html>
