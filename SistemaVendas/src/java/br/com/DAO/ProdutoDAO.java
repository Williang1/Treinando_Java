package br.com.DAO;

import br.com.model. Produto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ProdutoDAO {
    
    Connection con;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList< Produto> lista = new ArrayList();
    
    public void cadastrarProduto( Produto objProduto) throws ClassNotFoundException{
        String sql = "insert into  Produto (idProduto,Descricao,PrecoUnitario) values (?,?,?)";
        con = new ConexaoDAO().conexaoBD();
        try {
            pstm = con.prepareStatement(sql);
            pstm.setInt(1, objProduto.getidProduto());
              pstm.setString(2, objProduto.getDescricao());
              pstm.setInt(3, objProduto.getPrecoUnitario());
            
            
            
            
            
            pstm.execute();
            pstm.close();
            
        } catch (SQLException e) {
        }
    }
    
    public ArrayList<Produto> pesquisarProduto() throws ClassNotFoundException{
        String sql = "select * from Produto";
        con = new ConexaoDAO().conexaoBD();
        try {
            pstm = con.prepareStatement(sql);          
            rs = pstm.executeQuery(sql);
            while(rs.next()){
                Produto objProduto = new Produto();
                
                objProduto.setidProduto(rs.getInt("id"));
                objProduto.setDescricao(rs.getString("Descricao"));
                objProduto.setPrecoUnitario(rs.getInt("Preco"));
                
              
                
                lista.add(objProduto);
            }
            pstm.close();
            
        } catch (SQLException e) {
        }
        
        return lista;
    }
    
}

