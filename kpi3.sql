# Attrition rate vs monthly income stats
create table Table1(
emp_no int,
attrition varchar(100),
department varchar(100));

create table Table2(
emp_id int,
monthly_income varchar(100));

select G1.emp_no,G1.department,G1.attrition,G2.monthly_income from table1 G1 inner join table2 G2
on G1.emp_no = G2.emp_id
order by department;

select department,attrition,sum(monthly_income) from table1 G1 inner join table2 G2
on G1.emp_no = G2.emp_id
where attrition = "Yes" group by department; 

select department,attrition,sum(monthly_income) from table1 G1 inner join table2 G2
on G1.emp_no = G2.emp_id
where attrition = "No" group by department;



