/*
Example lesson stub
*/

SELECT
	*
FROM
	PatientStay ps
;

SELECT
	ps.PatientId
	,ps.AdmittedDate
	,ps.DischargeDate
	,ps.Hospital
	,ps.Ward
	,DATEDIFF(DAY, ps.AdmittedDate, ps.DischargeDate) + 1 AS LengthOfStay

FROM
	PatientStay ps

WHERE ps.Hospital NOT IN ( 'Oxleas', 'Kingston' )
	AND ps.AdmittedDate BETWEEN '2024-02-01' AND '2024-02-28'
	AND ps.Ward LIKE 'D%'

ORDER BY 	ps.AdmittedDate DESC, 
				ps.PatientId DESC;


SELECT
	ps.Hospital
	,COUNT(*) AS NumberOfAdmissions
	,SUM(ps.Tariff) AS TotalTariff

FROM
	PatientStay ps

GROUP BY ps.Hospital

--HAVING COUNT(*) > 10 

ORDER BY NumberOfAdmissions DESC;


/*
Can you write a SQL statement based on the instructions below? Assume that the database contains an airports table with the appropriate columns.
List airports. Show the following columns: ident, iata_code, name, latitude_deg, longitude_deg, type, iso_country
Filter to those airports with
a type of ‘large_airport’
a latitude_deg between 49 and 54 degrees
an iso_country of ‘GB’
Order from the most northern airports to most southern airports
*/

SELECT
	aps.ident
	,aps.iata_code
	,aps.name
	,aps.latitude_deg
	,aps.longitude_deg
	,aps.[type]
	,aps.iso_country

FROM
	airports aps

WHERE	aps.[type] = 'large_airport'
	AND aps.latitude_deg BETWEEN 49 AND 54
	AND aps.iso_country = 'GB'

ORDER BY
		aps.latitude_deg DESC 





