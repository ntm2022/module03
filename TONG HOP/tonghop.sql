#[Bài tập] View, Index, Store Procedure

#Bước 1: Tạo cơ sở dữ liệu demo
CREATE database demo;

#Bước 2: Tạo bảng Products với các trường dữ liệu sau:
/*
Id
productCode
productName
productPrice
productAmount
productDescription
productStatus
*/
USE `demo`;
CREATE TABLE `Products`(
Id int primary key not null auto_increment,
productCode char(10),
productName varchar(60),
productPrice float,
productAmount int,
productDescription varchar(100),
productStatus boolean
);

#Chèn một số dữ liệu mẫu cho bảng Products.
INSERT INTO `Products` (productCode, productName, productPrice, productAmount, productDescription, productStatus) 
VALUES ("p1", "ban chai", 10000, 2, "dung danh rang", 1);
INSERT INTO `products` VALUES (1,'p1','ban chai',10000,2,'dung danh rang',1),
(2,'p2','dep cao su',45000,10,'di trong nha',1),
(3,'p3','ban phim',120000,5,'ket noi USB',1),
(4,'p4','but bi',10000,12,'15 x 20',1),
(5,'p5','khan giay',33000,33,'giay rut',0);

#Bước 3
#Tạo Composite Index trên bảng Products (sử dụng 2 cột productName và productPrice)
CREATE UNIQUE INDEX idx_productCode ON Products(productCode);

#Tạo Composite Index trên bảng Products (sử dụng 2 cột productName và productPrice)
CREATE INDEX idx_NamePrice ON `Products`(`productName`, `productPrice`);

#Sử dụng câu lệnh EXPLAIN để biết được câu lệnh SQL của bạn thực thi như nào
EXPLAIN SELECT * FROM Products;

#Bước 4:
#Tạo view lấy về các thông tin: productCode, productName, productPrice, productStatus từ bảng products.
CREATE VIEW view_products AS
SELECT productCode, productName, productPrice, productStatus
FROM products;

#Tiến hành sửa đổi view
UPDATE view_products
SET productName = "ban phim"
WHERE productCode = "p3";

#Tiến hành xoá view
DROP VIEW `view_products`;

SELECT * FROM `view_products`;

#Bước 5:
#Tạo store procedure lấy tất cả thông tin của tất cả các sản phẩm trong bảng product
DELIMITER //
CREATE PROCEDURE getAll()
BEGIN
SELECT * FROM `products`;
END//
DELIMITER ;

CALL getAll();

#Tạo store procedure thêm một sản phẩm mới
DELIMITER //
CREATE PROCEDURE addProduct()
BEGIN
INSERT INTO `Products` (productCode, productName, productPrice, productAmount, productDescription, productStatus)
VALUES ("p6", "lich block", 50000, 12, "15 x 20", 1);
END//
DELIMITER ;

CALL addProduct();
#Tạo store procedure sửa thông tin sản phẩm theo id
DELIMITER //
CREATE PROCEDURE editProduct(IN idNum INT)
BEGIN
UPDATE `products`
SET productName = "gi cung duoc"
WHERE idNum = Id;
END//
DELIMITER ;

CALL editProduct(4);

#Tạo store procedure xoá sản phẩm theo id
DELIMITER //
CREATE PROCEDURE delProduct(IN idNum INT)
BEGIN
DELETE FROM `products`
WHERE Id = idNum;
END//
DELIMITER ;

CALL delProduct(4);

SELECT * FROM `Products`;