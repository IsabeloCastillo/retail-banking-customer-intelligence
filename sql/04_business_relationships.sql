/*
==========================================================
BUSINESS RELATIONSHIPS
==========================================================

Business Questions
------------------
BQ-07 · Relación entre el perfil del cliente y la contratación
         de productos.

BQ-08 · Perfiles con mayor actividad financiera.

BQ-09 · Relación entre el nivel de vinculación y la actividad.

BQ-10 · Segmentos con mayor potencial comercial.

Business Value
--------------
Analizar las relaciones entre las principales variables del
negocio para identificar patrones de comportamiento y
oportunidades comerciales.

==========================================================
*/

/*
==========================================================
BQ-07 · Perfil crediticio y combinación de productos
==========================================================

Business Question
-----------------
¿Cómo varía la combinación de productos financieros según
el perfil crediticio de los clientes?

Business Value
--------------
Identificar qué perfiles presentan un mayor nivel de
vinculación con la entidad para orientar estrategias de
segmentación, fidelización y venta cruzada.

==========================================================
*/

WITH customer_products AS (

    SELECT
        c.customer_id,

        CASE
            WHEN c.credit_score < 580 THEN 'Poor'
            WHEN c.credit_score < 670 THEN 'Fair'
            WHEN c.credit_score < 740 THEN 'Good'
            WHEN c.credit_score < 800 THEN 'Very Good'
            ELSE 'Excellent'
        END AS credit_segment,

        CASE WHEN a.customer_id IS NOT NULL THEN 1 ELSE 0 END AS has_account,
        CASE WHEN cd.customer_id IS NOT NULL THEN 1 ELSE 0 END AS has_card,
        CASE WHEN l.customer_id IS NOT NULL THEN 1 ELSE 0 END AS has_loan

    FROM customers c

    LEFT JOIN (
        SELECT DISTINCT customer_id
        FROM accounts
    ) a
        ON c.customer_id = a.customer_id

    LEFT JOIN (
        SELECT DISTINCT a.customer_id
        FROM accounts a
        INNER JOIN cards ca
            ON a.account_id = ca.account_id
    ) cd
        ON c.customer_id = cd.customer_id

    LEFT JOIN (
        SELECT DISTINCT customer_id
        FROM loans
    ) l
        ON c.customer_id = l.customer_id

)

SELECT

    credit_segment,

    CASE
        WHEN has_account = 1 AND has_card = 1 AND has_loan = 1 THEN 'Account + Card + Loan'
        WHEN has_account = 1 AND has_card = 1 THEN 'Account + Card'
        WHEN has_account = 1 AND has_loan = 1 THEN 'Account + Loan'
        WHEN has_account = 1 THEN 'Account Only'
        WHEN has_loan = 1 THEN 'Loan Only'
        ELSE 'No Products'
    END AS product_combination,

    COUNT(*) AS total_customers

FROM customer_products

GROUP BY
    credit_segment,
    product_combination

ORDER BY
    credit_segment,
    total_customers DESC;

/*
==========================================================
Key Insight
----------------------------------------------------------
La distribución de productos es muy similar en todos los
segmentos crediticios. Las combinaciones "Account + Card"
y "Account + Card + Loan" predominan independientemente
del perfil de riesgo del cliente.

Business Recommendation
----------------------------------------------------------
La contratación de productos no parece estar condicionada
por el perfil crediticio. La entidad podría diseñar
estrategias comerciales transversales para la mayoría de
segmentos, complementándolas con acciones específicas
según el riesgo cuando sea necesario.

==========================================================
*/  


/*
==========================================================
BQ-08 · Perfil crediticio y actividad financiera
==========================================================

Business Question
-----------------
¿Los clientes con mejor perfil crediticio generan una
mayor actividad financiera?

Business Value
--------------
Analizar la relación entre el perfil crediticio y la
actividad financiera para identificar segmentos de mayor
valor y apoyar estrategias comerciales diferenciadas.

==========================================================
*/

WITH customer_activity AS (

    SELECT
        c.customer_id,

        CASE
            WHEN c.credit_score < 580 THEN 'Poor'
            WHEN c.credit_score < 670 THEN 'Fair'
            WHEN c.credit_score < 740 THEN 'Good'
            WHEN c.credit_score < 800 THEN 'Very Good'
            ELSE 'Excellent'
        END AS credit_segment,

        COUNT(t.transaction_id) AS total_transactions,

        ROUND(SUM(t.amount_usd), 2) AS total_amount_usd

    FROM customers c

    LEFT JOIN accounts a
        ON c.customer_id = a.customer_id

    LEFT JOIN transactions t
        ON a.account_id = t.account_id

    GROUP BY
        c.customer_id,
        credit_segment

)

SELECT
    credit_segment,
    COUNT(*) AS total_customers,
    ROUND(AVG(total_transactions), 2) AS avg_transactions,
    ROUND(AVG(total_amount_usd), 2) AS avg_amount_usd

