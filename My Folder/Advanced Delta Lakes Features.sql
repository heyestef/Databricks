-- Databricks notebook source
DESCRIBE HISTORY employees

-- COMMAND ----------

SELECT *
FROM employees VERSION AS OF 1

-- COMMAND ----------

SELECT * FROM employees@v1

-- COMMAND ----------

DELETE FROM employees

-- COMMAND ----------

SELECT * FROM employees

-- COMMAND ----------

RESTORE TABLE employees TO VERSION AS OF 2 

-- COMMAND ----------

SELECT * FROM employees

-- COMMAND ----------

DESCRIBE HISTORY employees

-- COMMAND ----------

DESCRIBE DETAIL employees

-- COMMAND ----------

OPTIMIZE employees
ZORDER BY id

-- COMMAND ----------

DESCRIBE HISTORY employees

-- COMMAND ----------

-- SET spark.databricks.delta.retentionDurationCheck.enabled = false;
-- VACUUM employees RETAIN 0 HOURS

-- COMMAND ----------

DROP TABLE employees

-- COMMAND ----------

SELECT * FROM employees

-- COMMAND ----------

-- MAGIC %fs ls 'dbfs:/user/hive/warehouse/employess'
