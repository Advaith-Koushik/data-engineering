# 🚗 cars.csv to Azure SQL using Azure Data Factory

This is a hands-on Azure Data Factory (ADF) pipeline I built to move data from a CSV file in Azure Blob Storage into a structured table in Azure SQL Database.

The purpose was to get practical experience with connecting source and destination systems, configuring datasets and linked services, and automating data movement with ADF. It’s a foundational pipeline, but it covers all the core components clearly.

---

## 🧠 What This Pipeline Does

- Takes a CSV file called `cars.csv` stored in a Blob container named `datasets`
- Maps it to a table called `cars` in Azure SQL Database
- Inserts the records directly without transformations

---

## 🔗 Linked Services

| Name                  | Type              | Description                                 |
|-----------------------|-------------------|---------------------------------------------|
| `LS_AzureBlobStorage` | AzureBlobStorage  | Connects to Azure Blob Storage (source)     |
| `LS_AzureSqlDatabase` | AzureSqlDatabase  | Connects to Azure SQL Database (destination)|

*Note: Credentials and connection strings have been masked.*

---

## 📁 Datasets

| Name                   | Type           | Description                                  |
|------------------------|----------------|----------------------------------------------|
| `DS_Azure_Blob_Cars`   | DelimitedText  | Source CSV dataset from Blob Storage         |
| `Azure_SQL_Table_Cars` | AzureSqlTable  | Target dataset for SQL table `dbo.cars`      |

The CSV includes these columns:  
`Make`, `Model`, `Type`, `Origin`, `DriveTrain`, `Length`, `Mileage`

---

## 🛠️ SQL Table Schema

Here’s the SQL structure I used for the destination table:

```sql
CREATE TABLE dbo.cars (
    Make VARCHAR(100),
    Model VARCHAR(100),
    Type VARCHAR(50),
    Origin VARCHAR(50),
    DriveTrain VARCHAR(50),
    Length INT,
    Mileage INT
);
