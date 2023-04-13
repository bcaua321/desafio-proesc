-- Q1 
SELECT
	COUNT(p.id) as Qtd,
	c."name" as Categoria
FROM
	public.products p 
INNER JOIN public.categories c ON c.id = p.category_id
GROUP BY c."name";

-- Q2
SELECT
	avg(p.price)::numeric(10,2) as preco,
	c."name" as categoria
FROM
	public.products p 
INNER JOIN public.categories c ON c.id = p.category_id
GROUP BY c."name";

-- Q3
BEGIN;
	UPDATE products SET category_id = 1 WHERE category_id = 2;
	SELECT * FROM products p;
ROLLBACK;
--COMMIT;

SELECT * FROM products p;