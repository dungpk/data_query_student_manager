use quanlysinhvien;

select *from student;

select *from student
where status = true;

select *from subject 
where credit < 10;


select s.studentID,s.studentName,c.className,s.classID
from student s join class c 
on s.classID = c.classID;

select s.studentID,studentName,c.className
from student s join class c on s.classID = c.classID
where c.className = 'A1';

-- Hien thi mon CF cua hoc vien
select s.studentID,s.studentName,sub.subName,M.mark
from student s join mark m
 on s.studentid = m.studentID join subject sub on m.subID = sub.subID;
 
select s.studentID,s.studentName,sub.subname,m.mark
from student s join mark m 
on s.studentID = m.studentID join subject  sub 
on m.subID = sub.subID
where sub.subname = 'CF';
