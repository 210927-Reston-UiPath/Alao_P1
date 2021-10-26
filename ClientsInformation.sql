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


create table shoppingorder
(
    clientid int REFERENCES clients(id),
    orderid varchar(20) not null,
    datatime varchar(20) not null,
    total real not null
);

select * from clients;
select * from orderlist;
select * from leftoverorderlist;
select * from shoppingorder;


insert into orderlist(clientid, productName, quantity) values ('4','Veggie','4')

update clients set clientname = 'Garman Lao', phoneNumber = '8001352468', ClientEmail = 'GL@email.com' where id = 7;

Select * from orderlist where clientid =  '4'

drop table orderlist 
Delete from leftoverorderlist where clientid = '4'
