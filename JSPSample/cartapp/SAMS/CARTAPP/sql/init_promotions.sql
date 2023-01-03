# Schema creation for product-related tables

drop table if exists PROMOTION;

create table PROMOTION (
       PROMO_ID	       int not null unique,
       PROMO_NAME      char(30) not null,
       PROD_OR_CAT     char(1) not null,
       CATEGORY_ID     int references CATEGORY,
       PRODUCT_ISBN    char(20) references PRODUCT,
       PROMO_TYPE      char(1) not null,
       GIFT_ID         char(20) references PRODUCT,
       DISCOUNT_QUANT  int not null);
