
# 🛠️ Data Engineering

Welcome to my data engineering portfolio! This repository showcases hands-on projects and learning exercises I've built while transitioning from an ETL Developer to a Data Engineer.

I’m focused on mastering modern data tools like **Azure Data Factory**, **SQL**, **Databricks**, and **cloud-based pipelines**, with each subfolder containing a documented project that reflects practical scenarios.

---

## 📁 Folder Structure

| Folder                  | Description                                                      |
|-------------------------|------------------------------------------------------------------|
| `ADF/`                  | Projects built using Azure Data Factory pipelines                |
| `SQL/`                  | Data manipulation and cleaning projects using SQL                |
| `Databricks/`           | Projects involving notebooks, Delta Lake, PySpark                |
| `Medallion_Architecture/`| Full-stack ADF + Databricks medallion architecture (Bronze→Gold) |

---

## 🚀 Featured Projects

### 🔷 Azure Data Factory

| Project Folder                                                        | Description                                            |
|------------------------------------------------------------------------|--------------------------------------------------------|
| [`ADF/01_PL_Cars_Blob_to_SQL`](./ADF/01_PL_Cars_Blob_to_SQL)           | Load `cars.csv` from Blob Storage into Azure SQL       |
| [`ADF/02_PL_Dataset_Level_Copy_Blob_SQL`](./ADF/02_PL_Dataset_Level_Copy_Blob_SQL) | Parameterized dataset-level copy from Blob to SQL     |
| [`ADF/03_PL_Pipeline_level_Blob_to_SQL`](./ADF/03_PL_Pipeline_level_Blob_to_SQL) | Entire pipeline copy for movies.csv from Blob to SQL  |
| [`ADF/04_PL_Lookup_Foreach_Copy_SQL_to_Blob`](./ADF/04_PL_Lookup_Foreach_Copy_SQL_to_Blob) | Copy multiple SQL tables to blob using Lookup + ForEach |
| [`ADF/05_PL_Container_SQL_Bulk`](./ADF/05_PL_Container_SQL_Bulk)       | Copy bulk CSVs from container into SQL staging tables |
| [`ADF/06_PL_Monitor_logging`](./ADF/06_PL_Monitor_logging)             | Pipeline demonstrating error handling and logging      |
| [`ADF/07_PL_Trigger_Strg_Event`](./ADF/07_PL_Trigger_Strg_Event)       | Trigger pipeline based on new file event in Storage    |
| [`ADF/08_PL_API_SQL_Financial_Analysis`](./ADF/08_PL_API_SQL_Financial_Analysis) | Ingest CSV data from API into SQL with auto schema + post-processing |
| [`ADF/09_PL_Incremental_load`](./ADF/09_PL_Incremental_load)                 | Metadata-driven incremental load using watermark on Lahman dataset   |
| [`ADF/10_PL_Dataflows`](./ADF/10_PL_Dataflows)                         | Two dataflows cleaning & transforming raw movie data                 |

---

### 🧮 SQL Projects

| Project Folder                             | Description                              |
|--------------------------------------------|------------------------------------------|
| [`SQL/Data_cleaning_project`](./SQL/Data_cleaning_project) | Clean and transform messy data using SQL best practices |

---

### ⚡ Databricks Notebooks

| Project Folder                                   | Description                                                                 |
|--------------------------------------------------|-----------------------------------------------------------------------------|
| [`Databricks/Delta_Lake`](./Databricks/Delta_Lake)             | Demonstrates Delta table creation, time travel, and vacuum using Scala and SQL |
| [`Databricks/JDBC_Connection`](./Databricks/JDBC_Connection)   | Read from Azure SQL DB using JDBC in PySpark                                |
| [`Databricks/Mini_Project`](./Databricks/Mini_Project)         | Simple ETL pipeline using Spark SQL and ADLS write                          |
| [`Databricks/ADLS_SP_Mounting`](./Databricks/ADLS_SP_Mounting) | Mounting ADLS using SPN authentication and secret scopes (Scala-based)     |

---

### 🏗️ Medallion Architecture (ADF + Databricks)

| Project Folder                                         | Description                                                                                     |
|--------------------------------------------------------|-------------------------------------------------------------------------------------------------|
| [`Medallion_Architecture`](./Medallion_Architecture)     | End-to-end project demonstrating Bronze → Silver → Gold layer architecture using ADF + Databricks. Includes Azure SQL source, ADLS containers, parameterized ADF pipeline, and Delta-based transformations via Databricks notebooks. |

---

## 📌 Goals for This Repo

- Maintain real-world pipeline examples with full documentation
- Show before/after snapshots (e.g., raw → cleaned data)
- Track my learning progress in a structured and reviewable format

---

## 🙋‍♂️ About Me & Contact

I'm a data professional with over 6 years of experience in ETL development and Informatica administration. I'm currently upskilling into a Data Engineering role with a focus on:

- Azure Data Engineering tools (ADF, Synapse, Microsoft Fabric)
- SQL and query optimization
- Cloud pipelines and automation
- Python, REST APIs, and modern data workflows

I'm actively building out my GitHub portfolio to showcase real-world pipelines and hands-on learning projects.

### 📬 Let's Connect

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-blue?logo=linkedin)](https://www.linkedin.com/in/advaith-koushik-s/)  
[![GitHub](https://img.shields.io/badge/GitHub-Advaith--Koushik-black?logo=github)](https://github.com/Advaith-Koushik)  
📧 [advai97@gmail.com](mailto:advai97@gmail.com)

Thanks for checking out my work!
