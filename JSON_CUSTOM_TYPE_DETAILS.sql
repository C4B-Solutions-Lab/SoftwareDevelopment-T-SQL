--			INT, BIGINT, VARCHAR, NVARCHAR, TEXT, NTEXT, CHAR, NCHAR, MONEY, NUMERIC, DECIMAL, DATETIME, UNIQUEIDENTIFIER, BINARY, VARBINARY

			SELECT
				C.name,
				C.system_type_id,
				C.max_length,
				C.precision,
				c.scale
			--INTO #EXTERNAL_USER_TABLE_BASED_ON_USER_CUSTOM_TABLE_TYPE
			FROM sys.table_types AS TT
			JOIN sys.columns AS C ON C.object_id = TT.type_table_object_id
			JOIN sys.types AS T ON T.system_type_id = TT	.system_type_id
			WHERE TT.is_user_defined = 1
			 AND TT.is_table_type = 1
			 AND TT.name = 'JSON'
			ORDER BY C.column_id



			
select system_type_id
from sys.types
--order by system_type_id