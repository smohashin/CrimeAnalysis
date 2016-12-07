--select top 10 * from dbo.Crimes with(nolock)

----check the current running transactions
--dbcc opentran()
----Stop a running transactions
--kill 52

----Show changes to table using sql server schema
--select * from UKCrimeTrend.information_schema.COLUMNS where TABLE_NAME = 'Crimes'

----count empty LSOA codes
--select count(*) from dbo.Crimes where [LSOA code] = ''