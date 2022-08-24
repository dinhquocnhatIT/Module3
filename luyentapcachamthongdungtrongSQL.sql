use quanlisinhvien;
-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
select subId,subName,max(credit)
from subject
group by subId,subName
having max(credit) >= all( select max(credit) from subject);

-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
select subject.subId,subName,credit,status,max(mark)
from subject join mark on subject.subId = mark.subId
group by subId,subName
having max(mark) >= all (select max(mark) from mark group by mark.subId);

-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
select student.studentId,student.StudentName,student.address,student.phone,student.status,student.classId, avg(mark),mark.mark
from student join mark on student.studentId = mark.studentId
group by student.studentId,student.studentName
order by mark desc;