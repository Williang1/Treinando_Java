/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.model;

/**
 *
 * @author Lucia
 */
public class Produto {
    private int idProduto;
    private String Descricao;
    private int PrecoUnitario;

    public int getidProduto() {
        return idProduto;
    }

    public void setidProduto(int idProduto) {
        this.idProduto = idProduto;
    }

    public String getDescricao() {
        return Descricao;
    }

    public void setDescricao(String Descricao) {
        this.Descricao = Descricao;
    }

    public int getPrecoUnitario() {
        return PrecoUnitario;
    }

    public void setPrecoUnitario(int PrecoUnitario) {
        this.PrecoUnitario = PrecoUnitario;
    }
   
}
