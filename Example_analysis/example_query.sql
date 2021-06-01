-- Example query1 
-- returns mobility percent change from baseline for retail&recreation, grocery&pharmacy, transit stations and workplaces in 2020 in Austarlia against the number of new cases each day

SELECT m.country, m.date , m.retail_and_recreation, m.grocery_and_pharmacy, m.transit_stations, m.workplaces, c.new_cases
FROM mobility m
JOIN covidcases c
	ON m.country = c.country
	AND m.date = c.date
WHERE m.country = 'Australia';

-- Example query2 
-- returns population, population density, percent of urban population and handwashing facilities against the sum of smoothed new cases for each country

SELECT p.country, p.population, p.density_kma_squared, p.urban_population, mf.handwashing_facilities, sum_new_cases_smoothed
FROM country_population p
INNER JOIN 
 	(
   		SELECT country,
          	SUM(covidcases.new_cases_smoothed) AS sum_new_cases_smoothed
   		FROM covidcases
   		GROUP BY country
 	) AS c
	ON p.country = c.country
INNER JOIN medical_facilities mf
	ON p.country = mf.country
ORDER BY p.country;