USE `quanlysinhvien`;
#01-view ALL Student
SELECT *
FROM Student;

#02-view Student có Status=true
SELECT *
FROM student
WHERE Status = true;

#03-view subject có thời gian học <10
SELECT *
FROM subject
WHERE Credit < 10;

#04-view studentID, StudentName, ClassName(table Class)
SELECT S.StudentId, S.StudentName, C.ClassName
FROM student S join class C on S.ClassID = C.ClassID;

#05-hiển thị danh sách học viên lớp A1
SELECT S.StudentID, S.StudentName, C.ClassName
FROM student S join class C on S.ClassID = C.ClassID
WHERE C.ClassName = 'A1'; 

#06-Hiển thị điểm môn CF của các học viên

#061-Hiển thị tất cả các điểm đang có của học viên
SELECT S.StudentName, M.Mark, M.SubID, Sub.SubName
FROM mark M join student S on S.StudentID = M.StudentID join subject Sub on M.SubID = Sub.SubID;

#062-Sử dụng câu lệnh Where để hiển thị điểm môn CF của các học viên
SELECT S.StudentName, M.Mark, M.SubID, Sub.SubName
FROM mark M join student S on S.StudentID = M.StudentID join subject Sub on M.SubID = Sub.SubID
WHERE Sub.SubName = "CF";