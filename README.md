# Dabrowski Software Development [ T-SQL ]
-
# <strong>CURRENT RELEASE</strong> [ AVAILABLE ]
- NEW:
 - [PROCEDURE]	[CONVERT_JSON_OBJECT_TO_SQL_TABLE_3]:
 - *# v1.5.0 [ full details in the header of the procedure]*
 -
 - FOUND BUG: complex object anywhere in a hierarchy CANNOT HAVE only one property, because algorithm will fail. Has to have at least two properties. This bug exists in CONVERT_JSON_OBJECT_TO_SQL_TABLE_2 too. This bug will be fixed in the vNext. As for CONVERT_JSON_OBJECT_TO_SQL_TABLE_2, the update will be available ASAP.
-
POSTED ON [2016-10-30 15:30:00 GMT +01:00]
 -
 - [T-SQL UTILITY FUNCTIONS]:
 - *# v3.0.0 [full details in a file called T-SQL UTILITY FUNCTIONS.sql]*
 -
- <strong>UPLOADED 2016-10-16 21:09:00 GMT +01:00</strong>
-

# 
-
#
-

## <strong>NEXT RELEASE [ scheduled for the 17th of January 2017 ]</strong>
- FEATURES:
 - COMPLEX OBJECTS WITH DIFFERENT NUMBER OF COLUMNS:
 - *# 2+ complex objects under main object with the same nesting level can have different number of columns*
 -
 - MULTIPLE INSTANCES:
 - *# running 1+ instances (with the same parameters) concurrently (from different sessions) on the same SQL Server.*
-
#
##All included in <strong>CONVERT_JSON_OBJECT_TO_SQL_TABLE_4</strong> procedure.
#
-

### <strong>PREVIOUS RELEASES</strong>
- OLD:
 - [PROCEDURE]	[CONVERT_JSON_OBJECT_TO_SQL_TABLE_2]:
 - *#JSON properties to table columns mapping, full details in the header of the procedure.*
 - <strong>UPLOADED 2016-07-17 15:30:00 GMT +01:00 [BUG FIX]</strong>
 -
 - [PROCEDURE]	[CONVERT_JSON_OBJECT_TO_SQL_TABLE_2]:
  - *#full details inside procedure, and complex JSON object invocation example inside*
  - <strong>CONVERT_JSON_OBJECT_TO_SQL_TABLE_2_complex_example.sql</strong> file in the repository's root directory.
  - <strong>UPLOADED 2016-07-14 21:13:00 GMT +01:00</strong>
  -
 - [PROCEDURE]	[CONVERT_JSON_OBJECT_TO_SQL_TABLE]:
 - *#@P_TEMP_TABLE_TO_STORE_JSON_OBJECT AS TINYINT -> @P_TEMP_TABLE_TO_STORE_JSON_OBJECT AS SYSNAME*
 - <strong>UPLOADED 2016-06-24 17:50:00 GMT +01:00 [BUG FIX]</strong>
 -
 - [FUNCTION]	[NORMALIZE_NAME]:
 - *#inside function body replacement of '\t' -> CHAR(9)*
 - <strong>UPLOADED 2016-06-24 20:48:00 GMT +01:00 [BUG FIX]</strong>
 -
-
#License: [MIT]:
 - [http://www.opensource.org/licenses/mit-license.php]
-
#Description: [functions && procedures for day-to-day tasks]:
 - sending formmatted email with applied CSS2/3 rules stright from database,
 - converting query result to JSON format,
 - creating C# class based on a table,
 - converting separator separated list of values into temporary table and returning result as a select query,
 - creating class property in the form of PascalCase or CamelCase,
 - retrieving full table column data type based on simple name like varchar, decimal, etc.
 - converting JSON data to table object <strong>[UPLOADED]</strong>
 - util string functions <strong> [UPLOADED]</strong> 
 - converting JSON data to table object <strong> [SUPPORT FOR USER CUSTOM TYPE] [UPLOADED]</strong>

#Example usage:
DECLARE @JSON AS dbo.JSON
INSERT @JSON
EXEC CONVERT_JSON_OBJECT_TO_SQL_TABLE 
										'',
										'[
										 {
											"property1": "1",
											"property2": "223343434"
										 },
										 {
											"property1": "22",
											"property2": "11111111"
										 }
									   ]',
									   1,
									   'dbo.JSON'

SELECT * FROM @JSON

*Details are inside of this solution.*

# Converting query result to JSON format [available from SQL SERVER 2008]. Microsoft will release this feature natively in the latest SQL SERVER 2016 release.

# This "library" can be downloaded free of charge and be distributed, further modified and used for commercial gain according to MIT licence, that is shipped with this project.
  
# This source code works from SQL SERVER 2008 version up to current one.

# If you have any (negative/positive) feedback, do not hesitate to contact me @ lukkasz.dabrowski@gmail.com
