create table clients
(
    id serial primary key,
    ClientName varchar(100) not null,
    PhoneNumber varchar(100) not null,
    ClientEmail varchar(100) not null
);

create table orderlist 
(
    clientid int REFERENCES clients(id),
    productName varchar(100) not null,
    quantity int not null
);

create table leftoverorderlist
(
    clientid int REFERENCES clients(id),
    productName varchar(100) not null,
    quantity int not null
);

create table states
(
    clientid int REFERENCES clients(id),
    productName varchar(100) not null,
    quantity int not null,
    statesofItem varchar(100) not null
);

create table shoppingorder
(
    orderid serial primary key,
    clientid int REFERENCES clients(id),
    ClientName varchar(100) not null,
    PhoneNumber varchar(100) not null,
    ClientEmail varchar(100) not null,
    datetime1 varchar(100) not null,
    pegaCost varchar(100) not null,
    GSCost varchar(100) not null,
    total varchar(100) not null
);

select * from clients;
select * from orderlist;
select * from leftoverorderlist;
select * from states;
select * from shoppingorder;


insert into leftoverorderlist(clientid, productName, quantity) values ('4','Apple','1')

update clients set clientname = 'Garman Lao', phoneNumber = '8001352468', ClientEmail = 'GL@email.com' where id = 7;

Select * from orderlist where clientid =  '4'

drop table clients;
drop table orderlist;
drop table leftoverorderlist;
drop table states;
drop table shoppingorder

Delete from leftoverorderlist;
Delete from orderlist;
Delete from states;
Delete from shoppingorder;

