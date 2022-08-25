#tao view customer
create view customer_view as
select customerNumber, customerName, phone from customers;
#hien thi view
select * from customer_view;

#cap nhat view
create or replace view customer_view as 
select customerNumber,customerName,contactFirstName, contactLastName, phone from customers
where city = 'nantes';

drop view customer_view;

