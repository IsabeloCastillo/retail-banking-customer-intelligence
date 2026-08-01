# Insights del Proyecto

## Customer Intelligence

### CI-01 · Distribución del riesgo crediticio

**Hallazgo**

Más del 50 % de la cartera (50,71 %) pertenece a la categoría **Poor**, mientras que solo el 20,06 % se encuentra en las categorías **Very Good** y **Excellent**.

**Impacto para el negocio**

La cartera presenta una elevada concentración de clientes con perfiles crediticios bajos, lo que puede influir en las estrategias de concesión de crédito y gestión del riesgo.

---

### CI-02 · Evolución de la captación de clientes

**Hallazgo**

La captación anual de clientes se ha mantenido estable entre 2019 y 2025, con una variación inferior al 3 % entre el mejor y el peor año analizado.

**Impacto para el negocio**

No se observan cambios significativos en la capacidad de captación de clientes durante el periodo analizado, lo que refleja un crecimiento sostenido y estable.

## Product Intelligence

### PI-01 · Penetración de productos financieros

**Hallazgo**

La cuenta bancaria es el producto con mayor penetración de la cartera (**77,70 %**), seguida por las tarjetas (**66,97 %**). Los préstamos presentan una adopción significativamente menor (**45,08 %**).

**Impacto para el negocio**

La cuenta bancaria constituye el principal punto de entrada de la relación con los clientes. La menor penetración de los préstamos representa una oportunidad para impulsar estrategias comerciales orientadas a incrementar su adopción mediante acciones de venta cruzada.

---

### PI-02 · Nivel de vinculación de los clientes

**Hallazgo**

Las combinaciones **Account + Card** (**36,87 %**) y **Account + Card + Loan** (**30,10 %**) representan cerca del **67 %** de la cartera, lo que indica un elevado nivel de vinculación entre los clientes. Además, un **12,13 %** de los clientes no tiene contratado ningún producto financiero.

**Impacto para el negocio**

La entidad cuenta con una base importante de clientes altamente vinculados, pero también existe un segmento relevante de clientes sin productos financieros contratados que representa una oportunidad para desarrollar campañas de activación y aumentar la vinculación con la entidad.

## Financial Activity

### FA-01 · Evolución del volumen de transacciones

**Hallazgo**

El volumen anual de transacciones permanece prácticamente constante durante todo el periodo analizado, situándose en torno a **143.000 operaciones por año**.

**Impacto para el negocio**

La estabilidad observada refleja una actividad transaccional homogénea durante todo el periodo. En un entorno real, este indicador serviría como referencia para detectar cambios significativos en el comportamiento de los clientes o en la evolución del negocio.

-- ----------------------------------------------------------
-- 02. ¿Cómo ha evolucionado el importe total transaccionado
--     a lo largo del tiempo?
-- ----------------------------------------------------------

SELECT
    STRFTIME('%Y', transaction_date) AS transaction_year,
    ROUND(SUM(amount_usd), 2) AS total_amount_usd
FROM transactions
GROUP BY transaction_year
ORDER BY transaction_year;

### FA-02 · Evolución del importe transaccionado

**Hallazgo**

El importe total transaccionado se mantiene estable durante todo el periodo analizado, situándose alrededor de **715 millones de USD anuales**, sin variaciones significativas entre ejercicios.

**Impacto para el negocio**

La estabilidad del volumen económico refleja un comportamiento homogéneo de la actividad financiera. En un entorno real, este indicador permitiría identificar cambios relevantes en la intensidad de uso de los servicios financieros y en la evolución del negocio.

### FA-03 · Clientes con mayor actividad financiera

**Hallazgo**

Los diez clientes con mayor actividad financiera registran entre **565.000 USD y 656.000 USD** en importe transaccionado acumulado, realizando entre **108 y 122 transacciones**, con un importe medio cercano a **5.000 USD por operación**.

**Impacto para el negocio**

La entidad dispone de un segmento de clientes con una elevada contribución al volumen económico y un patrón de gasto consistente. Este perfil representa una oportunidad para desarrollar estrategias de fidelización, ofrecer productos de mayor valor añadido y fortalecer la relación comercial mediante una gestión personalizada.

### FA-04 · Cuentas con mayor actividad transaccional

**Hallazgo**

Las cuentas bancarias con mayor actividad registran entre **29 y 31 transacciones**, sin observarse diferencias significativas entre las primeras posiciones del ranking.

**Impacto para el negocio**

La distribución homogénea de la actividad transaccional sugiere que el uso de las cuentas está equilibrado entre los clientes. En un entorno real, este indicador facilitaría la identificación de cambios en los patrones de utilización y permitiría detectar cuentas con comportamientos atípicos.

### FA-05 · Comercios con mayor volumen de transacciones

**Hallazgo**

Los diez comercios con mayor actividad concentran entre **1,23 y 1,34 millones de USD** en importe transaccionado, con un volumen de operaciones comprendido entre **226 y 252 transacciones**.

**Impacto para el negocio**

La identificación de los comercios con mayor volumen económico permite detectar establecimientos estratégicos para la entidad, facilitando el desarrollo de acuerdos comerciales, el seguimiento de la actividad económica y la identificación de oportunidades de crecimiento.