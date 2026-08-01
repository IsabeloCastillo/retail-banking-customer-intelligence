# Proyecto · Retail Banking Customer Intelligence

## Definición del Proyecto

---

# 1. Contexto empresarial

Una entidad bancaria necesita disponer de una visión integrada de la actividad financiera de sus clientes para comprender cómo utilizan los distintos productos financieros y cómo evolucionan los principales indicadores del negocio.

La información se encuentra distribuida entre distintas áreas (clientes, cuentas, tarjetas, préstamos, comercios, sucursales y transacciones), dificultando la obtención de una visión unificada que facilite la toma de decisiones comerciales y estratégicas.

Este proyecto desarrolla una solución de Business Intelligence orientada a analizar la actividad financiera, la adopción de productos y el comportamiento transaccional mediante SQL, Python y Power BI, proporcionando información útil para apoyar la toma de decisiones de la Dirección de Banca Minorista.

# 2. Problema de negocio

La Dirección de Banca Minorista dispone de grandes volúmenes de información distribuidos entre diferentes áreas del negocio, pero carece de una visión integrada que permita comprender cómo utilizan los clientes los distintos productos financieros y cómo evoluciona la actividad de la entidad.

Como consecuencia, resulta más complejo identificar oportunidades comerciales, realizar el seguimiento de indicadores clave y apoyar la toma de decisiones basadas en datos.

El objetivo del proyecto es transformar los datos disponibles en información útil que facilite la comprensión del negocio y contribuya a una mejor toma de decisiones.

# 3. Objetivo general

Diseñar y desarrollar una solución de Business Intelligence que proporcione una visión integrada de la actividad financiera, la adopción de productos y el comportamiento transaccional de una entidad bancaria mediante el análisis de datos y la construcción de un dashboard ejecutivo en Power BI.

# 4. Objetivos específicos

- Analizar la composición de la cartera de clientes como contexto del negocio.
- Analizar la adopción y combinación de productos financieros.
- Analizar la actividad transaccional y su evolución temporal.
- Identificar relaciones entre clientes, productos y actividad financiera.
- Diseñar indicadores clave (KPIs) que apoyen la toma de decisiones.
- Desarrollar un dashboard ejecutivo en Power BI orientado al negocio.

# 5. Alcance

El proyecto se centrará en el análisis de la actividad financiera de una entidad bancaria mediante un conjunto de datos relacional sintético, estudiando la relación entre clientes, productos financieros y transacciones para generar información útil para el negocio.

La solución abarcará las siguientes áreas:

- Análisis del perfil de clientes.
- Análisis de cuentas bancarias.
- Análisis de tarjetas.
- Análisis de préstamos.
- Análisis de la actividad transaccional.
- Análisis temporal de clientes, productos y transacciones.
- Diseño de indicadores clave de negocio (KPIs).
- Desarrollo de consultas SQL orientadas a responder preguntas de negocio.
- Análisis complementario mediante Python.
- Desarrollo de un dashboard ejecutivo en Power BI.
- Elaboración de recomendaciones basadas en los resultados obtenidos.

# 6. Exclusiones

Quedan fuera del alcance de este proyecto:

- Modelos de Machine Learning.
- Modelos predictivos.
- Detección de fraude.
- Sistemas de recomendación.
- Procesamiento de datos en tiempo real.
- Automatización de procesos ETL.
- Integración con APIs externas.
- Desarrollo de aplicaciones web.
- Optimización de campañas comerciales mediante modelos avanzados.

# 7. Stakeholders

Los principales interesados en la solución son:

- Dirección de Banca Minorista.
- Dirección Comercial.
- Responsables de Oficina.
- Equipo de Analítica de Datos.

# 8. Usuarios finales

La solución está dirigida principalmente a:

- Dirección de Banca Minorista.
- Dirección Comercial.
- Responsables de Oficina.

Estos usuarios utilizarán el dashboard para realizar el seguimiento de la cartera de clientes, la utilización de productos financieros y la evolución de la actividad bancaria, facilitando la toma de decisiones basada en datos.

# 9. Pregunta principal del proyecto

¿Cómo puede una entidad bancaria comprender mejor la relación entre clientes, productos financieros y actividad transaccional para apoyar la toma de decisiones basada en datos?

# 10. Business Questions

El proyecto se estructura en torno a un conjunto de **preguntas de negocio** que guiarán todo el análisis realizado mediante **SQL, Python y Power BI**.

Cada **Business Question** responde a una necesidad concreta del negocio y servirá como punto de partida para el desarrollo de consultas SQL, análisis complementarios en Python, visualizaciones en Power BI y recomendaciones finales.

---

# Customer Intelligence

## **BQ-01 · Perfil de la cartera de clientes**

### **Pregunta de negocio**

¿Cuáles son las principales características de la cartera de clientes del banco?

### **Valor para el negocio**

Proporcionar una visión general de la cartera que sirva como contexto para interpretar el resto de análisis realizados durante el proyecto.

---

## **BQ-02 · Evolución de la captación de clientes**

### **Pregunta de negocio**

¿Cómo ha evolucionado la captación de nuevos clientes a lo largo del tiempo?

### **Valor para el negocio**

Evaluar la estabilidad o el crecimiento de la cartera de clientes e identificar posibles cambios en la evolución del negocio.

---

# Product Intelligence

## **BQ-03 · Penetración de productos financieros**

### **Pregunta de negocio**

