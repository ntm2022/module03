package com.example.danhsachkhachhang;

import java.util.Date;

public class Customer {
    private String name;
    private Date DOB;
    private String address;
    private String image;

    public Customer() {
    }

    public Customer(String name, Date DOB, String address, String image) {
        this.name = name;
        this.DOB = DOB;
        this.address = address;
        this.image = image;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getDOB() {
        return DOB;
    }

    public void setDOB(Date DOB) {
        this.DOB = DOB;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "<br/>KhachHang{" +
                "name='" + name + '\'' +
                ", DOB=" + DOB +
                ", address='" + address + '\'' +
                ", image=<img src='" + image + '\'' + "/>" +
                '}';
    }
}
