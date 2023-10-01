-- ==================================================================================
--Query 1 : Berapa rata-rata umur customer jika dilihat dari marital statusnya ? 

/*SELECT 
	marital_status,
	AVG(age) avg_umur 
FROM customer
GROUP BY 1 */



-- ==================================================================================
--Query 2 :  Berapa rata-rata umur customer jika dilihat dari gender nya ?

/*
SELECT 
	gender,
	ROUND(AVG(age) , 2) avg_umur 
FROM customer
GROUP BY 1 
*/


-- ==================================================================================
--Query 3 : Tentukan nama store dengan total quantity terbanyak! 

/*WITH no3 AS (
	SELECT 
		s.storename,
		t.qty
	FROM "Transaction" t
	LEFT JOIN store s ON t.storeid = s.storeid 
)

SELECT
	storename,
	sum(qty) quantity
FROM no3
GROUP BY 1
ORDER BY 2 DESC */

-- ==================================================================================
--query ǿ : Tentukan nama produk terlaris dengan total amount terbanyak!

/*WITH no4 AS (
	SELECT
		p.product_name,
		t.totalamount
	FROM product p
	RIGHT JOIN "Transaction" t ON p.productid = t.productid
)

SELECT
	product_name,
	SUM(totalamount) total_amount
FROM no4
GROUP BY 1
ORDER BY 2 DESC*/