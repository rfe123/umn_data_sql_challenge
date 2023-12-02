# umn_data_sql_challenge
PostgreSQL Module 009

It’s been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

For this project, you’ll design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. That is, you’ll perform data modeling, data engineering, and data analysis, respectively.

# Results

With the CSV provided, we are able to create a PostGreSQL Database for employee records containing more than 300,000 entries. In data_modeling, we capture a Database Diagram indicating the entity relationships between these CSV files.

The Data Engineering folder includes the SQL functions used to Create these tables in PostGreSQL. Afterwards, the CSV data was imported using pgadmin.

Finally, data_analysis folder includes several queries executed against the database to inspect the content of the csv records.