--------------------------------------------------------
--  File created - Friday-April-01-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table SAMAZON
--------------------------------------------------------

  CREATE TABLE "ORA1"."SAMAZON" 
   (	"PRODUCTID" VARCHAR2(20 BYTE), 
	"PRODUCTNAME" VARCHAR2(40 BYTE), 
	"PRODUCTDESCRIPTION" VARCHAR2(100 BYTE), 
	"PRODUCTPRICE" NUMBER, 
	"PRODUCTIMAGE" VARCHAR2(150 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into ORA1.SAMAZON
SET DEFINE OFF;
Insert into ORA1.SAMAZON (PRODUCTID,PRODUCTNAME,PRODUCTDESCRIPTION,PRODUCTPRICE,PRODUCTIMAGE) values ('1A000','PRODUCTNAME1','desc:great buy',30,'http://www.webstaurantstore.com/images/products/xxl/50046/584953.jpg');
Insert into ORA1.SAMAZON (PRODUCTID,PRODUCTNAME,PRODUCTDESCRIPTION,PRODUCTPRICE,PRODUCTIMAGE) values ('1A001','coke','desc:great buy',30,'http://p.fod4.com/p/media/5c1bf0686b/sc3D48jTBeRyL5sCzHJ6_can%20of%20coke.jpg');
Insert into ORA1.SAMAZON (PRODUCTID,PRODUCTNAME,PRODUCTDESCRIPTION,PRODUCTPRICE,PRODUCTIMAGE) values ('1A002',' Diet coke','desc:great buy',30,'http://www.coca-colaindia.com/wp-content/themes/73002/includes/img/dietcocacolabottle.png');
Insert into ORA1.SAMAZON (PRODUCTID,PRODUCTNAME,PRODUCTDESCRIPTION,PRODUCTPRICE,PRODUCTIMAGE) values ('1A003','cherry coke','desc:great buy',30,'http://www.coca-colaproductfacts.com/content/dam/productfacts/us/productDetails/ProductImages/cherrycoke_12.png');
Insert into ORA1.SAMAZON (PRODUCTID,PRODUCTNAME,PRODUCTDESCRIPTION,PRODUCTPRICE,PRODUCTIMAGE) values ('1A004','Mentos','desc:great buy',30,'https://upload.wikimedia.org/wikipedia/en/3/39/Mentos-box.jpg');
Insert into ORA1.SAMAZON (PRODUCTID,PRODUCTNAME,PRODUCTDESCRIPTION,PRODUCTPRICE,PRODUCTIMAGE) values ('1A005','PRODUCTNAME1','desc:great buy',30,'http://www.webstaurantstore.com/images/products/xxl/50046/584953.jpg');
Insert into ORA1.SAMAZON (PRODUCTID,PRODUCTNAME,PRODUCTDESCRIPTION,PRODUCTPRICE,PRODUCTIMAGE) values ('1A006','PRODUCTNAME1','desc:great buy',30,'http://www.webstaurantstore.com/images/products/xxl/50046/584953.jpg');
Insert into ORA1.SAMAZON (PRODUCTID,PRODUCTNAME,PRODUCTDESCRIPTION,PRODUCTPRICE,PRODUCTIMAGE) values ('1A007','PRODUCTNAME1','desc:great buy',30,'http://www.webstaurantstore.com/images/products/xxl/50046/584953.jpg');
Insert into ORA1.SAMAZON (PRODUCTID,PRODUCTNAME,PRODUCTDESCRIPTION,PRODUCTPRICE,PRODUCTIMAGE) values ('1A008','PRODUCTNAME1','desc:great buy',30,'http://www.webstaurantstore.com/images/products/xxl/50046/584953.jpg');
Insert into ORA1.SAMAZON (PRODUCTID,PRODUCTNAME,PRODUCTDESCRIPTION,PRODUCTPRICE,PRODUCTIMAGE) values ('1A009','PRODUCTNAME1','desc:great buy',30,'http://www.webstaurantstore.com/images/products/xxl/50046/584953.jpg');
Insert into ORA1.SAMAZON (PRODUCTID,PRODUCTNAME,PRODUCTDESCRIPTION,PRODUCTPRICE,PRODUCTIMAGE) values ('1A010','PRODUCTNAME1','desc:great buy',30,'http://www.webstaurantstore.com/images/products/xxl/50046/584953.jpg');
--------------------------------------------------------
--  DDL for Index SAMAZON_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ORA1"."SAMAZON_PK" ON "ORA1"."SAMAZON" ("PRODUCTID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table SAMAZON
--------------------------------------------------------

  ALTER TABLE "ORA1"."SAMAZON" ADD CONSTRAINT "SAMAZON_PK" PRIMARY KEY ("PRODUCTID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "ORA1"."SAMAZON" MODIFY ("PRODUCTID" NOT NULL ENABLE);
