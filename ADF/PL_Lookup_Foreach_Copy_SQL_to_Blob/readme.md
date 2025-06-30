
# 📄 Multi-Table SQL to Blob Pipeline

This Azure Data Factory (ADF) pipeline demonstrates a dynamic and scalable approach to exporting data from multiple Azure SQL Database tables into separate blob files in Azure Storage. The pipeline leverages `Lookup`, `ForEach`, and `Copy` activities with parameterized datasets to efficiently automate this process.

---

## 🚀 What This Pipeline Does

- Retrieves a list of specific table names (`cars`, `planes`, `movies`) from the Azure SQL `information_schema.tables`.
- Iterates over the table list using a `ForEach` activity.
- Dynamically extracts data from each table and writes it to Azure Blob Storage.
- File naming follows the pattern: `table_name_UTCTimestamp.csv` (e.g., `cars_2025-06-30T20:15:00Z.csv`).

---

## 🔗 Linked Services

| Name                    | Type                  | Description                       |
|-------------------------|-----------------------|-----------------------------------|
| `LS_AzureSqlDatabase`   | Azure SQL Database    | Source database for lookup & copy |
| `LS_AzureBlobStorage`   | Azure Blob Storage    | Destination blob container        |

---

## 📦 Datasets

| Name                     | Type               | Parameterized | Purpose                          |
|--------------------------|--------------------|---------------|----------------------------------|
| `DS_AzureSqlTable_Lookup` | Azure SQL Table     | ❌             | Used in Lookup for table names   |
| `DS_AzureSqlTable_Param`  | Azure SQL Table     | ✅ `tablename` | Source for dynamic table copies  |
| `DS_Blob_Generic_CSV`     | Delimited Text      | ✅ `relativePath` | Sink for blob output files       |

---

## 🧬 Parameters and Expressions

- **Source Dataset Parameter**:  
  `@item().table_name` – dynamically passes table name to SQL source.

- **Sink Dataset Parameter**:  
  `@concat(item().table_name,'_',utcNow(),'.csv')` – builds unique blob filename per table with UTC timestamp.

---
## 📁 Sample File Output

Files created in Blob Storage will follow this naming format:

```
cars_2025-06-30T20:15:00Z.csv
planes_2025-06-30T20:15:02Z.csv
movies_2025-06-30T20:15:04Z.csv
```

Each file represents full data extract from the corresponding Azure SQL table.

---


## 🖼️ Screenshots


- ![Diagram of Azure Data Factory pipeline with monitor view.](./screenshots/pipeline_lkpforeach.png)

- ![Azure Storage browser interface listing the three exported CSV files.](./screenshots/scr_blob_storage.png)

---

This approach enables quick and efficient design of an ADF pipeline that processes multiple SQL tables in parallel, copying data into corresponding CSV files.