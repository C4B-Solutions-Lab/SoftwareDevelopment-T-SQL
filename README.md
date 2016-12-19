# Dabrowski Software Development [ T-SQL ]
# JSON2SQL
-
# <strong>CURRENT RELEASE</strong> [ AVAILABLE ]
- NEW:
 - [PROCEDURE]	[CONVERT_JSON_OBJECT_TO_SQL_TABLE_3]:
 - *# v1.5.0 [ full details in the header of the procedure]*
 -
 - [FOUND BUG]: complex object anywhere in a hierarchy CANNOT HAVE only one property, because algorithm will fail. Has to have at least two properties. This bug exists in CONVERT_JSON_OBJECT_TO_SQL_TABLE_2 too. This bug will be fixed in the vNext. As for CONVERT_JSON_OBJECT_TO_SQL_TABLE_2 && CURRENT RELEASE, the update will be available ASAP.
  - POSTED ON [2016-10-30 15:30:00 GMT +01:00]
 -
 - [T-SQL UTILITY FUNCTIONS]:
 - *# v4.0.0 [full details in a file called T-SQL UTILITY FUNCTIONS.sql]*
 -
 -
 <strong>UPDATE RELEASE 2016-12-02 12:00:00 GMT +01:00 [ AVAILABLE ]</strong>
 -
 -
 ##<strong>UPLOADED 2016-12-02 09:23:00 GMT +01:00</strong>
 -
 Plase refer to README.txt inside the solution for guidelines.

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
 - due to some analysis there is NO 100% GUARANTEE to run the alghorithm from different sessions with EXACTLY THE SAME PARAMETERS without runtime throwing any errors.
 -
 - following carried out tests proved that temporary tables cannot guarantee 100% accuracy of the output in some rare scenarios  ***[ UPDATE 2016-11-30 11:09:00 GMT +01:00 ]***.  
 -
 - THEREFORE this version will include 1 procedure using persistent tables. This solution is aiming to maintain the convention:
 -
  - CONVERT_JSON_OBJECT_TO_SQL_TABLE_4 [ABANDONED]
  - 
  - CONVERT_JSON_OBJECT_TO_SQL_TABLE_4_P [using persistent tables]
  -
 - [T-SQL UTILITY FUNCTIONS]:
 - *# v4.5.0 [dbo.CHECK_SQL_SERVER_VERSION]*
 -  
 # ( In a zip folder called Screenshots you can see performance comparison between v3 and v4 [January 2017 release] based on the same example. vNext is 14x faster based on the Calc sreen )
-
#
##All included in stored procedure: <strong>CONVERT_JSON_OBJECT_TO_SQL_TABLE_4_P</strong>
### &&
##files called T-SQL UTILITY FUNCTIONS.sql and T-SQL UTILITY PROCEDURES.sql
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
