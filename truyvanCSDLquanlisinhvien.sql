select * from student
where status = true;
select * from subject
where credit < 10;
select s.studentName, s.studentId,c.className
from student s join class c on s.classId = c.classId
where c.className = 'A1';
select s.studentId,s.studentName,sub.subName,m.Mark
from student s join mark m on s.studentId = m.studentId join subject sub on m.subId = sub.subId;
select student.studentId,student.studentName,subject.subName,mark.mark
from student join mark on student.studentId = mark.studentId join subject on mark.subId = subject.subId
where subName = 'Cf';