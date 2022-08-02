# Avg working year for each Department
create table p1(
emp_no int,

department varchar(100));

create table p2(
emp_id int,
Total_working_year int);

select G1.emp_no,G1.department,G2.emp_id,G2.Total_working_year from p1 G1 inner join p2 G2
on G1.emp_no = G2.emp_id
order by department;

select department,avg(total_working_year) from p1 G1 inner join p2 G2
on G1.emp_no = G2.emp_id
group by department; 