FROM customer_activity

GROUP BY credit_segment

ORDER BY
    CASE credit_segment
        WHEN 'Poor' THEN 1
        WHEN 'Fair' THEN 2
        WHEN 'Good' THEN 3
        WHEN 'Very Good' THEN 4
        WHEN 'Excellent' THEN 5
    END;

 /*
==========================================================
Key Insight
----------------------------------------------------------
La actividad financiera media es muy similar en todos los
segmentos crediticios. No se observa una relación clara
entre el perfil crediticio del cliente y el número de
transacciones o el volumen económico generado.

Business Recommendation
----------------------------------------------------------
La segmentación comercial no debería basarse únicamente en
el perfil crediticio. Es recomendable incorporar variables
como el nivel de vinculación, la actividad transaccional o
la contratación de productos para identificar clientes de
mayor valor.

==========================================================
*/   

/*
==========================================================
BQ-09 · Nivel de vinculación y actividad financiera
==========================================================

Business Question
-----------------
¿Los clientes con mayor número de productos financieros
realizan más transacciones y generan un mayor volumen
económico?

Business Value
--------------
Evaluar si el incremento del nivel de vinculación está
asociado a una mayor actividad financiera, apoyando
estrategias de fidelización y venta cruzada.

==========================================================
*/

WITH customer_activity AS (

    SELECT
        c.customer_id,

        CASE WHEN a.customer_id IS NOT NULL THEN 1 ELSE 0 END +
        CASE WHEN cd.customer_id IS NOT NULL THEN 1 ELSE 0 END +
        CASE WHEN l.customer_id IS NOT NULL THEN 1 ELSE 0 END
        AS total_products,

        COUNT(t.transaction_id) AS total_transactions,

        ROUND(SUM(t.amount_usd), 2) AS total_amount_usd

    FROM customers c

    LEFT JOIN (
        SELECT DISTINCT customer_id
        FROM accounts
    ) a
        ON c.customer_id = a.customer_id

    LEFT JOIN (
        SELECT DISTINCT a.customer_id
        FROM accounts a
        INNER JOIN cards ca
            ON a.account_id = ca.account_id
    ) cd
        ON c.customer_id = cd.customer_id

    LEFT JOIN (
        SELECT DISTINCT customer_id
        FROM loans
    ) l
        ON c.customer_id = l.customer_id

    LEFT JOIN accounts acc
        ON c.customer_id = acc.customer_id

    LEFT JOIN transactions t
        ON acc.account_id = t.account_id

    GROUP BY
        c.customer_id,
        total_products

)

SELECT
    total_products,
    COUNT(*) AS total_customers,
    ROUND(AVG(total_transactions), 2) AS avg_transactions,
    ROUND(AVG(total_amount_usd), 2) AS avg_amount_usd

FROM customer_activity

GROUP BY total_products

ORDER BY total_products;

/*
==========================================================
Key Insight
----------------------------------------------------------
Existe una relación positiva entre el número de productos
contratados y la actividad financiera del cliente. Los
clientes con dos o tres productos realizan un mayor número
de transacciones y generan un mayor volumen económico que
aquellos con un único producto.

Business Recommendation
----------------------------------------------------------
Promover estrategias de venta cruzada dirigidas a clientes
con un único producto, ya que incrementar su nivel de
vinculación puede traducirse en un mayor uso de los
servicios financieros y un aumento de la actividad
económica para la entidad.

==========================================================
*/

/*
==========================================================
BQ-10 · Perfil de los clientes de mayor valor
==========================================================

Business Question
-----------------
¿Qué características comparten los clientes con mayor
actividad financiera?

Business Value
--------------
Identificar los perfiles de clientes con mayor contribución
económica para orientar estrategias de fidelización,
segmentación y desarrollo comercial.

==========================================================
*/

WITH customer_profile AS (

    SELECT

        c.customer_id,

        CASE
            WHEN c.credit_score < 580 THEN 'Poor'
            WHEN c.credit_score < 670 THEN 'Fair'
            WHEN c.credit_score < 740 THEN 'Good'
            WHEN c.credit_score < 800 THEN 'Very Good'
            ELSE 'Excellent'
        END AS credit_segment,

        CASE
            WHEN a.customer_id IS NOT NULL
                 AND cd.customer_id IS NOT NULL
                 AND l.customer_id IS NOT NULL THEN 'Account + Card + Loan'

            WHEN a.customer_id IS NOT NULL
                 AND cd.customer_id IS NOT NULL THEN 'Account + Card'

            WHEN a.customer_id IS NOT NULL
                 AND l.customer_id IS NOT NULL THEN 'Account + Loan'

            WHEN a.customer_id IS NOT NULL THEN 'Account Only'

            WHEN l.customer_id IS NOT NULL THEN 'Loan Only'

            ELSE 'No Products'
        END AS product_combination,

        COUNT(t.transaction_id) AS total_transactions,

        ROUND(SUM(t.amount_usd),2) AS total_amount

    FROM customers c

    LEFT JOIN (
        SELECT DISTINCT customer_id
        FROM accounts
    ) a
        ON c.customer_id = a.customer_id

    LEFT JOIN (
        SELECT DISTINCT
            a.customer_id
        FROM accounts a
        INNER JOIN cards ca
            ON a.account_id = ca.account_id
    ) cd
        ON c.customer_id = cd.customer_id

    LEFT JOIN (
        SELECT DISTINCT customer_id
        FROM loans
    ) l
        ON c.customer_id = l.customer_id

    LEFT JOIN accounts acc
        ON c.customer_id = acc.customer_id

    LEFT JOIN transactions t
        ON acc.account_id = t.account_id

    GROUP BY
        c.customer_id,
        credit_segment,
        product_combination

)

