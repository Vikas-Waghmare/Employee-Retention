# Job Role Vs Work Life Balance
create table L1(
emp_no int,

jobrole varchar(100));

create table L2(
emp_id int,
work_life_balance int);


select count(L2.work_life_balance)/5036*100 as percent_of_wlb, L1.jobrole,
case 
     when work_life_balance = 1 then "excellent"
     when work_life_balance = 2 then "good"
     when work_life_balance = 3 then "average"
     when work_life_balance = 4 then "poor"
     end  as worklifebalance
from L1 inner join L2 on L1.emp_no = L2.emp_id
where jobrole = "manager" group by work_life_balance;

select count(L2.work_life_balance)/5036*100 as percent_of_wlb, L1.jobrole,
case 
     when work_life_balance = 1 then "excellent"
     when work_life_balance = 2 then "good"
     when work_life_balance = 3 then "average"
     when work_life_balance = 4 then "poor"
     end  as worklifebalance
from L1 inner join L2 on L1.emp_no = L2.emp_id
where jobrole in("Developer") group by work_life_balance;