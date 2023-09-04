# Databricks notebook source
print("Hello World")

# COMMAND ----------

# MAGIC %sql
# MAGIC SELECT "Hello World"

# COMMAND ----------

# MAGIC %md
# MAGIC
# MAGIC # Title 
# MAGIC ## Title
# MAGIC ### Tile 
# MAGIC

# COMMAND ----------

# MAGIC %run ./Includes/Setup

# COMMAND ----------

print(full_name)

# COMMAND ----------

# MAGIC %fs ls '/databricks-datasets'

# COMMAND ----------

dbutils.help()

# COMMAND ----------

dbutils.fs.help()

# COMMAND ----------

files = dbutils.fs.ls('databricks-datasets')
print(files)

# COMMAND ----------

display(files)
