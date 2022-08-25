#tao delimiter ko tham so vao ra
DELIMITER //
create procedure findAllCustomers ()
begin 
select * from customers where customerNumber = 175;
end //
-- drop procedure if exists findAllCustomers;
#delimiter mot tham so truyen vao

DELIMITER // 
CREATE PROCEDURE getCusById (
IN cusNum int(11)
)
begin 
select * from customers where customerNumber = cusNum;
end//

#delimiter voi 2 tham so vao ra
DELIMITER //
CREATE PROCEDURE GetCustomersCountBycity(
IN in_city varchar(50),
out total int )
begin 
select count(customerNumber) into total  from customers where city = in_city;
end // 

#delimiter voi tham so inout
DELIMITER //
CREATE PROCEDURE Setcounter (
INOUT counter int,
IN inc int )
begin 
set counter = counter + inc ;
end //

