
SELECT 
	CASE
		WHEN BPName IN ('Book Country Clearing', 'Book Country Clearing House') THEN 'BOOKCOUNTRY'
		WHEN BPName IN ('Bookdepot', 'Book depot') THEN 'BOOKDEPOT'
		WHEN BPName LIKE ('%Toronto%') THEN 'UT'
		ELSE BPName
	END AS Supplier
	, AVG (DATEDIFF (WEEK, DateAdded, PostingDate)) AS 'LeadTime'
FROM BookXCenterProduction.SAP.GoodsReceiptReportView
GROUP BY BPName 
HAVING AVG (DATEDIFF (WEEK, DateAdded, PostingDate)) > 0
ORDER BY BPName
;