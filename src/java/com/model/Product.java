package com.model;

public class Product {
    
    private String image;
    private String nomProduct;
    private int precio;

    //Constructor
    public Product(String image, String nomProduct, int precio) {
        this.image = image;
        this.nomProduct = nomProduct;
        this.precio = precio;
    }
    public Product() {

    }

    //Getters and Setters
    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getNomProduct() {
        return nomProduct;
    }

    public void setNomProduct(String nomProduct) {
        this.nomProduct = nomProduct;
    }

    public int getPrecio() {
        return precio;
    }

    public void setPrecio(int precio) {
        this.precio = precio;
    }
    
    
}