¿Qué porcentaje de clientes utiliza cada uno de los productos financieros ofrecidos por la entidad?

### **Valor para el negocio**

Conocer el nivel de adopción de cuentas, tarjetas y préstamos para identificar oportunidades de crecimiento y desarrollo comercial.

---

## **BQ-04 · Vinculación de clientes**

### **Pregunta de negocio**

¿Qué combinaciones de productos financieros son las más frecuentes entre los clientes?

### **Valor para el negocio**

Analizar el grado de vinculación de los clientes con la entidad e identificar oportunidades de venta cruzada (**Cross-Selling**).

---

# Financial Activity

## **BQ-05 · Evolución de la actividad financiera**

### **Pregunta de negocio**

¿Cómo evoluciona la actividad transaccional del banco a lo largo del tiempo?

### **Valor para el negocio**

Realizar el seguimiento de la actividad financiera e identificar tendencias en el volumen de operaciones.

---

## **BQ-06 · Actividad financiera por cliente, cuenta y comercio**

### **Pregunta de negocio**

¿Qué clientes, cuentas y comercios concentran el mayor volumen de actividad financiera?

### **Valor para el negocio**

Identificar los principales generadores de actividad para apoyar decisiones comerciales y operativas.

---

# Business Relationships

## **BQ-07 · Relación entre productos y actividad**

### **Pregunta de negocio**

¿Existe relación entre la adopción de productos financieros y el nivel de actividad transaccional de los clientes?

### **Valor para el negocio**

Determinar si los clientes con una mayor vinculación presentan también una mayor actividad financiera.

---

## **BQ-08 · Patrones de comportamiento financiero**

### **Pregunta de negocio**

¿Qué patrones de comportamiento pueden identificarse al relacionar clientes, cuentas, tarjetas, préstamos y transacciones?

### **Valor para el negocio**

Descubrir relaciones de negocio que no pueden identificarse analizando cada entidad por separado y generar conocimiento útil para la toma de decisiones.

---

# Executive Insights

## **BQ-09 · Indicadores estratégicos del negocio**

### **Pregunta de negocio**

¿Qué indicadores resumen el estado actual del negocio y qué oportunidades de mejora pueden identificarse?

### **Valor para el negocio**

Integrar los principales **KPIs** e **insights** del proyecto en un dashboard ejecutivo que facilite la toma de decisiones por parte de la Dirección de Banca Minorista.

# 11. Valor esperado para el negocio

La solución permitirá disponer de una visión integrada de la actividad financiera, la adopción de productos y el comportamiento transaccional de los clientes mediante un dashboard ejecutivo que facilite el seguimiento del negocio y apoye la toma de decisiones.

Entre los principales beneficios esperados se encuentran:

- Mejor comprensión de la cartera de clientes.
- Seguimiento de la evolución del negocio mediante indicadores temporales.
- Identificación de oportunidades de venta cruzada.
- Centralización de indicadores clave (KPIs).
- Apoyo a la toma de decisiones mediante información basada en datos.

# 12. Justificación del dataset

El proyecto utiliza un conjunto de datos bancario sintético con una estructura relacional compuesta por siete entidades principales:

- Customers
- Accounts
- Cards
- Loans
- Merchants
- Branches
- Transactions

El dataset ha sido seleccionado porque reproduce de forma coherente las relaciones existentes en una entidad bancaria, permitiendo desarrollar un proyecto de Business Intelligence orientado al análisis de la actividad financiera, la adopción de productos y las relaciones entre clientes, cuentas, préstamos, tarjetas y transacciones."

Su estructura facilita la realización de consultas SQL complejas, análisis mediante Python y el desarrollo de dashboards ejecutivos en Power BI.

Aunque los datos son sintéticos, presentan un volumen suficiente y relaciones consistentes para simular un escenario de negocio real y responder a las preguntas de negocio definidas en este proyecto.

# 13. Arquitectura general

El proyecto seguirá la siguiente arquitectura de trabajo:

Dataset Relacional
↓
SQL Analytics
↓
Python Analytics
↓
Power BI Dashboard
↓
Business Insights & Recommendations

Cada fase utilizará la salida de la fase anterior como punto de partida, garantizando la trazabilidad del análisis desde los datos originales hasta las recomendaciones finales.

Todo el desarrollo seguirá el principio:

Business Question → SQL → Python → Visualización → Insight → Recomendación

# 14. Roadmap

El desarrollo del proyecto se organizará en las siguientes fases:

## Fase 1 · Business Design
Definición del problema de negocio, alcance, objetivos y Business Questions.

## Fase 2 · SQL Analytics
Desarrollo de consultas SQL para responder a cada Business Question.

## Fase 3 · Python Analytics
Análisis complementarios, preparación de datos y generación de métricas adicionales.

## Fase 4 · Power BI
Diseño e implementación del dashboard ejecutivo.

## Fase 5 · Business Insights
Obtención de conclusiones y recomendaciones para el negocio.

## Fase 6 · Documentación y publicación
Revisión final del proyecto y publicación en GitHub.

# 15. Criterios de éxito

El proyecto se considerará finalizado cuando se cumplan los siguientes criterios:

- Todas las Business Questions hayan sido respondidas mediante análisis SQL.
- Los análisis en Python complementen el trabajo realizado en SQL.
- El dashboard responda a todas las preguntas de negocio definidas.
- Se documenten los principales insights y recomendaciones.
- El proyecto quede completamente documentado y publicado en GitHub.