#Bài thực hành hàm thông dụng trong MySQL
#Bước 1: Sử dụng câu lệnh Use QuanLySinhVien để sử dụng cơ sở dữ liệu:
USE QuanLySinhVien;

#Bước 2: Sử dụng hàm count để hiển thị số lượng sinh viên ở từng nơi
SELECT Address, Count(StudentID) AS TongSoSinhVien
FROM student
GROUP BY Address;

#Bước 3: Tính điểm trung bình các môn học của mỗi học viên bằng cách sử dụng hàm AVG
#Nếu chỉ dùng JOIN sẽ bị thiếu những người chưa thi
#RIGHT JOIN sẽ liệt kê FULL bảng bên phải câu lệnh JOIN (dù NULL)
SELECT S.StudentID, S.StudentName, AVG(M.Mark) AS DiemTrungBinh
FROM Mark M RIGHT JOIN Student S on M.StudentID = S.StudentID
GROUP BY S.StudentID, S.StudentName;

#Bước 4: Hiển thị những bạn học viên co điểm trung bình các môn học lớn hơn 15
SELECT S.StudentID, S.StudentName, AVG(M.Mark) AS DiemTrungBinh
FROM Mark M RIGHT JOIN Student S on M.StudentID = S.StudentID
GROUP BY S.StudentID, S.StudentName
HAVING AVG(M.Mark)>15;

#Bước 5: Hiển thị thông tin các học viên có điểm trung bình lớn nhất.
SELECT S.StudentID, S.StudentName, AVG(M.Mark) AS DiemTrungBinh
FROM Mark M RIGHT JOIN Student S on M.StudentID = S.StudentID
GROUP BY S.StudentID, S.StudentName
HAVING AVG(M.Mark) >= ALL(SELECT AVG(Mark) FROM Mark group by StudentID);


SELECT *
FROM Mark;
