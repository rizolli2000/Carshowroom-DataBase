create table carinfo
(CARID INT,Carmodel varchar(50),Makingyear int,ModelNumber int)
create table purchasedetails(CostumerName varchar(50),Carmodel varchar(50),Makingyear int)

insert into purchasedetails values
('venkatesh','Bmw',2021),
('Rizwan','Audi',2023),
('pranav','Nissan',2021),
('kamelesh','kia',2019),
('Ram','toyota',2018),
('sita','lexus',2019),
('sanika','Bmw',2020),
('wazia','audi',2019)

select*from purchasedetails

create table customerlocation(CostumerName varchar(50),locationid int,City varchar(50))

insert into customerlocation values
('venkatesh',89838,'Chennai'),
('Rizwan',83748,'Chennai'),
('kamelesh',8545,'Mumbai'),
('pranav',8542,'jonesberg'),
('Ram',9839,'banglore'),
('sita',8524,'Lucknow'),
('sanika',8548,'Pune'),
('wazia',8542,'vellore')

select*from customerlocation
select*from carinfo
select*from purchasedetails

Insert into carinfo values
(12,'audi',2022,12233)

Insert into carinfo values
(13,'bmw',2015,87779)

Insert into carinfo values
(14,'nissan',2013,88767)

Insert into carinfo values
(15,'toyata',2017,98979)

Insert into carinfo values
(16,'lexus',2018,76767)

Insert into carinfo values
(17,'suzuki',2014,67676)

Insert into carinfo values
(18,'kia',2019,8667)

Insert into carinfo values
(19,'mg',2020,4566)

select* 
from carinfo

select*
from carinfo

select*
from carinfo
where Carmodel='audi'

select*
from carinfo
where CARID>12

select*
from carinfo
where Carmodel='bmw' or Carmodel ='mg'

select*
from carinfo
where CARID not between 12 and 18


select*
from carinfo
where CARID <> 12 and CARID <> 13

select*
from carinfo
where Carmodel like 'b%' 

select*
from carinfo
where Carmodel like '%u%' or Carmodel like 'b%'

update CustomerDetails
set CustomerName='hasiba'
where CustomerName='sanika'

select*from CustomerDetails

update CustomerDetails
set CustomerName='samah'
where CustomerName='saisha'


select min (ModelNumber),max(CARID),CustomerName
from CustomerDetails
Group by CustomerName
order by CustomerName

select count(Carmodel) as totalmodels
from CustomerDetails

select distinct(ModelNumber)
from CustomerDetails
create table CustomerDetails
(CustomerName varchar(50),purchaseyear int,Carmodel varchar(50),CARID INT,ModelNumber int)

select*
from CustomerDetails

insert into CustomerDetails values
('kamelesh',2022,'kia',18,8667)

select*
from carinfo


insert into CustomerDetails values
('Lakshmi',2021,'bmw',13,87779)

insert into CustomerDetails values
('sanika',2022,'audi',12,12233)

insert into CustomerDetails values
('Rizwan',2021,'bmw',13,87779)

insert into CustomerDetails values
('pranav',2021,'kia',18,8667)

insert into CustomerDetails values
('saisha',2022,'nissan',14,88767)

select*
from carinfo
inner join CustomerDetails
ON carinfo.CARID=CustomerDetails.CARID

select*
from carinfo
right outer join CustomerDetails
on carinfo.ModelNumber=CustomerDetails.ModelNumber


update carinfo
set CARID=12 
where CARID=20

select COUNT(Makingyear)
from carinfo
group by Makingyear
having COUNT(Makingyear)>2022

select*
from CustomerDetails
inner join customerlocation
      on CustomerDetails.CustomerName=customerlocation.CostumerName

select purchaseyear,Carmodel
from CustomerDetails
union
select locationid,City
from customerlocation

select*
from purchasedetails


select*
from purchasedetails
where Makingyear=2019 


select Carmodel,Makingyear,
Case
   When Makingyear > 2020 'OLD'
     ELSE 'NewModel'
END
from purchasedetails
where Makingyear is not Null
Order By Makingyear


select Carmodel,Makingyear,
case
   when Makingyear > 2020  then 'old'  
   else 'new'
end
from purchasedetails
where Makingyear is not Null
Order By Makingyear

--THE END--







