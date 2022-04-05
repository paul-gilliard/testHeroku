--  CLIENTS

  CREATE TABLE Clients
   (	 client_code   INTEGER, 
	 name_client  VARCHAR(50), 
	 name_contact  VARCHAR(30) DEFAULT NULL, 
	 surname_contact  VARCHAR(30) DEFAULT NULL, 
	 phone  VARCHAR(15), 
	 fax  VARCHAR(15), 
	 address1  VARCHAR(50), 
	 address2  VARCHAR(50) DEFAULT NULL, 
	 city  VARCHAR(50), 
	 region  VARCHAR(50) DEFAULT NULL, 
	 country  VARCHAR(50) DEFAULT NULL, 
	 zip_code  VARCHAR(10) DEFAULT NULL, 
	 sales_employee_code   INTEGER DEFAULT NULL, 
	 credit_limit   INTEGER DEFAULT NULL
   );

-- ORDER_DETAIL

  CREATE TABLE Order_detail 
   (	 order_code   INTEGER, 
	 product_code  VARCHAR(15), 
	 quantity   INTEGER, 
	 price_per_unit   INTEGER, 
	 line_number   INTEGER
   ) ;
   
--  EMPLOYEES

  CREATE TABLE Employees 
   (	 employee_code   INTEGER, 
	 name  VARCHAR(50), 
	 surname  VARCHAR(50), 
	 email  VARCHAR(100), 
	 office_code  VARCHAR(10 ), 
	 code_chief   INTEGER DEFAULT NULL, 
	 post  VARCHAR(50 ) DEFAULT NULL
   ) ;
   
--  PRODUCT_RANGES


  CREATE TABLE Product_ranges 
   (range_name  VARCHAR(50)
   ) ;


-- OFFICES

  CREATE TABLE Offices 
   (	 office_code  VARCHAR(10 ), 
	 city  VARCHAR(30), 
	 country  VARCHAR(50), 
	 region  VARCHAR(50) DEFAULT NULL, 
	 zip_code  VARCHAR(10), 
	 phone  VARCHAR(20), 
	 address1  VARCHAR(50), 
	 address2  VARCHAR(50) DEFAULT NULL
   );

--  PAYMENTS


  CREATE TABLE Payments
   (client_code INTEGER, 
	 payment_method VARCHAR(40), 
	 transaction_id  VARCHAR(50), 
	 payment_date  DATE, 
	 quantity INTEGER
   );
   
--  Orders

  CREATE TABLE Orders 
   (order_code   INTEGER, 
	order_date DATE, 
	 expected_date  DATE, 
	 delivery_date  DATE DEFAULT NULL, 
	 state  VARCHAR(15), 
	 comments VARCHAR(50), 
	 client_code   INTEGER
   );

-- PRODUCTS


 CREATE TABLE Products
   (product_code  VARCHAR(15), 
	name VARCHAR(70), 
	range_name VARCHAR(50), 
  dimension VARCHAR(25), 
	 supplier  VARCHAR(50) DEFAULT NULL, 
	 description  VARCHAR(50), 
	 stock   INTEGER, 
	 price_for_sale  INTEGER, 
	 supplier_price INTEGER  DEFAULT NULL
   );


   Insert into Clients (client_code,name_client,name_contact,surname_contact,phone,fax,address1,address2,city,region,country,zip_code,sales_employee_code,credit_limit) values (1,'DGPRODUCTIONS GARDEN','Daniel G','GoldFish','5556901745','5556901746','False Street 52 2 A',null,'San Francisco',null,'USA','24006',19,3000);
