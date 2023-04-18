SELECT s.sitename , s.state , s.country  , count(1) as TotalMissions
FROM mission m

LEFT JOIN site s             ON  m.launchsiteid = s.siteid

WHERE startdate >= TO_DATE('2000-01-01','YYYY-MM-DD')

group by s.sitename, s.state , s.country;