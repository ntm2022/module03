package com.example.simplecalculator;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CalculatorServlet", value = "/calculate")
public class CalculatorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        double result = 0;
        int operator = 0;
        int selectedAdd, selectedSub, selectedMulti, selectedDiv;

        //get request from index.jsp
        double num1 = Double.parseDouble(request.getParameter("txtNum1"));
        double num2 = Double.parseDouble(request.getParameter("txtNum2"));

        if(request.getParameter("operator")!= null)
            operator = Integer.parseInt(request.getParameter("operator"));

        //DIV 0
        if(operator==4 && num2==0) {
            PrintWriter writer = response.getWriter();
            writer.println("<html><h1>DIV0</h1></html>");
            return;
        }

        result = Calculator.calculate(num1, num2, operator);

        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("<h2>RESULT:</h2>" + result);
        writer.println("</html>");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
