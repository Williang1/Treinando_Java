<%@page import="java.sql.SQLException"%>
<%@page import="br.com.DAO.FornecedorDAO"%>
<%@page import="br.com.model.Fornecedor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Fornecedor</title>
    </head>
    <body>
        <%
            try {
               Fornecedor objFornecedor = new Fornecedor();
                objFornecedor.setIdFornecedor(Integer.parseInt(request.getParameter("idFornecedor")));
                objFornecedor.setEndereco(request.getParameter("Endereco"));
                objFornecedor.setNome_Fornecedor(request.getParameter("Nome_Fornecedor"));
               

             FornecedorDAO objFornecedorDAO = new FornecedorDAO();
                objFornecedorDAO.cadastrarFornecedor(objFornecedor);
                out.print("Fornecedor Inserido!!");
            } catch (Exception e) {
                out.println("erro");
            }

        %>
    </body>
</html>
