# NOTEBOOK_PLAN.md

## 1. Objetivo de la fase Python

La fase de Python tiene como objetivo complementar el análisis realizado mediante SQL, aportando capacidades de preparación de datos, análisis estadístico e ingeniería de variables.


Python no sustituye el análisis realizado en SQL, sino que amplía el valor del proyecto mediante técnicas que resultan más adecuadas para un entorno de programación que para consultas SQL.

---

# 2. Rol de Python dentro del proyecto

Dentro de la arquitectura del proyecto, Python desempeña cuatro funciones principales:

- Validar y preparar los datos para el análisis.
- Realizar análisis estadísticos complementarios.
- Generar variables derivadas que faciliten el análisis de negocio.
- Preparar el dataset analítico que será utilizado en Power BI.

El análisis de negocio principal se desarrolla mediante SQL. Python complementa dicho análisis y prepara la información para su explotación visual.

---

# 3. Principios de diseño

Durante el desarrollo de la fase Python se seguirán las siguientes normas:

- Python complementa el análisis realizado en SQL.
- Ningún notebook podrá implementar un análisis que ya responda a una Business Question desarrollada en SQL, salvo que aporte un valor analítico adicional claramente justificado.
- Cada notebook tendrá un único objetivo claramente definido.
- No se mezclarán tareas de limpieza, análisis, ingeniería de variables y exportación en un mismo notebook.
- Todo análisis deberá aportar valor para el negocio o facilitar las fases posteriores del proyecto.
- Antes de comenzar un notebook deberán definirse y aprobarse su objetivo, alcance y resultado esperado.
- Cada notebook combinará código, visualizaciones y conclusiones cuando ello facilite la comprensión del análisis.

---

# 4. Estructura de notebooks

## Notebook 01 · Data Quality & Preparation

### Objetivo

Evaluar la calidad de los datos y preparar un dataset consistente para el resto del proyecto.

### Problema que resuelve

Garantizar que los análisis posteriores se realizan sobre datos fiables y correctamente estructurados.

### Incluye

- Conexión con la base de datos SQLite.
- Revisión de la estructura de las tablas.
- Validación de tipos de datos.
- Valores nulos.
- Duplicados.
- Consistencia entre tablas.
- Preparación inicial del dataset analítico.

### Excluye

- KPIs.
- Rankings.
- Análisis de negocio.
- Visualizaciones ejecutivas.

### Resultado esperado

Dataset preparado para el análisis estadístico.

---

## Notebook 02 · Statistical & Behavioral Analysis

### Objetivo

Complementar el análisis SQL mediante técnicas estadísticas y visualizaciones exploratorias.

### Problema que resuelve

Identificar patrones de comportamiento y relaciones entre variables que resultan más apropiados para un análisis estadístico en Python.

### Incluye

- Estadísticos descriptivos.
- Distribuciones.
- Histogramas.
- Boxplots.
- Correlaciones.
- Detección de outliers.
- Análisis exploratorio de variables numéricas.

### Excluye

- Business Questions ya respondidas en SQL.
- Rankings de clientes.
- KPIs del proyecto.
- Segmentaciones ya implementadas.

### Resultado esperado

Comprensión estadística complementaria del comportamiento de los clientes.

---

## Notebook 03 · Feature Engineering

### Objetivo

Crear variables derivadas que faciliten el análisis y la construcción del dashboard.

### Problema que resuelve

Enriquecer el modelo analítico mediante variables calculadas reutilizables.

### Incluye

- Creación de variables derivadas.
- Agrupaciones.
- Variables categóricas.
- Variables de apoyo para Power BI.

### Excluye

- Nuevos análisis descriptivos.
- Visualizaciones.
- KPIs.

### Resultado esperado

Dataset analítico enriquecido con nuevas variables de negocio preparado para su validación.
---

## Notebook 04 · Dataset Preparation for Business

### Objetivo

Validar el dataset analítico generado durante la fase de Feature Engineering y preparar la versión definitiva que será utilizada en Power BI.

### Problema que resuelve

Garantizar que el modelo analítico cumple los requisitos de calidad, consistencia y estructura necesarios para la fase de visualización y análisis de negocio.

### Incluye

- Validación de la estructura del dataset.
- Revisión de tipos de datos.
- Verificación de valores nulos e inconsistencias.
- Selección de variables finales para el modelo analítico.
- Exportación del dataset definitivo para Power BI.

### Excluye

- Nuevas transformaciones de datos.
- Feature Engineering adicional.
- Análisis estadísticos.
- Visualizaciones exploratorias.

### Resultado esperado

Dataset analítico validado y exportado para su utilización en Power BI.
---


# 5. Trazabilidad

Cada notebook deberá responder explícitamente a las siguientes preguntas antes de comenzar su implementación:

- ¿Qué problema resuelve?
- ¿Por qué debe realizarse en Python y no en SQL?
- ¿Qué valor aporta al proyecto?
- ¿Qué análisis quedan fuera de su alcance?
- ¿Qué entregable genera?

Si un notebook no puede responder a estas preguntas, deberá rediseñarse antes de comenzar su implementación.

---

# 6. Criterios de finalización

La fase Python se considerará finalizada cuando:

- Todos los notebooks hayan sido aprobados e implementados.
- Ningún análisis duplique una Business Question respondida previamente mediante SQL.
- El dataset final para Power BI haya sido validado.
- Todo el código siga las buenas prácticas de Python y PEP 8.
- Cada notebook tenga un propósito claramente definido y documentado.