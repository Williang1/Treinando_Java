
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.model.Produto"%>
<%@page import="br.com.DAO.ProdutoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Produto</title>
    </head>
    <body>
        <%
            try {
               ProdutoDAO objProdutoDAO = new ProdutoDAO();
                ArrayList<Produto> lista = objProdutoDAO.pesquisarProduto();
                
                for (int num = 0; num < lista.size(); num++) {
                    out.print("idProduto: " + lista.get(num).getidProduto() + "<br>");
                    out.print("Descricao: " + lista.get(num).getDescricao() + "<br>");
                    out.print("PrecoUnitario: " + lista.get(num).getPrecoUnitario() + "<br>");
                    
                        
                    }

            } catch (Exception e) {
            }
        %>
    </body>
</html>