create database quanlibanhang;
use quanlibanhang;
create table customer (
cId int not null auto_increment primary key,
cName varchar(50) not null,
cAge int
);
create table orders(
oId int not null auto_increment primary key,
cId int not null,
oDate Date,
oTotalPrice float,
foreign key (cId) references customer(cId)
);
create table product (
pId int not null auto_increment primary key,
pName varchar(50) not null,
pPrice float
);
create table orderDetail(
oId int not null,
pId int not null,
odQTy int,
primary key (oId,pId),
foreign key (oId) references orders (oId),
foreign key (pId) references product(pId)
);
