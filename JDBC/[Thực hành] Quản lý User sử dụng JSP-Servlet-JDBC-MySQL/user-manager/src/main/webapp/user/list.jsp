<%--
  Created by IntelliJ IDEA.
  User: Minh
  Date: 11/30/2022
  Time: 6:18 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User Management Application</title>
</head>
<body>
<center>
    <h1>User Management</h1>
    <h2>
        <a href="/users?action=create">Add New User</a>
    </h2>
</center>
<div align="center">
    <table border="1" cellpadding="5">
        <caption><h2>List of Users</h2></caption>
        <tr>
            <th>ID</th>
            <th><a href="/users?action=sortname">Name</a></th>
            <th>Email</th>
            <th>Country</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="user" items="${listUser}">
            <tr>
                <td><c:out value="${user.id}"/></td>
                <td><c:out value="${user.name}"/></td>
                <td><c:out value="${user.email}"/></td>
                <td><c:out value="${user.country}"/></td>
                <td>
                    <a href="/users?action=edit&id=${user.id}">Edit</a>
                    <a href="/users?action=delete&id=${user.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>

    </table>
    <div id="ultilities" style="display:inline-block;">
        <form method="post" action="/users?action=search">

            <fieldset>
                <legend>Search By Country</legend>
                <table>
                    <tr><td><input type="text" name="txtCountry"></td><td><input type="submit" value="SEARCH"></td></tr>
                </table>
            </fieldset>

        </form>
    </div>
</div>
</body>
</html>