Insert into Clients (client_code,name_client,name_contact,surname_contact,phone,fax,address1,address2,city,region,country,zip_code,sales_employee_code,credit_limit) values (3,'Gardening Associates','Anne','Wright','5557410345','5557410346','Wall-e Avenue',null,'Miami','Miami','USA','24010',19,6000);
Insert into Clients (client_code,name_client,name_contact,surname_contact,phone,fax,address1,address2,city,region,country,zip_code,sales_employee_code,credit_limit) values (4,'Gerudo Valley','Link','Flaute','5552323129','5552323128','Oaks Avenue nº22',null,'New York',null,'USA','85495',22,12000);
Insert into Clients (client_code,name_client,name_contact,surname_contact,phone,fax,address1,address2,city,region,country,zip_code,sales_employee_code,credit_limit) values (5,'Tendo Garden','Akane','Tendo','55591233210','55591233211','Null Street nº69',null,'Miami',null,'USA','696969',22,600000);
Insert into Clients (client_code,name_client,name_contact,surname_contact,phone,fax,address1,address2,city,region,country,zip_code,sales_employee_code,credit_limit) values (6,'Lasas S.A.','Antonio','Lasas','34916540145','34914851312','C/Leganes 15',null,'Fuenlabrada','Madrid','Spain','28945',8,154310);
Insert into Clients (client_code,name_client,name_contact,surname_contact,phone,fax,address1,address2,city,region,country,zip_code,sales_employee_code,credit_limit) values (7,'Beragua','Jose','Bermejo','654987321','916549872','C/pintor segundo','Getafe','Madrid','Madrid','Spain','28942',11,20000);
Insert into Clients (client_code,name_client,name_contact,surname_contact,phone,fax,address1,address2,city,region,country,zip_code,sales_employee_code,credit_limit) values (8,'Club Golf Puerta del hierro','Paco','Lopez','62456810','919535678','C/sinesio delgado','Madrid','Madrid','Madrid','Spain','28930',11,40000);
Insert into Clients (client_code,name_client,name_contact,surname_contact,phone,fax,address1,address2,city,region,country,zip_code,sales_employee_code,credit_limit) values (9,'Naturagua','Guillermo','Rengifo','689234750','916428956','C/majadahonda','Boadilla','Madrid','Madrid','Spain','28947',11,32000);
Insert into Clients (client_code,name_client,name_contact,surname_contact,phone,fax,address1,address2,city,region,country,zip_code,sales_employee_code,credit_limit) values (10,'DaraDistribuciones','David','Serrano','675598001','916421756','C/azores','Fuenlabrada','Madrid','Madrid','Spain','28946',11,50000);


-- ORDER_DETAIl
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (1,'FR-67',10,70,3);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (1,'OR-127',40,4,1);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (1,'OR-141',25,4,2);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (1,'OR-241',15,19,4);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (1,'OR-99',23,14,5);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (2,'FR-4',3,29,6);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (2,'FR-40',7,8,7);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (2,'OR-140',50,4,3);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (2,'OR-141',20,5,2);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (2,'OR-159',12,6,5);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (2,'OR-227',67,64,1);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (2,'OR-247',5,462,4);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (3,'FR-48',120,9,6);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (3,'OR-122',32,5,4);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (3,'OR-123',11,5,5);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (3,'OR-213',30,266,1);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (3,'OR-217',15,65,2);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (3,'OR-218',24,25,3);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (4,'FR-31',12,8,7);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (4,'FR-34',42,8,6);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (4,'FR-40',42,9,8);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (4,'OR-152',3,6,5);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (4,'OR-155',4,6,3);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (4,'OR-156',17,9,4);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (4,'OR-157',38,10,2);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (4,'OR-222',21,59,1);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (8,'FR-106',3,11,1);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (8,'FR-108',1,32,2);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (8,'FR-11',10,100,3);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (9,'AR-001',80,1,3);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (9,'AR-008',450,1,2);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (9,'FR-106',80,8,1);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (9,'FR-69',15,91,2);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (10,'FR-82',5,70,2);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (10,'FR-91',30,75,1);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (10,'OR-234',5,64,3);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (11,'AR-006',180,1,3);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (11,'OR-247',80,8,1);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (12,'AR-009',290,1,1);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (13,'11679',5,14,1);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (13,'21636',12,14,2);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (13,'FR-11',5,100,3);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (14,'FR-100',8,11,2);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (14,'FR-13',13,57,1);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (15,'FR-84',4,13,3);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (15,'OR-101',2,6,2);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (15,'OR-156',6,10,1);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (15,'OR-203',9,10,4);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (16,'30310',12,12,1);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (16,'FR-36',10,9,2);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (17,'11679',5,14,1);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (17,'22225',5,12,3);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (17,'FR-37',5,9,2);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (17,'FR-64',5,22,4);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (17,'OR-136',5,18,5);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (18,'22225',4,12,2);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (18,'FR-22',2,4,1);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (18,'OR-159',10,6,3);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (19,'30310',9,12,5);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (19,'FR-23',6,8,4);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (19,'FR-75',1,32,2);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (19,'FR-84',5,13,1);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (19,'OR-208',20,4,3);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (20,'11679',14,14,1);
Insert into ORDER_DETAIL (order_code,product_code,quantity,price_per_unit,line_number) values (20,'30310',8,12,2);



