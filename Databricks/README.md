# Databricks Notebooks Showcase

This repository contains hands-on Databricks notebooks demonstrating key Data Engineering concepts using Delta Lake, Azure SQL JDBC connections, and Azure Data Lake Storage authentication.

---

## 📘 Contents

### 1. Delta_Lake
**Notebook**: `Delta_tables_working.ipynb`  
- Demonstrates Delta Lake fundamentals:
  - Creating Delta tables via DataFrame and SQL
  - Time Travel with `VERSION AS OF`
  - VACUUM for file cleanup
  - Table restoration via rollback

### 2. JDBC_Connection
**Notebook**: `JDBC_working.ipynb`  
- Shows how to read data from Azure SQL DB using JDBC connection in Databricks.
- Covers driver setup, table selection, and basic syntax.

### 3. Mini_Project
**Notebook**: `Project_work.ipynb`  
- A simple ETL workflow:
  - Read DIM and FACT tables from Azure SQL
  - Clean data using `.na.fill()` and `.dropDuplicates()`
  - Perform joins and aggregations
  - Save results to ADLS in CSV format

### 4. ADLS_SP_Mounting
**Notebook**: `SPN_Working.ipynb`  
- Demonstrates how to mount Azure Data Lake Storage Gen2 using a Service Principal (SPN)
- Uses Spark config maps and Databricks secret scopes for secure credential handling
- Includes mounting, listing, and unmounting operations

---

## 🔐 Secret Scope Setup (for Non-Premium Workspace)

Since this setup uses **Databricks Standard Tier (non-premium)**, secret scopes were created using the **Databricks CLI** instead of an Azure Key Vault-backed scope.

The CLI command used:
```bash
databricks secrets create-scope --scope my-scope
```

### 📂 Available Keys in `my-scope`

| Key Name     | Description                        |
|--------------|------------------------------------|
| `adls-key`   | ADLS storage account key           |
| `adls-key1`  | Backup ADLS key                    |
| `app-secret` | Service Principal client secret    |
| `azsqlpwd`   | Azure SQL database user password   |
| `my-app-id`  | Azure app registration client ID   |
| `tenant-id`  | Azure tenant ID                    |

These were securely injected into the Databricks environment using:
```python
dbutils.secrets.get(scope="my-scope", key="adls-key")
```

---

## 🔧 Setup Requirements
- Azure Databricks Workspace (Standard or Premium)
- Azure SQL Database
- Azure Data Lake Storage Gen2
- Service Principal credentials with Reader & Storage Blob Data Contributor roles
- Databricks CLI for creating secret scopes
- Spark JDBC Driver for SQL Server

---

## 💡 Notes
- These notebooks were developed for personal learning and training purposes on Azure Databricks.
- Sensitive data is never hardcoded; secrets are managed via CLI-managed scopes due to platform limitations.
- File paths like `/mnt/datasets/` assume that ADLS has been mounted successfully using SPN authentication.

---

## 📜 License
This repository is intended for educational and demonstration purposes. Modify and adapt as needed for your own learning or internal projects.
