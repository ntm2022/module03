USE `QuanLySinhVien`;
#Hiển thị tất cả các sinh viên có tên bắt đầu bảng ký tự ‘h’
SELECT *
FROM student
WHERE StudentName LIKE "h%";

#Hiển thị các thông tin lớp học có thời gian bắt đầu vào tháng 12.
SELECT *
FROM class
WHERE MONTH(startDate) = 12;

#Hiển thị tất cả các thông tin môn học có credit trong khoảng từ 3-5.
SELECT *
FROM subject
WHERE Credit between 3 AND 5;

#Thay đổi mã lớp(ClassID) của sinh viên có tên ‘Hung’ là 2.
UPDATE quanlysinhvien.student
SET ClassID = 2
WHERE Student.StudentName = 'Hung';

#Hiển thị các thông tin: StudentName, SubName, Mark. 
#Dữ liệu sắp xếp theo điểm thi (mark) giảm dần. nếu trùng sắp theo tên tăng dần.
SELECT S.StudentName, Sub.SubName, M.Mark
FROM Mark M join Subject Sub on Sub.SubID = M.SubID join student S on M.StudentID = S.StudentID
order by M.Mark desc, S.StudentName asc;