# Dashboard Design

# Objetivo del Dashboard

Desarrollar un dashboard ejecutivo que proporcione una visión integral de la cartera de clientes, permitiendo analizar su perfil financiero, su nivel de vinculación, su actividad transaccional y las principales oportunidades de negocio mediante una narrativa orientada a la toma de decisiones.

El dashboard se construye sobre el modelo analítico desarrollado durante las fases de SQL y Python, utilizando exclusivamente el dataset `customer_dashboard.csv`.

---

# Usuarios objetivo

El dashboard está dirigido a perfiles de negocio con capacidad de decisión, entre ellos:

- Dirección Comercial.
- Dirección de Clientes.
- Dirección de Negocio.

No está diseñado para tareas de análisis exploratorio ni preparación de datos, ya que dichas actividades fueron realizadas previamente durante las fases de SQL y Python.

---

# Pregunta principal

¿Cómo es la cartera de clientes y qué oportunidades estratégicas pueden identificarse a partir de su perfil financiero, su nivel de vinculación y su comportamiento transaccional?

---

# Storytelling

El dashboard sigue una narrativa progresiva que permite comprender la cartera de clientes desde una visión ejecutiva hasta la formulación de recomendaciones estratégicas.

Cada página responde a una única pregunta de negocio y aporta información complementaria sin duplicar análisis.

La secuencia de navegación es:

1. Executive Overview
2. Customer Segmentation
3. Financial Activity
4. Business Insights & Recommendations

---

# Arquitectura de navegación

| Página | Objetivo |
|----------|----------|
| Executive Overview | Obtener una visión global de la cartera de clientes. |
| Customer Segmentation | Analizar el perfil financiero y la segmentación de los clientes. |
| Financial Activity | Analizar el comportamiento transaccional y el uso de productos financieros. |
| Business Insights & Recommendations | Resumir los principales hallazgos y proponer recomendaciones estratégicas para el negocio. |

---

# Diseño de las páginas

---

# Página 1 · Executive Overview

## Objetivo

Proporcionar una visión ejecutiva del estado general de la cartera de clientes mediante los principales indicadores comerciales.

## Pregunta de negocio

¿Cuál es la situación general de la cartera de clientes?

## KPIs

- Total Customers
- Total Balance
- High Engagement Customers %
- Average Products per Customer
- Average Credit Score

## Visualizaciones

- Clientes por Nivel de Vinculación
- Clientes por Nivel de Saldo
- Clientes por Número de Productos
- Clientes Multiproducto

## Valor para el negocio

Permite conocer rápidamente el tamaño, valor y composición de la cartera para facilitar una primera evaluación ejecutiva.

---

# Página 2 · Customer Segmentation

## Objetivo

Analizar el perfil financiero de los clientes para identificar los segmentos con mayor valor potencial.

## Pregunta de negocio

¿Qué características presentan los clientes de mayor valor para la entidad?

## Visualizaciones

- Saldo Medio por Nivel de Vinculación
- Saldo Medio según Multiproducto
- Perfil Crediticio de la Cartera
- Matriz resumen por Nivel de Vinculación

## Valor para el negocio

Facilita la identificación de los segmentos prioritarios para campañas comerciales, fidelización y estrategias de vinculación.

---

# Página 3 · Financial Activity

## Objetivo

Analizar el comportamiento financiero de los clientes mediante su actividad transaccional y el uso de productos financieros.

## Pregunta de negocio

¿Cómo utilizan los clientes los productos financieros y cómo evoluciona su actividad económica?

## Visualizaciones

- Volumen Total de Transacciones por Número de Productos
- Volumen Económico por Nivel de Vinculación
- Transacciones Medias por Número de Productos
- Importe Medio por Transacción según Nivel de Saldo

## Valor para el negocio

Permite comprender qué perfiles generan mayor actividad económica y detectar oportunidades para incrementar el uso de productos financieros.

---

# Página 4 · Business Insights & Recommendations

## Objetivo

Presentar las principales conclusiones obtenidas durante el análisis y traducirlas en recomendaciones estratégicas para la entidad.

## Pregunta de negocio

¿Qué decisiones deberían priorizarse para maximizar el valor de la cartera de clientes?

## Contenido

### Principales Insights

- Los clientes High Engagement concentran el mayor volumen económico.
- La actividad aumenta conforme crece el número de productos contratados.
- El score crediticio presenta un comportamiento estable entre segmentos.
- La mayoría de los clientes mantienen una estrategia multiproducto.

### Visualizaciones

- Volumen Total de Transacciones por Número de Productos
- Volumen Económico por Nivel de Vinculación

### Recomendaciones Estratégicas

- Incrementar campañas de cross-selling dirigidas a clientes Low Engagement.
- Priorizar la fidelización de clientes High Engagement.
- Diseñar acciones para aumentar el número medio de productos por cliente.
- Mantener el seguimiento del riesgo crediticio debido a su estabilidad.

## Valor para el negocio

Transforma el análisis realizado en recomendaciones accionables que facilitan la toma de decisiones comerciales y estratégicas.

---

# Principios de diseño

Durante el desarrollo del dashboard se siguieron las siguientes reglas de diseño:

- Cada dashboard responde a una única pregunta de negocio.
- Cada visual responde a una única Business Question.
- No se duplica información entre dashboards.
- Cada insight tiene un único visual protagonista.
- El storytelling avanza desde la visión general hasta la recomendación estratégica.
- Todas las visualizaciones aportan valor para el negocio y justifican su inclusión.
- Se prioriza la claridad y la interpretación frente a la complejidad visual.