-- EMPLOYEES
Insert into Employees (employee_code,name,surname,email,office_code,code_chief,post) values (1,'Marcos','Magana','marcos@jardineria.es','TAL-ES',null,'CEO');
Insert into Employees (employee_code,name,surname,email,office_code,code_chief,post) values (2,'Elizabeth','Collins','ecollins@garden.com','PAR-FR',null,'CEO');
Insert into Employees (employee_code,name,surname,email,office_code,code_chief,post) values (3,'Hilary','Washington','hwashington@gardening.com','BOS-USA',3,'Office Manager');
Insert into Employees (employee_code,name,surname,email,office_code,code_chief,post) values (4,'Laurent','Serra','lserra@gardening.com','PAR-FR',15,'Sales Representative');
Insert into Employees (employee_code,name,surname,email,office_code,code_chief,post) values (5,'John','Walton','jwalton@gardening.com','LON-UK',26,'Sales Representative');


-- PRODUCT_RANGES
Insert into Product_ranges (range_name) values ('Aromatics');
Insert into Product_ranges (range_name) values ('Fruit trees');
Insert into Product_ranges (range_name) values ('Herbaceae');
Insert into Product_ranges (range_name) values ('Tools');
Insert into Product_ranges (range_name) values ('Ornamentals');

-- OFFICES

Insert into Offices (office_code,city,country,region,zip_code,phone,address1,address2) values ('BCN-ES','Barcelona','Spain','Barcelona','08019','+34 93 3561182','Avenida Diagonal, 38','3A escalera Derecha');
Insert into Offices (office_code,city,country,region,zip_code,phone,address1,address2) values ('BOS-USA','Boston','EEUU','MA','02108','+1 215 837 0825','1550 Court Place','Suite 102');
Insert into Offices (office_code,city,country,region,zip_code,phone,address1,address2) values ('LON-UK','Londres','Inglaterra','EMEA','EC2N 1HN','+44 20 78772041','52 Old Broad Street','Ground Floor');
Insert into Offices (office_code,city,country,region,zip_code,phone,address1,address2) values ('MAD-ES','Madrid','Spain','Madrid','28032','+34 91 7514487','Bulevar Indalecio Prieto, 32',null);
Insert into Offices (office_code,city,country,region,zip_code,phone,address1,address2) values ('PAR-FR','Paris','Francia','EMEA','75017','+33 14 723 4404','29 Rue Jouffroy d''abbans',null);
Insert into Offices (office_code,city,country,region,zip_code,phone,address1,address2) values ('SFC-USA','San Francisco','EEUU','CA','94080','+1 650 219 4782','100 Market Street','Suite 300');
Insert into Offices (office_code,city,country,region,zip_code,phone,address1,address2) values ('SYD-AU','Sydney','Australia','APAC','NSW 2010','+61 2 9264 2451','5-11 Wentworth Avenue','Floor #2');
Insert into Offices (office_code,city,country,region,zip_code,phone,address1,address2) values ('TAL-ES','Talavera de la Reina','Spain','Castilla-LaMancha','45632','+34 925 867231','Francisco Aguirre, 32','5º piso (exterior)');
Insert into Offices (office_code,city,country,region,zip_code,phone,address1,address2) values ('TOK-JP','Tokyo','Japón','Chiyoda-Ku','102-8578','+81 33 224 5000','4-1 Kioicho',null);

-- PAYMENTS

Insert into Payments (client_code,payment_method,transaction_id,payment_date,quantity) values (1,'PayPal','ak-std-000001','10/12/08',2000);
Insert into Payments (client_code,payment_method,transaction_id,payment_date,quantity) values (1,'PayPal','ak-std-000002','12/10/08',2000);
Insert into Payments (client_code,payment_method,transaction_id,payment_date,quantity) values (3,'PayPal','ak-std-000003','16/01/09',5000);
Insert into Payments (client_code,payment_method,transaction_id,payment_date,quantity) values (3,'PayPal','ak-std-000004','16/02/09',5000);
Insert into Payments (client_code,payment_method,transaction_id,payment_date,quantity) values (3,'PayPal','ak-std-000005','19/02/09',926);
Insert into Payments (client_code,payment_method,transaction_id,payment_date,quantity) values (4,'PayPal','ak-std-000006','08/01/07',20000);
Insert into Payments (client_code,payment_method,transaction_id,payment_date,quantity) values (4,'PayPal','ak-std-000007','08/01/07',20000);
Insert into Payments (client_code,payment_method,transaction_id,payment_date,quantity) values (4,'PayPal','ak-std-000008','08/01/07',20000);
Insert into Payments (client_code,payment_method,transaction_id,payment_date,quantity) values (4,'PayPal','ak-std-000009','08/01/07',20000);
Insert into Payments (client_code,payment_method,transaction_id,payment_date,quantity) values (4,'PayPal','ak-std-000010','08/01/07',1849);
Insert into Payments (client_code,payment_method,transaction_id,payment_date,quantity) values (5,'Currency','ak-std-000011','18/01/06',23794);
Insert into Payments (client_code,payment_method,transaction_id,payment_date,quantity) values (7,'Cheque','ak-std-000012','13/01/09',2390);
Insert into Payments (client_code,payment_method,transaction_id,payment_date,quantity) values (9,'PayPal','ak-std-000013','06/01/09',929);


