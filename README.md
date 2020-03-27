# best_supplier
Bring the infromation from the database to improve the selection of the suppliers
## Supplier by list (SQL Database)
first we are going to connect to a SQL database using Pyodbc
### Procedure
1. We import the tables from SQL to pandas
2. We check the head of the tables.
3. We check the name of the columns
4. We filter for the most relevant columns.
5. We combine the prices columns
6. We clean the  ISBN, Suplier, Publisher and Currencies
7. Merge Dictionary based on the Pub Name
8. Add suppliers Fee

## Suplliers with generic discount (excel files).
1. Prices in different currencies
2. List with Pusblisher names.
3. Clean Publisher Name
4. Check Suppliers, currencies, publishers, discount, shipping costs
5. Check Suppliers special discounts
6. Check restrictions
7. Get landed Cost
8. List of ISBN to ananlyse.
