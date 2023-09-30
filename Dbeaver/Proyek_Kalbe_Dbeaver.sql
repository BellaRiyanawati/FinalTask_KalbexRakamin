--query 1 : Berapa rata-rata umur customer jika dilihat dari marital statusnya ?
SELECT "Marital Status" ,
AVG(Age) as Average_Age
FROM customer
group BY "Marital Status";

--query 2 : Berapa rata-rata umur customer jika dilihat dari gender nya ?
SELECT
    CASE
        WHEN gender = 0 THEN 'Wanita'
        WHEN gender = 1 THEN 'Pria'
    END AS jenis_gender,
    AVG(Age) AS Average_Age
FROM customer
GROUP BY gender;

--query 3 : Tentukan nama store dengan total quantity terbanyak!
SELECT store.storename, sum(transaction.qty) AS total_quantity
FROM store
JOIN TRANSACTION ON transaction.storeid  = store.storeid
GROUP BY store.storename 
ORDER BY total_quantity DESC


--query 4: : Tentukan nama produk terlaris dengan total amount terbanyak!
SELECT product."Product Name" , sum(transaction.totalamount) AS total_amount
from product
JOIN TRANSACTION ON transaction.productid = product.productid 
GROUP BY product."Product Name" 
ORDER BY total_amount DESC