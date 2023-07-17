<%@page import="java.sql.SQLException"%>
<%@page import="br.com.DAO.ProdutoDAO"%>
<%@page import="br.com.model.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Produto</title>
    </head>
    <body>
        <%
            try {
              Produto objProduto = new Produto();
                objProduto.setidProduto(Integer.parseInt(request.getParameter("idProduto")));
                 objProduto.setDescricao(request.getParameter("Descricao"));
              objProduto.setPrecoUnitario(Integer.parseInt(request.getParameter("PrecoUnitario")));

             ProdutoDAO objProdutoDAO = new ProdutoDAO();
                objProdutoDAO.cadastrarProduto(objProduto);
                out.print("Produto Inserido!!");
            } catch (Exception e) {
                out.println("erro");
            }

        %>
    </body>
</html>
