use UKCrimeTrend
go

/*
--move column values to the right columns
Begin Tran
update dbo.Crimes 
set 
	[Location] = [Location]+[LSOA code],
	[LSOA code] = [LSOA name],
	[LSOA name] = [Crime type],
	[Crime type] = [Last outcome category],
	[Last outcome category] = [Context]
where [Crime type] in ('Bassetlaw 008B','Blaby 013C','Charnwood 012C','Charnwood 021E','Charnwood 022D','Hillingdon 009E','Hillingdon 011C','Worthing 010A','')
commit tran
*/

/*
--assign LSOA name and code to Northern Ireland data
begin tran
update crimes
set [LSOA code] = 'NI',
	[LSOA name] = 'Northern Ireland'

where 
	[Reported by] like '%ireland%' and
	[LSOA name] like ''
commit tran
*/

--Remove data with Northern Ireland and Empty LSOA code or names
--delete from dbo.crimes where [LSOA code]='NI'
--delete from dbo.crimes where [Location]='No Location'
--delete from dbo.crimes where [LSOA code]='' or[LSOA name]=''

/*
--Remove unneccessary columns
begin tran
ALTER TABLE dbo.Crimes DROP COLUMN
	[Crime ID],[Reported by],[Falls within],[Longitude],[Latitude],[Location],[LSOA name],[Last outcome category],[Context]
commit tran
*/
/*
--change Crime Month to Year
begin tran
update dbo.Crimes
set [Month] = substring([Month],1,LEN([Month])-3)
commit tran
*/
/*
begin tran
--Add new ID column in Crimes table
ALTER TABLE dbo.Crimes
ADD CrimeID BIGINT IDENTITY(1,1)
commit tran
*/
/*
begin tran
--Add Primary key in Crimes table
ALTER TABLE dbo.Crimes
ADD CONSTRAINT PK_Crimes PRIMARY KEY(CrimeID)
commit tran
*/
