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
    quantity int not null,
    subtotal int not null
    
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
select * from shoppingorder;


insert into orderlist(clientid, productName, quantity, subtotal) values ('1','Apple','2','3')

update clients set clientname = 'Garman Lao', phoneNumber = '8001352468', ClientEmail = 'GL@email.com' 
where id = 7;

Select id from clients where clientname = 'Aaron Lao' and phoneNumber = '4150981230'

drop table clients
