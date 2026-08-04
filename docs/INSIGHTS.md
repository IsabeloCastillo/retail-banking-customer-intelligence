# Insights del Proyecto

Este documento recopila los principales **Business Insights** obtenidos a lo largo del proyecto.

Los hallazgos se organizan según la fase en la que fueron identificados, permitiendo mantener la trazabilidad entre los análisis realizados en SQL, Python y Power BI.

---

# SQL Analytics

Los siguientes insights corresponden a los análisis desarrollados durante la fase **SQL Analytics**, donde se respondieron las Business Questions definidas en el proyecto.

---

## Customer Intelligence

### CI-01 · Distribución del riesgo crediticio

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

## Business Relationships

### BR-01 · Perfil crediticio y combinación de productos

**Hallazgo**

La combinación de productos financieros presenta un patrón muy similar en todos los segmentos crediticios. Las combinaciones **Account + Card** y **Account + Card + Loan** son las más frecuentes independientemente del nivel de riesgo del cliente.

**Impacto para el negocio**

La contratación de productos no muestra una dependencia clara del perfil crediticio. Esto sugiere que las estrategias de vinculación pueden aplicarse de forma transversal, adaptando únicamente las condiciones comerciales según el nivel de riesgo de cada segmento.


### BR-02 · Perfil crediticio y actividad financiera

**Hallazgo**

La actividad financiera media es muy similar entre todos los segmentos crediticios. No se aprecia una relación significativa entre el perfil crediticio y el número de transacciones o el importe económico generado.

**Impacto para el negocio**

El perfil crediticio, por sí solo, no resulta suficiente para identificar a los clientes más activos. La entidad debería complementar este criterio con variables de comportamiento, como la vinculación, la actividad transaccional o la contratación de productos, para mejorar la segmentación comercial.

### BR-03 · Nivel de vinculación y actividad financiera

**Hallazgo**

Se observa una relación positiva entre el número de productos contratados y la actividad financiera. Los clientes con **dos o tres productos** realizan un número significativamente mayor de transacciones y generan un mayor volumen económico que aquellos con un único producto.

**Impacto para el negocio**

Incrementar el nivel de vinculación de los clientes representa una oportunidad para aumentar el uso de los servicios financieros. Las estrategias de venta cruzada dirigidas a clientes con un solo producto podrían contribuir a incrementar tanto la actividad transaccional como el volumen económico generado.

### BR-04 · Perfil de los clientes de mayor valor

**Hallazgo**

La combinación de productos contratados influye más en la actividad financiera que el perfil crediticio. Los clientes con **Account + Card + Loan** y **Account + Card** presentan los mayores niveles de actividad y volumen económico, independientemente de su segmento crediticio.

**Impacto para el negocio**

La vinculación con la entidad constituye un mejor indicador del valor del cliente que el perfil crediticio. Incrementar la contratación conjunta de productos puede contribuir a aumentar tanto la actividad transaccional como el volumen económico generado.

### BR-05 · Segmentación comercial de clientes

**Hallazgo**

La clasificación comercial identifica **33.485 clientes** como segmento de alta prioridad, frente a **5.364** de prioridad media y **11.151** de prioridad baja. La elevada vinculación mediante la contratación conjunta de productos constituye el principal factor asociado al mayor valor comercial.

**Impacto para el negocio**

La segmentación comercial facilita la priorización de campañas de fidelización y venta cruzada. Concentrar los esfuerzos sobre los clientes de alta prioridad permite proteger el valor generado, mientras que los segmentos medio y bajo representan oportunidades para incrementar la vinculación y el uso de los servicios financieros.

---

# Python Analytics

Los siguientes insights corresponden a los análisis estadísticos y exploratorios realizados durante la fase **Python Analytics**, complementando los resultados obtenidos mediante SQL.

---

## Statistical & Behavioral Analysis

### FE-01 · Elevada presencia de clientes multiproducto

**Hallazgo**

El **75,67 %** de los clientes mantiene **dos o más productos financieros** contratados, reflejando un elevado nivel de vinculación con la entidad.

**Impacto para el negocio**

La elevada proporción de clientes multiproducto evidencia una base comercial consolidada. Este indicador permitirá evaluar estrategias de fidelización y comparar el comportamiento entre clientes con distinto nivel de vinculación.

### FE-02 · Baja utilización de productos de financiación

**Hallazgo**

El **54,92 %** de los clientes no dispone de préstamos contratados, lo que refleja un amplio segmento de clientes sin productos de financiación activos.

**Impacto para el negocio**

Este segmento representa una oportunidad para desarrollar campañas comerciales orientadas a incrementar la contratación de productos de financiación y fortalecer la relación con la entidad.

### FE-03 · Segmentación equilibrada del nivel de vinculación

**Hallazgo**

La clasificación del nivel de vinculación mediante reglas de negocio genera una distribución equilibrada entre las categorías **Low (36,85 %)**, **Medium (34,51 %)** y **High (28,65 %)**.

**Impacto para el negocio**

Una segmentación equilibrada facilita la comparación entre grupos de clientes y mejora la interpretación de indicadores comerciales en el dashboard de Power BI.

### FE-04 · Segmentación del patrimonio de los clientes

**Hallazgo**

La clasificación del saldo total mediante reglas de negocio genera una distribución equilibrada entre clientes con **bajo (31,69 %)**, **medio (38,97 %)** y **alto patrimonio (29,33 %)**.

**Impacto para el negocio**

Esta segmentación facilitará la identificación de clientes con distinta capacidad financiera y permitirá desarrollar análisis comparativos y visualizaciones orientadas al negocio en Power BI.

