use classicmodels;
select * from customers where customerName = 'Land of Toys Inc.';

-- Bằng lệnh này bạn sẽ nhận ra được với câu Query của bạn, điều gì đang xảy ra và kiểu kết hợp (Join) nào đang diễn ra bên trong.
explain select * from customers where customerName = 'Land of Toys Inc.';

-- thêm chỉ mục cho bảng customers 
alter table customers add index idx_customerName(customerName);
explain select * from customers where customerName = 'Land of Toys Inc.';
-- them index vao lastName. firstName
alter table customers add index idx_full_Name(contactLastName,contactFirstname);
explain select * from customers where contactFirstName = 'Jean' or contactFirstName = 'King';
ALTER TABLE customers DROP INDEX idx_full_name;