-- ORDERS

Insert into Orders (order_code,order_date,expected_date,delivery_date,state,client_code) values (1,'17/01/06','19/01/06','19/01/06','Delivered',5);
Insert into Orders (order_code,order_date,expected_date,delivery_date,state,client_code) values (2,'23/10/07','28/10/07','26/10/07','Delivered',5);
Insert into Orders (order_code,order_date,expected_date,delivery_date,state,client_code) values (3,'20/06/08','25/06/08',null,'Rejected',5);
Insert into Orders (order_code,order_date,expected_date,delivery_date,state,client_code) values (4,'20/01/09','26/01/09',null,'Pending',5);
Insert into Orders (order_code,order_date,expected_date,delivery_date,state,client_code) values (8,'09/11/08','14/11/08','14/11/08','Delivered',1);
Insert into Orders (order_code,order_date,expected_date,delivery_date,state,client_code) values (9,'22/12/08','27/12/08','28/12/08','Delivered',1);
Insert into Orders (order_code,order_date,expected_date,delivery_date,state,client_code) values (10,'15/01/09','20/01/09',null,'Pending',3);
Insert into Orders (order_code,order_date,expected_date,delivery_date,state,client_code) values (11,'20/01/09','27/01/09',null,'Pending',1);
Insert into Orders (order_code,order_date,expected_date,delivery_date,state,client_code) values (12,'22/01/09','27/01/09',null,'Pending',1);
Insert into Orders (order_code,order_date,expected_date,delivery_date,state,client_code) values (13,'12/01/09','14/01/09','15/01/09','Delivered',7);
Insert into Orders (order_code,order_date,expected_date,delivery_date,state,client_code) values (14,'02/01/09','02/01/09',null,'Rejected',7);
Insert into Orders (order_code,order_date,expected_date,delivery_date,state,client_code) values (15,'09/01/09','12/01/09','11/01/09','Delivered',7);
Insert into Orders (order_code,order_date,expected_date,delivery_date,state,client_code) values (16,'06/01/09','07/01/09','15/01/09','Delivered',7);
Insert into Orders (order_code,order_date,expected_date,delivery_date,state,client_code) values (17,'08/01/09','09/01/09','11/01/09','Delivered',7);
Insert into Orders (order_code,order_date,expected_date,delivery_date,state,client_code) values (18,'05/01/09','06/01/09','07/01/09','Delivered',9);
Insert into Orders (order_code,order_date,expected_date,delivery_date,state,client_code) values (19,'18/01/09','12/02/09',null,'Pending',9);
Insert into Orders (order_code,order_date,expected_date,delivery_date,state,client_code) values (20,'20/01/09','15/02/09',null,'Pending',9);


-- PRODUCTS