SELECT

    credit_segment,
    product_combination,

    COUNT(*) AS total_customers,

    ROUND(AVG(total_transactions),2) AS avg_transactions,

    ROUND(AVG(total_amount),2) AS avg_amount

FROM customer_profile

GROUP BY

    credit_segment,
    product_combination

ORDER BY

    avg_amount DESC,
    avg_transactions DESC;

    /*
==========================================================
Key Insight
----------------------------------------------------------
La combinación de productos contratados tiene un mayor
impacto en la actividad financiera que el perfil
crediticio. Los clientes con "Account + Card + Loan" y
"Account + Card" presentan los mayores niveles de
transacciones e importe económico en todos los segmentos.

Business Recommendation
----------------------------------------------------------
Priorizar estrategias de fidelización y venta cruzada que
incrementen el nivel de vinculación de los clientes,
promoviendo la contratación conjunta de productos
financieros para aumentar la actividad y el valor generado
para la entidad.

==========================================================
*/

/*
==========================================================
BQ-10 · Segmentos con mayor potencial comercial
==========================================================

Business Question
-----------------
¿Qué segmentos de clientes deberían priorizarse en las
estrategias comerciales de la entidad?

Business Value
--------------
Clasificar los segmentos de clientes según su potencial
comercial para facilitar la definición de estrategias de
fidelización, venta cruzada y crecimiento del negocio.

==========================================================
*/

WITH customer_segments AS (

    SELECT
        c.customer_id,

        CASE
            WHEN a.customer_id IS NOT NULL
                 AND cd.customer_id IS NOT NULL
                 AND l.customer_id IS NOT NULL THEN 'Account + Card + Loan'

            WHEN a.customer_id IS NOT NULL
                 AND cd.customer_id IS NOT NULL THEN 'Account + Card'

            WHEN a.customer_id IS NOT NULL
                 AND l.customer_id IS NOT NULL THEN 'Account + Loan'

            WHEN a.customer_id IS NOT NULL THEN 'Account Only'

            WHEN l.customer_id IS NOT NULL THEN 'Loan Only'

            ELSE 'No Products'
        END AS product_combination

    FROM customers c

    LEFT JOIN (
        SELECT DISTINCT customer_id
        FROM accounts
    ) a
        ON c.customer_id = a.customer_id

    LEFT JOIN (
        SELECT DISTINCT
            a.customer_id
        FROM accounts a
        INNER JOIN cards ca
            ON a.account_id = ca.account_id
    ) cd
        ON c.customer_id = cd.customer_id

    LEFT JOIN (
        SELECT DISTINCT customer_id
        FROM loans
    ) l
        ON c.customer_id = l.customer_id

)

SELECT

    CASE

        WHEN product_combination IN
        ('Account + Card + Loan', 'Account + Card')
            THEN 'High'

        WHEN product_combination IN
        ('Account + Loan', 'Account Only')
            THEN 'Medium'

        ELSE 'Low'

    END AS commercial_priority,

    COUNT(*) AS total_customers

FROM customer_segments

GROUP BY commercial_priority

ORDER BY

    CASE commercial_priority
        WHEN 'High' THEN 1
        WHEN 'Medium' THEN 2
        WHEN 'Low' THEN 3
    END;

    /*
==========================================================
Key Insight
----------------------------------------------------------
La mayoría de los clientes (33.485) pertenecen al segmento
de alta prioridad comercial, caracterizado por una mayor
vinculación mediante la contratación conjunta de cuentas,
tarjetas y préstamos. Los segmentos de prioridad media y
baja representan una oportunidad para desarrollar acciones
de activación y venta cruzada.

Business Recommendation
----------------------------------------------------------
Priorizar las estrategias de fidelización sobre los
clientes de alta prioridad para maximizar su valor a largo
plazo. Paralelamente, diseñar campañas específicas para
incrementar la vinculación de los segmentos de prioridad
media y baja mediante la contratación de nuevos productos
financieros.

==========================================================
*/