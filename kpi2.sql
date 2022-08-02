#Avg hourly rate of Male Research Scientist
create table avg_rate(
gender varchar(100),
hourly_rate int,
job_role varchar(100));

select * from avg_rate;

select avg(hourly_rate) from avg_rate; #115.4329

select job_role,gender,avg(hourly_rate) as avg_Hourly_rate 
from avg_rate where gender="male" and job_role= "research scientist"; #114.4469

