# Schema creation for product-related tables

drop table if exists SAVED_CART;

create table SAVED_CART (
       ISBN	     char(20) not null references PRODUCT,
       CUSTOMER_ID   int not null,
       QUANTITY	     int not null);


