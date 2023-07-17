
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.model.Fornecedor"%>
<%@page import="br.com.DAO.FornecedorDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Fornecedor</title>
    </head>
    <body>
        <%
            try {
              FornecedorDAO objFornecedorDAO = new FornecedorDAO();
                ArrayList<Fornecedor> lista = objFornecedorDAO.pesquisarFornecedor();
                
                for (int num = 0; num < lista.size(); num++) {
                    out.print("idFornecedor: " + lista.get(num).getIdFornecedor() + "<br>");
                    out.print("Endereco: " + lista.get(num).getEndereco() + "<br>");
                    out.print("Nome_Fornecedor: " + lista.get(num).getNome_Fornecedor() + "<br>");
                   
                    
                        
                    }

            } catch (Exception e) {
            }
        %>
    </body>
</html>