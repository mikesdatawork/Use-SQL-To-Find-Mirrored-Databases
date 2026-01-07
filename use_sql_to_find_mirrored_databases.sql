use master;
set nocount on
select
'database name' = DB_NAME(database_id)
, 'mirror state' = mirroring_state_desc
, 'current mirror role' = mirroring_role_desc
, 'partner server name' = mirroring_partner_name
from
sys.database_mirroring
where
mirroring_guid is not null
