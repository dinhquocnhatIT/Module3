use quanlisinhvien;
select address, count(studentId) as 'so luong hoc vien'
from student 
group by address;

-- Tính điểm trung bình các môn học của mỗi học viên bằng cách sử dụng hàm AVG
select student.studentId, student.studentName,avg(mark) as 'diem trung binh'
from student join mark on student.studentId = mark.studentId
group by studentId,studentName;

-- Hiển thị những bạn học viên co điểm trung bình các môn học lớn hơn 15 
select S.studentId,S.studentName,AVG(mark)
from student S join mark M on S.studentId = M.studentId
having avg(mark) > 15;

-- Hiển thị thông tin các học viên có điểm trung bình lớn nhất.
select S.studentId,S.studentName,avg(mark)
from student S join mark M on S.studentId = M.studentId
group by studentId,studentName
having avg(mark) >= all (select avg(mark) from mark group by mark.studentId);
