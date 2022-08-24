insert into customer (cId,cName, cAge) 
values (1,'Minh QUan',10),
		(2,'Ngoc Oanh',20),
        (3,'Hong Ha',50);
insert into orders (oId,cId,oDate)
values	(1,1,'2006-03-21'),
		(2,2,'2006-03-23'),
        (3,1,'2006-03-16');
insert into product(pId,pName,pPrice)
values 	(1,'May Giat',3),
		(2,'Tu Lanh',5),
        (3,'Dieu Hoa',7),
        (4,'Quat',1),
        (5,'Bep Dien',2);
insert into orderDetail ( oId,pId,odQTY)
values (1,1,3),
		(1,3,7),
        (1,4,2),
        (2,1,1),
        (3,1,8),
        (2,5,4),
        (2,3,3);
select oId,oDate,oTotalPrice from orders;

-- --hien thi nguoi mua hang va danh sach san pham
select customer.cName,product.pName 
from customer join orders on customer.cId = orders.cId 
join orderdetail on orders.oID = orderdetail.oId 
join product on orderdetail.pId = product.pId;

-- hien thi khach hang khong mua san pham nao  
select customer.cName,count(orders.cId)
from customer left join orders on customer.cId = orders.cId 
group by customer.cName
having count(orders.cId) = 0;

-- hien thi tong hoa don theo so luong va gia tung oId
select orders.oId,orders.oDate, orderdetail.odQTy*product.pPrice as Total
from orders join orderdetail on orders.oId = orderdetail.oId join product on orderdetail.pId = product.pId;

-- --tinh tong hoa don theo id
select orders.oId,orders.oDate,sum(orderdetail.odQTy*product.pPrice) as sumTotalByoId
from orders join orderdetail on orders.oId = orderdetail.oId join product on orderdetail.pId = product.pId
group by orders.oId,orders.oDate;

-- hien thi tu ngay 20 tro len
select orders.oId,orders.oDate,sum(orderdetail.odQTy*product.pPrice) as sumTotalByoId
from orders join orderdetail on orders.oId = orderdetail.oId join product on orderdetail.pId = product.pId
group by orders.oId,orders.oDate
having oDate > '2006-03-20';




 



        
