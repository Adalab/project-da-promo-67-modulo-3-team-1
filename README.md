# Transformando el Talento 🧠📊

Proyecto de análisis de datos para ABC Corporation, una consultora tecnológica que nos contrata para investigar por qué se está produciendo una **fuga de talento** entre sus empleados y qué factores influyen en su satisfacción y permanencia.

Proyecto Módulo 3 · Bootcamp de Análisis de Datos

---

## 📁 Contenido del repositorio

```
├── files/
│   ├── hr.csv                       # Dataset original
│   ├── hr_limpio.csv                # Dataset limpio y transformado
│   ├── proyecto_talento_team_1.db   # Base de datos relacional (SQLite)
│   └── dashboard/                   # Dashboard interactivo (Dash)
├── Transformando-el-Talento.ipynb   # Fase 1 y 2: EDA y transformación de datos
├── fase-3-visualizacion.ipynb       # Fase 3: visualización e insights de negocio
├── BBDD_talento.sql                 # Dump de la estructura de la base de datos
├── Guía_de_descarga.ipynb           # Instrucciones para ejecutar el dashboard
└── Transformando-el-Talento.pdf     # Enunciado del proyecto
```

---

## 🎯 Objetivo

Identificar los factores que más influyen en la rotación de empleados (`Attrition`) y proponer recomendaciones accionables para mejorar la retención, a partir del dataset de RRHH proporcionado por el cliente (IBM HR Analytics Attrition).

---

## 🧩 Fases del proyecto

| Fase | Descripción | Estado |
|---|---|---|
| 1. Análisis Exploratorio | Exploración inicial del dataset: estructura, tipos de dato, nulos, duplicados | ✅ |
| 2. Transformación de Datos | Limpieza de nulos, corrección de formato, eliminación de columnas sin información, ajuste de tipos | ✅ |
| 3. Visualización | Análisis de la relación entre variables y `Attrition`, generación de insights | ✅ |
| 4. Diseño de BBDD e Inserción | Modelado relacional y carga de los datos en una base de datos | ✅ |
| 5. ETL (bonus) | Automatización de extracción, transformación y carga | — |

---

## 🛠️ Tecnologías

- **Python**: pandas, numpy, matplotlib, seaborn
- **SQL**: SQLite / MySQL
- **Dash**: dashboard interactivo
- **GitHub**: control de versiones y trabajo colaborativo
- **Metodología Agile**: sprints, dailys, sprint reviews

---

## 🧹 Transformación de datos — resumen

- Eliminación de 4 filas duplicadas exactas.
- Eliminación de `StandardHours`, `EmployeeCount` y `Over18` por no aportar información (un único valor en todo el dataset).
- Tratamiento de nulos en 11 columnas, combinando imputación por mediana (variables numéricas asimétricas) y por moda (variables categóricas), siempre comprobando previamente si los nulos seguían algún patrón por grupo.
- Corrección del formato de `JobRole` (capitalización y espacios).
- Ajuste de tipos de dato: columnas que habían pasado a `float` por causa de los nulos, convertidas de nuevo a `int` tras la imputación.

Dataset limpio resultante: **1470 filas, 32 columnas, sin nulos**.

---

## 🔍 Principales insights

- **Horas extra**: factor individual más fuerte de rotación (30,9% frente a 10,5%), sin que se explique por diferencias de sueldo o satisfacción.
- **Antigüedad y manager**: la mayoría de las bajas se concentran en los primeros años; la rotación con menos de 1-2 años con el mismo manager es especialmente alta.
- **Puesto**: `Sales Representative` y los niveles de entrada (`JobLevel` bajo) presentan la mayor rotación.
- **Perfil de mayor riesgo**: empleados jóvenes, solteros, en puestos de entrada.
- **Salario**: influye, pero no de forma lineal — aumentos salariales muy altos no garantizan la retención.
- **Viajes de trabajo**: a mayor frecuencia de viaje, mayor rotación.

---

## 💡 Recomendaciones

1. **Revisar la política de horas extra y viajes**, priorizando la redistribución de la carga sobre la compensación económica.
2. **Acompañamiento estructurado en los dos primeros años**: seguimiento con el manager y formación garantizada desde el primer año.
3. **Plan de desarrollo visible para perfiles junior**, con rutas de ascenso claras, especialmente en puestos de entrada.

---

## 🖥️ Cómo ejecutar el dashboard

Ver instrucciones detalladas en `Guía_de_descarga.ipynb`. Resumen rápido:

```bash
cd dashboard
pip install -r requirements.txt
python app.py
```

Abrir el navegador en `http://127.0.0.1:8050`

---

## 👥 Equipo

Nati Guerrero

Cristina Sáenz

Checha Martínez

Alex Prieto

---

## 📄 Licencia

Proyecto académico desarrollado en el marco del Módulo 3 del bootcamp de Análisis de Datos.
