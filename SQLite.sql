-- 1. Посчитайте, сколько компаний закрылось.

SELECT count(id)
FROM company
WHERE status = 'closed'

--2. Отобразите количество привлечённых средств для новостных компаний США. 
--Используйте данные из таблицы company. Отсортируйте таблицу по убыванию значений в поле funding_total.

SELECT sum(funding_total) AS total
FROM company
WHERE country_code = 'USA'
		AND category_code = 'news'
GROUP BY  id
ORDER BY  total DESC

