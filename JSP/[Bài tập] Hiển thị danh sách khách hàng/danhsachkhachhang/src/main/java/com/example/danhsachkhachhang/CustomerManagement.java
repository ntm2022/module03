package com.example.danhsachkhachhang;

import java.util.ArrayList;
import java.util.List;

public class CustomerManagement {
    List<Customer> list = new ArrayList<>();

    public void add(Customer c){
        list.add(c);
    }

    @Override
    public String toString() {
        return "CustomerManagement{" +
                "list=" + list +
                '}';
    }
}
