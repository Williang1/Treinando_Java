/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package account;

import exceptions.BusinessException;

/**
 *
 * @author willi
 */
public class Account {

    /**
     * @param args the command line arguments
     */
   
        private Integer number;
        private String holder;
        private Double balance;
        private Double whithdrawLimit;
        
        public Account(){
    }

    public Account(Integer number, String holder,Double balance, Double whithdrawLimit) {
        this.number = number;
        this.holder = holder;
        this.balance = balance;
        this.whithdrawLimit = whithdrawLimit;
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public String getHolder() {
        return holder;
    }

    public void setHolder(String holder) {
        this.holder = holder;
    }

    public Double getBalance() {
        return balance;
    }

    public void setBalance(Double balance) {
        this.balance = balance;
    }

    public Double getWithdrawLimit() {
        return whithdrawLimit;
    }

    public void setWithdrawLimit(Double whithdrawLimit) {
        this.whithdrawLimit = whithdrawLimit;
    }
     public void deposit(double amount){
         balance = balance += amount;
         
     }   
    public void withdraw(double amount){
        validateWithdraw(amount);
    
        balance -= amount;
    }
  private void validateWithdraw(double amount) {
		if (amount > getWithdrawLimit()) {
			throw new BusinessException("Erro de saque: A quantia excede o limite de saque");
		} 
		if (amount > getBalance()) {
			throw new BusinessException("Erro de saque: Saldo insuficiente");
		}
	}
}
