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

## Now we have to clean the code and make it more efficient and make a pipeline
# Cost Analysis V2
The information needed is:
    1. Import Libraries.
    2. Connect to databases (PROCUREMENTDB, BookXCenterProduction)
    3. Define clean_up tool (add dtypes to strings)
    4. Import dbo.PublisherDictionary
        clean_up
    5. Import Isbn.Bibliography [Isbn, Titles, Publisher, Edition, Author, PublicationDate]
        clean_up
    6. Import ISBN.prices
        clean_up
    7. Import Process.SupplierMegaList
        [ISBN, Supplier, currency, Discount, retail price, net price, shipping cost, sea freight cost, max quantity, min]
        [ISBN, Publisher]
        clean_up
    8. Import Excel Supplier.
        clean_up
    9. Import Exce; Supplier Short Discount
        clean_up
    10. Import Excel Restrictions
        clean_up
    11. Left Merge Isbn.Bibliography with dbo.PublisherDictionary - isbn_bibliography_2
    12. Left Merge Process.SupplierMegaList [ISBN, Publisher] with dbo.PublisherDictionary - Process.SupplierMegaList_pub
    13. Outer Merge isbn_bibliography_2 & Process.SupplierMegaList_pub - isbn_bibliography_3 - [Isbn, Titles, Publisher, Edition, Author, PublicationDate]
    14. Left Merge isbn_bibliography_3 with ISBN.prices.USD - isbn_bibliography_4  [Isbn, Titles, Publisher, Edition, Author, PublicationDate, USD Retail]
    15. Left Merge Process.SupplierMegaList[ISBN, Supplier, currency, Discount, retail price, net price, shipping cost, sea freight cost, max quantity, min] with  isbn_bibliography_4
    16. Left Merge isbn_bibliography_4 with ISBN.prices - isbn_bibliography_5
    15. Left Merge isbn_bibliography_5 with Excel.Supplier - excelsupplier_2
    16. Add WC to CAD to excelsupplier_2 - excelsupplier_3
    17. Left Merge excelsupplier_3 with Short Discount - excelsupplier_4
    18. Left Merge excelsupplier_4 with restrictions - excelesupplier_5
    
    
    # Suppliers Lead time
