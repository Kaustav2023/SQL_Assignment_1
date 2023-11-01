--create table Assignment_1(
--Prefix varchar(2) UNIQUE,
--Suffix int UNIQUE
--);

--insert into Assignment_1(Prefix,Suffix)
--Values
--('US',6163),
--('IN',145015),
--('UK',370),
--('ML',13533),
--('SG',5483),
--('ID',44958),
--('RS',22),
--('UR',4)
-- USE DB001_PROD_SQL
--select * from Assignment_1
--select ltrim(rtrim('  twenty two ')),datalength(ltrim(rtrim('  twenty two  ')))
--alter table Assignment_1
--add ID varchar(12)
--select * from Assignment_1 update Assignment_1
--set ID = concat(prefix,replicate(0,10-len(suffix)),suffix)  


--create table Fin_Year
--( Date_of_Sales date)


Insert into Fin_Year (Date_of_Sales)
Values
('1-Mar-20'),
('1-Apr-20'),
('1-May-20'),
('1-Jun-20'),
('1-Jul-20'),
('1-Aug-20'),
('1-Sep-20'),
('1-Oct-20'),
('1-Nov-20'),
('1-Dec-20'),
('1-Jan-21'),
('1-Feb-21'),
('1-Mar-21'),
('1-Apr-21'),
('1-May-21'),
('1-Jun-21'),
('1-Jul-21'),
('1-Aug-21'),
('1-Sep-21'),
('1-Oct-21'),
('1-Nov-21'),
('1-Dec-21'),
('1-Jan-22'),
('1-Feb-22'),
('1-Mar-22'),
('1-Apr-22'),
('1-May-22'),
('1-Jun-22'),
('1-Jul-22')


select *,
FY=
case 
when month(date_of_sales)<4 then concat(datepart(YYYY,date_of_sales)-1,'-',Right(datepart(YYYY,date_of_sales),2))
when month(date_of_sales)>=4 then concat(datepart(YYYY,date_of_sales),'-',Right(datepart(YYYY,date_of_sales)+1,2))
--when month (date_of_sales)>=4 then concat(20,Right(date_of_sales,2)+1,'-',Right(date_of_sales,2))
end,
FY_1=
case
when month(date_of_sales)<4 then concat('FY',' ',RIGHT(datepart(YYYY,date_of_sales)-1,2),'-',RIGHT(datepart(YYYY,date_of_sales),2))
when month(date_of_sales)>=4 then concat('FY',' ',RIGHT(datepart(YYYY,date_of_sales),2),'-',RIGHT(datepart(YYYY,date_of_sales)+1,2))
end,
FY_2=
case
when month(date_of_sales)<4 then concat('FY','-',RIGHT(datepart(YYYY,date_of_sales),2))
when month(date_of_sales)>=4 then concat('FY','-',RIGHT(datepart(YYYY,date_of_sales)+1,2))
end
from Fin_Year

select Datepart(YYYY,getdate())