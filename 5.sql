-- 5. Найти клиента (customer), которая приносит меньше всего прибыли компании (company) для каждой из компаний .

CREATE TEMPORARY TABLE profit_from_customer
  SELECT
    base1.companies.name AS company_name,
    base1.customers.name AS customer_name,
    sum(base1.projects.cost) AS profit
  FROM base1.companies INNER JOIN base1.projects ON base1.companies.id = base1.projects.company_id
    INNER JOIN base1.customers ON base1.projects.customer_id = base1.customers.id
  GROUP BY company_name, customer_name;

CREATE TEMPORARY TABLE min_profit
  SELECT company_name, min(profit) AS profit
  FROM profit_from_customer
  GROUP BY company_name;

SELECT p.company_name, p.customer_name, p.profit FROM profit_from_customer p
  INNER JOIN
  min_profit ON p.profit = min_profit.profit
                AND p.company_name = min_profit.company_name;
