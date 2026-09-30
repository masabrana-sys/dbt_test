# Exercise 11 (optional): a Python model on Snowflake (Snowpark)
def model(dbt, session):
    dbt.config(materialized="table")
    orders = dbt.ref("stg_lab_orders")
    return orders.group_by("STATUS").count()
