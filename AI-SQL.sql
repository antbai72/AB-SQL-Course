SELECT
    a.ident
    ,a.iata_code
    ,a.name
    ,a.latitude_deg
    ,a.longitude_deg
    ,a.[type]
    ,a.iso_country
FROM
    airports AS a
WHERE
    a.[type] = 'large_airport'
    AND a.latitude_deg BETWEEN 49 AND 54
    AND a.iso_country = 'GB'
ORDER BY
    a.latitude_deg DESC;



