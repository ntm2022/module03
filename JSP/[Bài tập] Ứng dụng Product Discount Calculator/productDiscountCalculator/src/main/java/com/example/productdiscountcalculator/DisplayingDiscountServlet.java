package com.example.productdiscountcalculator;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "DisplayingDiscountServlet", value = "/display-discount")
public class DisplayingDiscountServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //fix lỗi UNICODE
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        String productDescription = request.getParameter("txtProductDescription");
        double listPrice = Double.parseDouble(request.getParameter("txtListPrice"));
        double discountPercent = Double.parseDouble(request.getParameter("txtDiscountPercent"));

        PrintWriter writer = response.getWriter();

        writer.println("<html>");
        writer.println("<h2>");
        writer.println("productDescription: " + productDescription);
        writer.println("</h2>");

        writer.println("<h2>");
        writer.println("listPrice: " + listPrice);
        writer.println("</h2>");

        writer.println("<h2>");
        writer.println("discountPercent: " + discountPercent);
        writer.println("</h2>");

        writer.println("<h2>Result:</h2>");
        Double discountAmount = listPrice * discountPercent * 0.01;
        writer.println("<p>Discount Amount: Lượng chiết khấu " + discountAmount + "</p>");

        Double discountPrice = listPrice-discountAmount;
        writer.println("<p>Discount Price: Giá sau khi đã được chiết khấu " + discountPrice + "</p>");

        writer.println("</html>");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
