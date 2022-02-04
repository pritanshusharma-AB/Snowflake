--select * from SF_CONV_T.MASTER_TABLE where td_table_name = 'WSLR_INVTY' and td_database_name = 'WSLR_T'

--select * from SF_CONV_T.MASTER_TABLE_MAP where table_nm = 'WSLR_INVTY'

--select top 10 * from SF_CONV_T.MASTER_TABLE_LOG where tablename = 'WSLR_INVTY'
--and DBNAME = 'WSLR_T' order by runtimestamp desc;

--select top 10 * from WSLR_T.WSLR_INVTY

select *
from SF_CONV_T.V_master_table MT, SF_CONV_T.master_table_map MTM
where MT.td_database_name = mtm.schema_nm and mt.td_table_name = table_nm
and  schema_nm||'.'||table_nm  in ('WSLR_T.WSLR_INVTY', 'WSLR_T.WSLR_SLS_CAL')
and migration_type_id = '2'