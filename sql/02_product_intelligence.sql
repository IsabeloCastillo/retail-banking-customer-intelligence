   /*
==========================================================
PRODUCT INTELLIGENCE
==========================================================

Business Questions
------------------
BQ-03 · Penetración de productos financieros

BQ-04 · Vinculación de clientes

Business Value
--------------
Analizar el nivel de adopción de los productos financieros
y comprender el grado de vinculación de los clientes con la
entidad para identificar oportunidades de crecimiento,
desarrollo comercial y estrategias de venta cruzada.

==========================================================
*/

-- ==========================================================
-- BQ-03 · Penetración de productos financieros
-- ==========================================================

-- ----------------------------------------------------------
-- 01. ¿Qué porcentaje de clientes utiliza cada producto financiero?
-- ----------------------------------------------------------

SELECT
    'Bank Account' AS product,
    COUNT(DISTINCT customer_id) AS total_customers,
    ROUND(
        COUNT(DISTINCT customer_id) * 100.0 /
        (SELECT COUNT(*) FROM customers),
        2
    ) AS percentage
FROM accounts

UNION ALL

SELECT
    'Card' AS product,
    COUNT(DISTINCT a.customer_id) AS total_customers,
    ROUND(
        COUNT(DISTINCT a.customer_id) * 100.0 /
        (SELECT COUNT(*) FROM customers),
        2
    ) AS percentage
FROM cards c
INNER JOIN accounts a
    ON c.account_id = a.account_id

UNION ALL

SELECT
    'Loan' AS product,
    COUNT(DISTINCT customer_id) AS total_customers,
    ROUND(
        COUNT(DISTINCT customer_id) * 100.0 /
        (SELECT COUNT(*) FROM customers),
        2
    ) AS percentage
FROM loans;


-- ==========================================================
-- BQ-04 · Vinculación de clientes
-- ==========================================================

-- ----------------------------------------------------------
-- 02. ¿Qué combinaciones de productos financieros tienen los clientes?
-- ----------------------------------------------------------

WITH customer_products AS (

    SELECT
        c.customer_id,

        MAX(CASE WHEN a.account_id IS NOT NULL THEN 1 ELSE 0 END) AS has_account,
        MAX(CASE WHEN cd.card_id IS NOT NULL THEN 1 ELSE 0 END) AS has_card,
        MAX(CASE WHEN l.loan_id IS NOT NULL THEN 1 ELSE 0 END) AS has_loan

    FROM customers c

    LEFT JOIN accounts a
        ON c.customer_id = a.customer_id

    LEFT JOIN cards cd
        ON a.account_id = cd.account_id

    LEFT JOIN loans l
        ON c.customer_id = l.customer_id

    GROUP BY
        c.customer_id
)

SELECT
    CASE
        WHEN has_account = 1 AND has_card = 1 AND has_loan = 1 THEN 'Account + Card + Loan'
        WHEN has_account = 1 AND has_card = 1 AND has_loan = 0 THEN 'Account + Card'
        WHEN has_account = 1 AND has_card = 0 AND has_loan = 1 THEN 'Account + Loan'
        WHEN has_account = 1 AND has_card = 0 AND has_loan = 0 THEN 'Account Only'
        WHEN has_account = 0 AND has_card = 0 AND has_loan = 1 THEN 'Loan Only'
        WHEN has_account = 0 AND has_card = 0 AND has_loan = 0 THEN 'No Products'
    END AS product_combination,

    COUNT(*) AS total_customers,

    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM customers),
        2
    ) AS percentage

FROM customer_products

GROUP BY
    product_combination

ORDER BY
    total_customers DESC;