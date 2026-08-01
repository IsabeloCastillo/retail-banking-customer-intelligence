/*
==========================================================
FINANCIAL ACTIVITY INTELLIGENCE
==========================================================

/*
==========================================================
BQ-05 · Evolución del volumen de transacciones
==========================================================

Business Question
-----------------
¿Cómo ha evolucionado el número de transacciones a lo
largo del tiempo?

Business Value
--------------
Analizar la evolución de la actividad transaccional para
identificar tendencias y apoyar el seguimiento del negocio.

==========================================================
*/

SELECT
    STRFTIME('%Y', transaction_date) AS transaction_year,
    COUNT(*) AS total_transactions
FROM transactions
GROUP BY transaction_year
ORDER BY transaction_year;

/*
==========================================================
Key Insight
----------------------------------------------------------
El volumen anual de transacciones se mantiene estable
durante todo el periodo analizado, con aproximadamente
143.000 operaciones por año.

Business Recommendation
----------------------------------------------------------
Mantener el seguimiento periódico del volumen de
transacciones como indicador operativo del negocio.
En un entorno real, desviaciones significativas podrían
reflejar cambios en el comportamiento de los clientes o
en la actividad de la entidad.

==========================================================
*/

/*
==========================================================
BQ-05 · Evolución del importe transaccionado
==========================================================

Business Question
-----------------
¿Cómo ha evolucionado el importe total transaccionado a
lo largo del tiempo?

Business Value
--------------
Analizar la evolución del volumen económico del negocio
para identificar tendencias y apoyar el seguimiento de la
actividad financiera.

==========================================================
*/

SELECT
    STRFTIME('%Y', transaction_date) AS transaction_year,
    ROUND(SUM(amount_usd), 2) AS total_amount_usd
FROM transactions
GROUP BY transaction_year
ORDER BY transaction_year;

/*
==========================================================
Key Insight
----------------------------------------------------------
El importe total transaccionado se mantiene estable entre
2019 y 2025, con un volumen anual cercano a los
715 millones de USD.

Business Recommendation
----------------------------------------------------------
Monitorizar periódicamente el importe total transaccionado
como indicador del volumen económico del negocio. En un
entorno real, variaciones relevantes podrían indicar
cambios en el comportamiento de los clientes o en la
actividad comercial de la entidad.

==========================================================
*/

/*
==========================================================
BQ-06 · Clientes de mayor actividad
==========================================================

Business Question
-----------------
¿Qué clientes concentran el mayor volumen económico de
transacciones?

Business Value
--------------
Identificar los clientes con mayor contribución económica
para apoyar estrategias de fidelización, segmentación y
desarrollo comercial.

==========================================================
*/

SELECT
    c.customer_id,
    c.first_name || ' ' || c.last_name AS customer_name,
    COUNT(t.transaction_id) AS total_transactions,
    ROUND(SUM(t.amount_usd), 2) AS total_amount_usd,
    ROUND(AVG(t.amount_usd), 2) AS avg_transaction_amount

FROM customers AS c

INNER JOIN accounts AS a
    ON c.customer_id = a.customer_id

INNER JOIN transactions AS t
    ON a.account_id = t.account_id

GROUP BY
    c.customer_id,
    customer_name

ORDER BY
    total_amount_usd DESC

LIMIT 10;

/*
==========================================================
Key Insight
----------------------------------------------------------
Los clientes con mayor actividad financiera generan entre
565.000 y 656.000 USD en transacciones acumuladas,
realizando entre 108 y 122 operaciones con un importe
medio por transacción cercano a los 5.000 USD.

Business Recommendation
----------------------------------------------------------
Identificar y monitorizar a los clientes con mayor volumen
económico para desarrollar estrategias de fidelización,
venta cruzada y gestión personalizada de la relación
comercial.

==========================================================
*/

/*
==========================================================
BQ-06 · Cuentas de mayor actividad
==========================================================

Business Question
-----------------
¿Qué cuentas bancarias registran el mayor número de
transacciones?

Business Value
--------------
Identificar las cuentas con mayor actividad para apoyar
el seguimiento operativo y detectar oportunidades de
desarrollo comercial.

==========================================================
*/

SELECT
    a.account_id,
    a.account_type,
    c.customer_id,
    c.first_name || ' ' || c.last_name AS customer_name,
    COUNT(t.transaction_id) AS total_transactions,
    ROUND(SUM(t.amount_usd), 2) AS total_amount_usd

FROM accounts AS a

INNER JOIN customers AS c
    ON a.customer_id = c.customer_id

INNER JOIN transactions AS t
    ON a.account_id = t.account_id

GROUP BY
    a.account_id,
    a.account_type,
    c.customer_id,
    customer_name

ORDER BY
    total_transactions DESC,
    total_amount_usd DESC

LIMIT 10;

/*
==========================================================
Key Insight
----------------------------------------------------------
Las cuentas con mayor actividad registran entre 29 y 31
transacciones, lo que refleja una distribución homogénea
del volumen de operaciones entre las cuentas bancarias.

Business Recommendation
----------------------------------------------------------
Realizar un seguimiento periódico de las cuentas con mayor
actividad para identificar oportunidades comerciales y
monitorizar posibles cambios en los patrones de uso de los
clientes.

==========================================================
*/

/*
==========================================================
BQ-06 · Comercios de mayor actividad
==========================================================

Business Question
-----------------
¿Qué comercios concentran el mayor volumen económico de
transacciones?

Business Value
--------------
Identificar los comercios con mayor actividad económica
para apoyar la toma de decisiones comerciales y el
seguimiento de la red de establecimientos.

==========================================================
*/

SELECT
    m.merchant_id,
    m.merchant_name,
    m.city,
    COUNT(t.transaction_id) AS total_transactions,
    ROUND(SUM(t.amount_usd), 2) AS total_amount_usd

FROM merchants AS m

INNER JOIN transactions AS t
    ON m.merchant_id = t.merchant_id

GROUP BY
    m.merchant_id,
    m.merchant_name,
    m.city

ORDER BY
    total_amount_usd DESC

LIMIT 10;

/*
==========================================================
Key Insight
----------------------------------------------------------
Los comercios con mayor actividad concentran entre
1,23 y 1,34 millones de USD en importe transaccionado,
manteniendo un volumen de operaciones muy similar
(entre 226 y 252 transacciones).

Business Recommendation
----------------------------------------------------------
Analizar periódicamente el comportamiento de los
principales comercios para identificar oportunidades de
colaboración, segmentación comercial y seguimiento de la
actividad económica asociada a la red de establecimientos.

==========================================================
*/

