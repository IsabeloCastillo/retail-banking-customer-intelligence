/*
==========================================================
CUSTOMER INTELLIGENCE
==========================================================

Business Questions
------------------
BQ-01 · Perfil de la cartera de clientes

BQ-02 · Evolución de la captación de clientes

Business Value
--------------
Proporcionar una visión general de la cartera de clientes
y comprender su evolución temporal como punto de partida
para el resto del análisis del proyecto.

==========================================================
*/

-- ==========================================================
-- BQ-01 · Perfil de la cartera de clientes
-- ==========================================================

-- ----------------------------------------------------------
-- 01. ¿Cuántos clientes tiene el banco?
-- ----------------------------------------------------------

SELECT
    COUNT(*) AS total_customers
FROM customers;


-- ----------------------------------------------------------
-- 02. ¿Cuál es el perfil crediticio de la cartera?
-- ----------------------------------------------------------

SELECT
    COUNT(*) AS total_customers,
    MIN(credit_score) AS min_credit_score,
    MAX(credit_score) AS max_credit_score,
    ROUND(AVG(credit_score), 2) AS avg_credit_score
FROM customers;


-- ----------------------------------------------------------
-- 03. ¿Cómo se distribuye el riesgo crediticio de los clientes?
-- ----------------------------------------------------------

SELECT
    CASE
        WHEN credit_score BETWEEN 300 AND 579 THEN 'Poor'
        WHEN credit_score BETWEEN 580 AND 669 THEN 'Fair'
        WHEN credit_score BETWEEN 670 AND 739 THEN 'Good'
        WHEN credit_score BETWEEN 740 AND 799 THEN 'Very Good'
        WHEN credit_score BETWEEN 800 AND 850 THEN 'Excellent'
    END AS credit_score_category,
    COUNT(*) AS total_customers,
    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM customers),
        2
    ) AS percentage
FROM customers
GROUP BY
    CASE
        WHEN credit_score BETWEEN 300 AND 579 THEN 'Poor'
        WHEN credit_score BETWEEN 580 AND 669 THEN 'Fair'
        WHEN credit_score BETWEEN 670 AND 739 THEN 'Good'
        WHEN credit_score BETWEEN 740 AND 799 THEN 'Very Good'
        WHEN credit_score BETWEEN 800 AND 850 THEN 'Excellent'
    END
ORDER BY
    MIN(credit_score);


-- ==========================================================
-- BQ-02 · Evolución de la captación de clientes
-- ==========================================================

-- ----------------------------------------------------------
-- 04. ¿Cómo ha evolucionado la captación de clientes a lo largo del tiempo?
-- ----------------------------------------------------------

SELECT
    strftime('%Y', created_at) AS year,
    COUNT(*) AS new_customers
FROM customers
GROUP BY
    strftime('%Y', created_at)
ORDER BY
    year;
