use UKCrimeTrend

/*
SELECT top 10
	dbo.Crimes.Month,
	dbo.crimes.[LSOA code] as CrimeLsoa,
	dbo.Crimes.[Crime type] as CrimeType,
	dbo.LocationMappings.lsoacode as LocMapLsoa,
	dbo.LocationMappings.lauacode as LocMapLaua,
	dbo.LocationMappings.Region as LocMapRegion,
	dbo.Locations.LocationID as LocLaua,
	dbo.Locations.CountryID as LocCountryId,
	dbo.Locations.AreaName as LocArea,
	dbo.Countries.ID as CountryId,
	dbo.Countries.Name as CountryName
FROM dbo.Crimes
INNER JOIN dbo.LocationMappings on dbo.LocationMappings.lsoacode = dbo.crimes.[LSOA code]
INNER JOIN dbo.Locations on dbo.Locations.LocationID = dbo.LocationMappings.lauacode
INNER JOIN dbo.Countries on dbo.Countries.ID = dbo.Locations.CountryID
*/
/*
SELECT top 10
	dbo.Crimes.Month,
	dbo.LocationMappings.Region as LocMapRegion,
	dbo.Locations.AreaName as LocArea,
	dbo.Countries.Name as CountryName
FROM dbo.Crimes
INNER JOIN dbo.LocationMappings on dbo.LocationMappings.lsoacode = dbo.crimes.[LSOA code]
INNER JOIN dbo.Locations on dbo.Locations.LocationID = dbo.LocationMappings.lauacode
INNER JOIN dbo.Countries on dbo.Countries.ID = dbo.Locations.CountryID
*/
/*
--Total crime over 5 years by type
SELECT
	dbo.Crimes.[Crime type],
	count(*) as TotalCrime
FROM dbo.Crimes
INNER JOIN dbo.LocationMappings on dbo.LocationMappings.lsoacode = dbo.crimes.[LSOA code]
INNER JOIN dbo.Locations on dbo.Locations.LocationID = dbo.LocationMappings.lauacode
INNER JOIN dbo.Countries on dbo.Countries.ID = dbo.Locations.CountryID
group by dbo.Crimes.[Crime type]
order by TotalCrime desc
*/
/*
--Top 10 Crime Locations and regions
SELECT top 10
	dbo.LocationMappings.Region,
	dbo.Locations.AreaName,
	count(*) as TotalCrime
FROM dbo.Crimes
INNER JOIN dbo.LocationMappings on dbo.LocationMappings.LsoaCode = dbo.crimes.LsoaCode
INNER JOIN dbo.Locations on dbo.Locations.LocationID = dbo.LocationMappings.LocationID
INNER JOIN dbo.Countries on dbo.Countries.CountryID = dbo.Locations.CountryID
group by dbo.LocationMappings.Region,dbo.Locations.AreaName
order by TotalCrime desc
*/
/*
--Top 10 Crime Regions
SELECT top 10
	dbo.LocationMappings.Region,
	count(*) as TotalCrime
FROM dbo.Crimes
INNER JOIN dbo.LocationMappings on dbo.LocationMappings.LsoaCode = dbo.crimes.LsoaCode
INNER JOIN dbo.Locations on dbo.Locations.LocationID = dbo.LocationMappings.LocationID
INNER JOIN dbo.Countries on dbo.Countries.CountryID = dbo.Locations.CountryID
group by dbo.LocationMappings.Region
order by TotalCrime desc
*/
/*
--Top ten Violent Crime Areas
SELECT top 10
	dbo.Locations.AreaName,
	count(*) as TotalCrime
FROM dbo.Crimes
INNER JOIN dbo.LocationMappings on dbo.LocationMappings.LsoaCode = dbo.crimes.LsoaCode
INNER JOIN dbo.Locations on dbo.Locations.LocationID = dbo.LocationMappings.LocationID
INNER JOIN dbo.Countries on dbo.Countries.CountryID = dbo.Locations.CountryID
where dbo.Crimes.CrimeType = 'Violent Crime'
group by dbo.Locations.AreaName
order by TotalCrime desc
*/

