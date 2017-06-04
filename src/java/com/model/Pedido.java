package com.model;

public class Pedido {
    
    private String nomPedido;

    //Constructor
    public Pedido(String nomPedido) {
        this.nomPedido = nomPedido;
    }
    public Pedido() {

    }

    //Getters and Setters
    public String getNomPedido() {
        return nomPedido;
    }

    public void setNomPedido(String nomPedido) {
        this.nomPedido = nomPedido;
    }

}
