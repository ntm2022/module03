<%@ page import="com.example.danhsachkhachhang.Customer" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.danhsachkhachhang.CustomerManagement" %>
<%@ page import="java.text.DateFormat" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<%
    final String DATE_FORMAT = "dd-MM-yyyy H:m:s";
    DateFormat simpleDateFormat = new SimpleDateFormat(DATE_FORMAT);
    CustomerManagement customerManagement = new CustomerManagement();
    //public Customer(String name, Date DOB, String address, String image) {
    customerManagement.add(new Customer("Mai Văn Hoàn", simpleDateFormat.parse("1983-08-20 00:00:00"), "Hà Nội", "src/img/img01.jpg"));
    customerManagement.add(new Customer("Nguyễn Văn Nam", simpleDateFormat.parse("1983-08-21 00:00:00"), "Bắc Giang", "src/img/img02.jpg"));
    customerManagement.add(new Customer("Nguyễn Thái Hòa", simpleDateFormat.parse("1983-08-22 00:00:00"), "Nam Định", "src/img/img03.jpg"));
    customerManagement.add(new Customer("Trần Đăng Khoa", simpleDateFormat.parse("1983-08-17 00:00:00"), "Hà Tây", "src/img/img04.jpg"));
    customerManagement.add(new Customer("Nguyễn Đình Thi", simpleDateFormat.parse("1983-08-19 00:00:00"), "Hà Nội", "src/img/img05.jpg"));
%>
<%=customerManagement%>
</body>
</html>