create schema if not exists FinancialRisks;
use FinancialRisks;
create table Stock
(
	Ticker char(10),
	Date date,
    OpenPrice decimal(10,1),
	HighPrice decimal(10,1),
    LowPrice decimal(10,1),
    ClosePrice decimal(10,1),
    AdjClose decimal(10,1),
    Volume int
);

create table Credit
(
	ID int,
    Age int,
    Income int,
    Housing char(10),
    Tenure float,
    LoanIntent char(20),
    LoadGrade char(3),
    LoanAmount int,
    Rate float,
    Status boolean,
    LoaninIncome decimal(5,2),
    DefaultHist boolean,
    BeRecorded int,
primary key(ID)
);

drop table if exists Stock;
truncate table Stock;
drop table if exists Credit;
truncate table Credit;
select * from Stock;
select * from Credit;

