select * from student
where studentName like 'h%';
select * from class
where startDate like '%12%';
select * from subject
where credit between 3 and 5;
update quanlisinhvien.student
set classId = 2
where studentId = 1;
select student.studentName,subject.subName,mark.mark
from student join mark on student.studentId = mark.studentId join subject on mark.subId = subject.subId
order by  mark desc; 