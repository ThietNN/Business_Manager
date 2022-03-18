use business_manager;
create table product(
                        productID int primary key,
                        productName varchar(30),
                        productPrice int
);
create table customer(
                         customerID int primary key,
                         customerName varchar(20),
                         customerAge int
);
create table orders(
                       orderID int primary key,
                       customerID int,
                       orderDate date,
                       orderTotalPrice int,
                       foreign key (customerID) references customer(customerID)
);
create table orderDetail(
                            orderID int,
                            productID int,
                            orderQuantity int,
                            foreign key (orderID) references orders (orderID),
                            foreign key (productID) references product (productID)
);