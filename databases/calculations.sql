-- select all records from the customer order

select * from CUSTOMER_ORDER;
select ORDER_ID, SHIP_DATE from CUSTOMER_ORDER;

SELECT PRODUCT_ID, DESCRIPTION, 
PRICE - 1.10 as REDUCED_PRICE 
FROM PRODUCT;