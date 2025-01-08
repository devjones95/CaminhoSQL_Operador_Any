USE sakila;

SELECT *
FROM customer
WHERE customer_id = ANY ( -- outra forma de utilizar ao invés de IN, podemos usar o = ANY, porém por melhores práticas, usamos o IN
	SELECT customer_id
    FROM payment
    GROUP BY customer_id
    HAVING COUNT(*) > 35
)

