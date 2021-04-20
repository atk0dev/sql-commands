
SELECT cpu_time AS c, * FROM sys.dm_exec_sessions ORDER BY c DESC

DECLARE @sqltext VARBINARY(128)

SELECT @sqltext = sql_handle
FROM sys.sysprocesses
WHERE spid = 113
SELECT TEXT
FROM sys.dm_exec_sql_text(@sqltext)


-- 113 is a session_id
-- kill 113


