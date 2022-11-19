#bài tập HÀM THÔNG DỤNG
USE QuanLySinhVien;

#Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
SELECT SubID,SubName, max(Credit)
FROM `Subject`;

#Hiển thị các thông tin môn học có điểm thi lớn nhất.
SELECT MarkID, SubName, Max(Mark)
FROM Mark M JOIN `subject` S ON M.SubID = S.SubID;

#Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
SELECT S.StudentID, S.StudentName, C.ClassName, avg(M.Mark) AS DTB
FROM `Student` S LEFT JOIN `Mark` M ON S.StudentID = M.StudentID LEFT JOIN `Class` C ON C.ClassID = S.ClassID
GROUP BY S.StudentID
ORDER BY avg(M.Mark) DESC;

SELECT *
FROM Student;