Insert into Products (product_code,name,range_name,dimension,supplier,stock,price_for_sale,supplier_price) values ('11679','Sierra de Poda 400MM','Tools','0,258','HiperGarden Tools',15,14,11);
Insert into Products (product_code,name,range_name,dimension,supplier,stock,price_for_sale,supplier_price) values ('21636','Pala','Tools','0,156','HiperGarden Tools',15,14,13);
Insert into Products (product_code,name,range_name,dimension,supplier,stock,price_for_sale,supplier_price) values ('22225','Rastrillo de Jardín','Tools','1,064','HiperGarden Tools',15,12,11);
Insert into Products (product_code,name,range_name,dimension,supplier,stock,price_for_sale,supplier_price) values ('30310','Azadón','Tools','0,168','HiperGarden Tools',15,12,11);
Insert into Products (product_code,name,range_name,dimension,supplier,stock,price_for_sale,supplier_price) values ('AR-001','Ajedrea','Aromatics','15-20','Murcia Seasons',140,1,0);
Insert into Products (product_code,name,range_name,dimension,supplier,stock,price_for_sale,supplier_price) values ('AR-002','Lavándula Dentata','Aromatics','15-20','Murcia Seasons',140,1,0);
Insert into Products (product_code,name,range_name,dimension,supplier,stock,price_for_sale,supplier_price) values ('AR-003','Mejorana','Aromatics','15-20','Murcia Seasons',140,1,0);
Insert into Products (product_code,name,range_name,dimension,supplier,stock,price_for_sale,supplier_price) values ('AR-004','Melissa ','Aromatics','15-20','Murcia Seasons',140,1,0);
Insert into Products (product_code,name,range_name,dimension,supplier,stock,price_for_sale,supplier_price) values ('FR-11','Limonero 30/40','Fruit trees',null,'NaranjasValencianas.com',15,100,80);
Insert into Products (product_code,name,range_name,dimension,supplier,stock,price_for_sale,supplier_price) values ('FR-12','Kunquat ','Fruit trees',null,'NaranjasValencianas.com',15,21,16);
Insert into Products (product_code,name,range_name,dimension,supplier,stock,price_for_sale,supplier_price) values ('FR-13','Kunquat  EXTRA con FRUTA','Fruit trees','150-170','NaranjasValencianas.com',15,57,45);
Insert into Products (product_code,name,range_name,dimension,supplier,stock,price_for_sale,supplier_price) values ('FR-53','Peral Blanq. de Aranjuez','Fruit trees',null,'Fruit trees Talavera S.A',400,8,6);
Insert into Products (product_code,name,range_name,dimension,supplier,stock,price_for_sale,supplier_price) values ('FR-54','Níspero Tanaca','Fruit trees',null,'Fruit trees Talavera S.A',400,9,7);
Insert into Products (product_code,name,range_name,dimension,supplier,stock,price_for_sale,supplier_price) values ('FR-63','Cerezo','Fruit trees','8/10','Jerte Distribuciones S.L.',300,11,8);
Insert into Products (product_code,name,range_name,dimension,supplier,stock,price_for_sale,supplier_price) values ('FR-76','Granado','Fruit trees','14/16','Fruit trees Talavera S.A',50,49,39);
Insert into Products (product_code,name,range_name,dimension,supplier,stock,price_for_sale,supplier_price) values ('FR-77','Granado','Fruit trees','16/18','Fruit trees Talavera S.A',50,70,56);
Insert into Products (product_code,name,range_name,dimension,supplier,stock,price_for_sale,supplier_price) values ('FR-78','Higuera','Fruit trees','8/10','Fruit trees Talavera S.A',50,15,12);
Insert into Products (product_code,name,range_name,dimension,supplier,stock,price_for_sale,supplier_price) values ('FR-79','Higuera','Fruit trees','10/12','Fruit trees Talavera S.A',50,22,17);
Insert into Products (product_code,name,range_name,dimension,supplier,stock,price_for_sale,supplier_price) values ('FR-55','Olivo Cipresino','Fruit trees',null,'Fruit trees Talavera S.A',400,8,6);
Insert into Products (product_code,name,range_name,dimension,supplier,stock,price_for_sale,supplier_price) values ('FR-56','Nectarina','Fruit trees',null,'Fruit trees Talavera S.A',400,8,6);
Insert into Products (product_code,name,range_name,dimension,supplier,stock,price_for_sale,supplier_price) values ('FR-57','Kaki Rojo Brillante','Fruit trees',null,'NaranjasValencianas.com',400,9,7);
Insert into Products (product_code,name,range_name,dimension,supplier,stock,price_for_sale,supplier_price) values ('FR-61','Albaricoquero','Fruit trees','14/16','Melocotones de Cieza S.A.',200,49,39);
Insert into Products (product_code,name,range_name,dimension,supplier,stock,price_for_sale,supplier_price) values ('FR-62','Albaricoquero','Fruit trees','16/18','Melocotones de Cieza S.A.',200,70,56);
Insert into Products (product_code,name,range_name,dimension,supplier,stock,price_for_sale,supplier_price) values ('FR-25','Albaricoquero Moniqui','Fruit trees',null,'Melocotones de Cieza S.A.',400,8,6);
Insert into Products (product_code,name,range_name,dimension,supplier,stock,price_for_sale,supplier_price) values ('FR-26','Albaricoquero Kurrot','Fruit trees',null,'Melocotones de Cieza S.A.',400,8,6);
Insert into Products (product_code,name,range_name,dimension,supplier,stock,price_for_sale,supplier_price) values ('FR-27','Cerezo Burlat','Fruit trees',null,'Jerte Distribuciones S.L.',400,8,6);
Insert into Products (product_code,name,range_name,dimension,supplier,stock,price_for_sale,supplier_price) values ('FR-28','Cerezo Picota','Fruit trees',null,'Jerte Distribuciones S.L.',400,8,6);
Insert into Products (product_code,name,range_name,dimension,supplier,stock,price_for_sale,supplier_price) values ('FR-29','Cerezo Napoleón','Fruit trees',null,'Jerte Distribuciones S.L.',400,8,6);
Insert into Products (product_code,name,range_name,dimension,supplier,stock,price_for_sale,supplier_price) values ('FR-35','Ciruelo Claudia Negra','Fruit trees',null,'Fruit trees Talavera S.A',400,8,6);
Insert into Products (product_code,name,range_name,dimension,supplier,stock,price_for_sale,supplier_price) values ('FR-36','Granado Mollar de Elche','Fruit trees',null,'Fruit trees Talavera S.A',400,9,7);
Insert into Products (product_code,name,range_name,dimension,supplier,stock,price_for_sale,supplier_price) values ('FR-37','Higuera Napolitana','Fruit trees',null,'Fruit trees Talavera S.A',400,9,7);
Insert into Products (product_code,name,range_name,dimension,supplier,stock,price_for_sale,supplier_price) values ('FR-38','Higuera Verdal','Fruit trees',null,'Fruit trees Talavera S.A',400,9,7);
Insert into Products (product_code,name,range_name,dimension,supplier,stock,price_for_sale,supplier_price) values ('FR-39','Higuera Breva','Fruit trees',null,'Fruit trees Talavera S.A',400,9,7);
Insert into Products (product_code,name,range_name,dimension,supplier,stock,price_for_sale,supplier_price) values ('FR-4','Naranjo calibre 8/10','Fruit trees',null,'NaranjasValencianas.com',15,29,23);
Insert into Products (product_code,name,range_name,dimension,supplier,stock,price_for_sale,supplier_price) values ('FR-40','Manzano Starking Delicious','Fruit trees',null,'Fruit trees Talavera S.A',400,8,6);
Insert into Products (product_code,name,range_name,dimension,supplier,stock,price_for_sale,supplier_price) values ('FR-41','Manzano Reineta','Fruit trees',null,'Fruit trees Talavera S.A',400,8,6);
Insert into Products (product_code,name,range_name,dimension,supplier,stock,price_for_sale,supplier_price) values ('FR-42','Manzano Golden Delicious','Fruit trees',null,'Fruit trees Talavera S.A',400,8,6);
Insert into Products (product_code,name,range_name,dimension,supplier,stock,price_for_sale,supplier_price) values ('FR-43','Membrillero Gigante de Wranja','Fruit trees',null,'Fruit trees Talavera S.A',400,8,6);
Insert into Products (product_code,name,range_name,dimension,supplier,stock,price_for_sale,supplier_price) values ('FR-44','Melocotonero Spring Crest','Fruit trees',null,'Melocotones de Cieza S.A.',400,8,6);
Insert into Products (product_code,name,range_name,dimension,supplier,stock,price_for_sale,supplier_price) values ('OR-104','Mimosa Semilla Cyanophylla    ','Ornamentals','200-225','Viveros EL OASIS',100,10,8);


--  Constraints for Table Payments

ALTER TABLE Payments ADD PRIMARY KEY (client_code, transaction_id);


--  Constraints for Table Offices


ALTER TABLE Offices ADD PRIMARY KEY (office_code);
  
--  Constraints for Table Employees

ALTER TABLE Employees ADD PRIMARY KEY (employee_code);


--  Constraints for Table Clients

  ALTER TABLE Clients ADD PRIMARY KEY (client_code);
  
--  Constraints for Table ORDER_DETAIL

  ALTER TABLE ORDER_DETAIL ADD PRIMARY KEY (order_code, product_code);
  

--  Constraints for Table Products

  ALTER TABLE Products ADD PRIMARY KEY (product_code);

--  Constraints for Table Orders


  ALTER TABLE Orders ADD PRIMARY KEY (order_code);
  
--  Constraints for Table Product_ranges

  ALTER TABLE Product_ranges ADD PRIMARY KEY (range_name);
