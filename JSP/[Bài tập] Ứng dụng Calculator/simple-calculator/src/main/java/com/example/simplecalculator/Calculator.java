package com.example.simplecalculator;

public class Calculator {
    static double calculate(double num1, double num2, int operator){
        switch (operator){
            case 1:
                return num1 + num2;
            case 2:
                return num1 - num2;
            case 3:
                return num1 * num2;
            case 4:
                return num1 / num2;
        }
        return 0;
    }
}
