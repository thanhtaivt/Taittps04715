/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**price
 *
 * @author TAIBAPHI
 */
public class Product {

    private String code;
    private String name, image;
    private float price;

    public Product(String code, String name, String image, float price) {
        this.code = code;
        this.name = name;
        this.image = image;
        this.price = price;
    }
    
    
    
    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Product() {

    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

}
