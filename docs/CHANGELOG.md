# Changelog

Este documento registra los principales hitos alcanzados durante el desarrollo del proyecto.

No sustituye al historial de Git, sino que documenta la evolución funcional del proyecto y las decisiones implementadas en cada fase.

---

## [Unreleased]

### SQL Analytics

- Implementadas las cuatro consultas analíticas orientadas a negocio:
  - Customer Intelligence.
  - Product Intelligence.
  - Financial Activity Intelligence.
  - Business Relationships.
- Documentados los principales Business Insights obtenidos durante el análisis SQL.

### Python Analytics

#### Notebook 01 · Data Quality & Preparation

- Evaluación de la calidad de los datos.
- Tratamiento de valores nulos e inconsistencias.
- Preparación del dataset analítico.

#### Notebook 02 · Statistical & Behavioral Analysis

- Implementado el análisis estadístico de las principales variables.
- Incorporados Business Insights derivados del análisis exploratorio.
- Documentadas las conclusiones estadísticas relevantes para el negocio.

#### Notebook 03 · Feature Engineering

- Creado el dataset enriquecido para análisis y visualización.
- Implementadas seis variables derivadas orientadas al negocio:
  - `total_products`
  - `avg_transaction_amount`
  - `avg_loan_amount`
  - `engagement_level`
  - `multi_product`
  - `balance_level`
- Documentadas las decisiones de diseño del Feature Engineering.
- Validado el dataset final sin valores nulos.
- Exportado el dataset enriquecido para su utilización en Power BI.