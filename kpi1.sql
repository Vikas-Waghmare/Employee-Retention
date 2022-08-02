create database P45;
# find Avg Attrition rate for all Department
create table attrition(
attrition varchar(100),
department varchar(100)
);

select * from attrition;

select count(attrition) as Total_Yes_Attrition from attrition where attrition="yes";     #25105

select department,count(attrition) as yes_attrition from attrition where attrition = "yes" group by department; 

select(select count(attrition) from attrition
where attrition="yes")/count(attrition)*100 as Avg_Attrition_rate_all_dept 
from attrition; #50.21



