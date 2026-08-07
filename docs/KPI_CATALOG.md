# Changelog

Este documento registra los principales hitos alcanzados durante el desarrollo del proyecto.

No sustituye al historial de Git, sino que documenta la evolución funcional del proyecto y las decisiones implementadas en cada fase.

---

## [Unreleased]

# SQL Analytics

- Implementadas las cuatro áreas de análisis orientadas a negocio:
  - Customer Intelligence.
  - Product Intelligence.
  - Financial Activity.
  - Business Relationships.
- Respondidas las Business Questions definidas durante la fase de diseño.
- Documentados los principales Business Insights obtenidos mediante SQL.

---

# Python Analytics

## Notebook 01 · Data Quality & Preparation

- Evaluación de la calidad del dataset.
- Tratamiento de valores nulos e inconsistencias.
- Preparación del dataset para el análisis.

### Notebook 02 · Statistical & Behavioral Analysis

- Implementado el análisis estadístico de las principales variables.
- Incorporados Business Insights derivados del análisis exploratorio.
- Documentadas las conclusiones estadísticas relevantes para el negocio.

### Notebook 03 · Feature Engineering

- Creado el dataset enriquecido para análisis y visualización.
- Implementadas las variables derivadas orientadas al negocio:
  - `total_products`
  - `avg_transaction_amount`
  - `avg_loan_amount`
  - `engagement_level`
  - `multi_product`
  - `balance_level`
- Documentadas las decisiones de diseño del Feature Engineering.
- Validado el dataset final sin valores nulos.
- Exportado el dataset enriquecido para Power BI.

---

# Power BI Analytics

## Dashboard 01 · Executive Overview

- Diseñado el dashboard ejecutivo con los principales KPIs de la cartera.
- Implementadas visualizaciones para resumir el perfil general de los clientes.
- Analizado el nivel de vinculación, saldo y composición de productos.
- Validado el dashboard como visión ejecutiva del negocio.

### Dashboard 02 · Customer Segmentation

- Implementado el análisis del perfil financiero de los clientes.
- Incorporadas visualizaciones sobre saldo medio, perfil crediticio y nivel de vinculación.
- Diseñada una matriz resumen para facilitar la comparación entre segmentos.
- Validado el dashboard como herramienta de segmentación comercial.

### Dashboard 03 · Financial Activity

- Implementado el análisis de la actividad financiera de los clientes.
- Analizada la relación entre número de productos y actividad transaccional.
- Incorporadas visualizaciones sobre volumen económico y comportamiento financiero.
- Documentados los principales hallazgos obtenidos durante el análisis.

### Dashboard 04 · Business Insights & Recommendations

- Diseñado el dashboard ejecutivo de conclusiones.
- Resumidos los principales Business Insights del proyecto.
- Incorporadas recomendaciones estratégicas orientadas a negocio.
- Cerrado el storytelling del proyecto mediante una página final de apoyo a la toma de decisiones.

---

# Documentación

- Actualizado `PROJECT_DEFINITION.md`.
- Actualizado `DASHBOARD_DESIGN.md` con el diseño definitivo de los cuatro dashboards.
- Actualizado `INSIGHTS.md` incorporando los hallazgos obtenidos en Power BI.
- Actualizado `KPI_CATALOG.md`.
- Revisada la documentación para garantizar la trazabilidad entre SQL, Python y Power BI.

---

# Estado del proyecto

- ✅ Diseño del proyecto completado.
- ✅ Análisis SQL completado.
- ✅ Análisis Python completado.
- ✅ Dashboard Power BI completado.
- ✅ Documentación técnica actualizada.
- 🚧 Proyecto preparado para la revisión final, publicación en GitHub y difusión en LinkedIn.