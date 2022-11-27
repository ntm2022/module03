<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>JSP - Product Discount Calculator</title>
</head>
<body>
<pre>
    [Bài tập] Ứng dụng Product Discount Calculator
Mục tiêu
Luyện tập tạo ứng dụng Web Java và xử lý dữ liệu nhập vào từ form.

Điều kiện
Biết cách tạo ứng dụng Web Java và xử lý dữ liệu nhập vào từ form.

Mô tả
Ứng dụng Product Discount Calculator được sử dụng để tính chiết khấu cho sản phẩm khi mua hàng online.

Trong trang đầu tiên, người dùng sẽ nhập vào các dữ liệu sau:

Product Description: Mô tả của sản phẩm
List Price: Giá niêm yết của sản phẩm
Discount Percent: Tỷ lệ chiết khấu (phần trăm)
Khi người dùng nhấn vào nút Calculate Discount (Tính chiết khấu) thì sẽ đi đến trang /display-discount và hiển thị kết quả.

Trang kết quả sẽ hiển thị các thông tin ngươờ dùng nhập vào, kèm theo kết quả tính toán:

Discount Amount: Lượng chiết khấu
Discount Price: Giá sau khi đã được chiết khấu
Công thức tính chiết khấu là:

Discount Amount = List Price * Discount Percent * 0.01
Hướng dẫn
Bước 1: Tạo trang index.jsp với form bao gồm các trường như mô tả. Phương thức của form là POST.

Bước 2: Tạo DiscountServlet để nhận dữ liệu, tính toán và hiển thị kết quả.
</pre>
<form method="post" action="/display-discount">

    <label>Product Description</label><input type="text" name="txtProductDescription"></br></br>

    <label>List Price</label><input type="text" name="txtListPrice"></br></br>

    <label>Discount Percent</label><input type="text" name="txtDiscountPercent"></br></br>

    <input type="submit" name="btnSubmit" value="SEND">

</form>

</body>
</html>