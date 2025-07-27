use etl;
#1. Select all columns for all passengers in the Titanic dataset.
SELECT * FROM etl.titanic;
#2. Display the number of passengers in each class (1st, 2nd, 3rd).
select Pclass,count(*) 
from titanic 
group by pclass 
order by Pclass asc;
#3. Find the number of male and female passengers. 
select Sex,count(*) as count 
from titanic 
group by Sex 
order by count asc;
#4.Display the names of passengers who survived.
select name
from titanic 
where survived="survived";
#5. Find the average age of passengers. 
select avg(age)
from titanic ;
#6. List the names and ages of passengers who were younger than 18.
select name,age
from titanic 
where age<18;
#7. Display the number of passengers in each embarkation port (C, Q, S). 
SELECT embarked,count(*) 
FROM etl.titanic 
WHERE Embarked in ("c","Q","s") 
group by embarked;
#8. Find the highest fare paid by any passenger. 
select max(fare) 
from titanic;
#9. List the average age of passengers for each class. 
select pclass,round(avg(age),1) as average_age 
from titanic 
group by Pclass 
order by pclass;
#10. Display the passenger names and ages for those who survived and were in 1st class.
select name,age from titanic 
where pclass=1 and survived="survived"; 
#11. Find the number of passengers who paid more than 50 for their ticket.
select count(*) 
from titanic 
where fare>50;
#12. List the names of passengers who did not survive and were in 3rd class.
select name,age from titanic 
where pclass=3 and survived="died"; 
#13. Find the number of passengers with missing values in the "Age" column.
select count(*) from titanic where age is null;
#14. Display the passenger names and ages for those who embarked at port 'S' and survived. 
SELECT name,age
FROM etl.titanic 
WHERE Embarked="S" and survived="survived";
#15. Calculate the total number of passengers on board. 
select count(name) from titanic;
#16. List the average fare for each class.
select pclass,round(avg(fare),2) as averag_fare 
from titanic 
group by pclass 
order by pclass ;
#17. Display the passenger names and ages for those with a known age and a fare greater than 100. 
select name,age 
from titanic 
where age=50 and fare>100;
#18. Find the percentage of passengers who survived. 
select round((((select count(*) from titanic where survived="survived")/count(name))*100),2) as percntage_of_survival from titanic;
#19. List the names of passengers who were in 2nd class and had a fare less than 20.
select name from titanic where pclass=2 and fare<20;
#20. Display the passenger names and ages for those who did not survive and were in 1st class. 
select name,age from titanic where survived="died" and pclass=1;
#21. Find the number of passengers for each combination of class and gender. 
select Pclass, Sex, COUNT(*) as p_count
from titanic
group by Pclass, Sex
order by Pclass, Sex;
#22. List the names of passengers who survived and were in 3rd class with an age less than 20. 
select name,age 
from titanic 
where survived="survived" and pclass=3 and age<20;
#23. Display the passenger names for those with the name starting with 'Mr.' 
select name 
from titanic 
where name like "%Mr.%";
#24. Find the average age of male and female passengers. 
select sex,round(avg(age),2) as average_age 
from titanic 
group by sex;
#25. List the names of passengers who paid the highest fare.
select name from titanic where fare=(select max(fare) from titanic);
#26. Find the number of passengers for each embarkation port and class. 
select embarked,pclass,count(*) as count 
from titanic
where embarked  in("q","s","c")
group by embarked,pclass
order by embarked,pclass;
#27. Display the passenger names and ages for those who survived and paid more than 200 for their ticket.
select name,age 
from titanic 
where survived="survived" and fare>200;
#28. Find the average age of passengers who survived and those who did not.
select survived,round(avg(age),1) as average_age 
from titanic 
group by survived;
#29. List the names of passengers who were in 1st class and had an age greater than 50.
select name 
from titanic 
where pclass=1 and age>50;
#30. Display the passenger names for those with the name ending with 'sson'.
select name 
from titanic 
where name like "%sson"
