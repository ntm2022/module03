<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Calculator</title>
</head>
<body>
<form method="post" action="/calculate">
    Num1:<br/>
    <input type="text" name="txtNum1"><br/>
    Num2:<br/>
    <input type="text" name="txtNum2"><br/>
    Operator:<br/>
    <select name="operator">
        <option value="1">+</option>
        <option value="2">-</option>
        <option value="3">*</option>
        <option value="4">/</option>
    </select><br/>
    <input type="submit" value="CALCULATE">
</form>
</body>
</html>