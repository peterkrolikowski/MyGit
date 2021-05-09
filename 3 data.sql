
merge into dbo.lookups as trg using
(
	select l.id, 32 as ds
		from dbo.lookups l
) as src on trg.id = src.id 
	when not matched
	when matched set trg.DataSource = src.ds;
	
-- adding some changes	
	
go


