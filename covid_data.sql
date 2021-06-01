-- Create covidcases table
CREATE TABLE covidcases (
	country TEXT,
	date DATE,
	total_cases INT,
	new_cases INT,
	new_cases_smoothed INT,
        PRIMARY KEY (country, date)
);

-- Create coviddeaths table
CREATE TABLE coviddeaths (
	country TEXT,
	date DATE,
	total_deaths INT,
	new_deaths INT,
	new_deaths_smoothed INT,
        PRIMARY KEY (country, date)
);

-- Create health table
CREATE TABLE health (
	country TEXT PRIMARY KEY,
	cardiovasc_death_rate DECIMAL,
	diabetes_prevalence DECIMAL,
	female_smokers DECIMAL,
	male_smokers DECIMAL,
	life_expectancy DECIMAL
);

-- Create medical_facilities table
CREATE TABLE medical_facilities (
	country TEXT PRIMARY KEY,
	handwashing_facilities DECIMAL,
	hospital_beds_per_thousand DECIMAL
);

SELECT * from covidcases LIMIT 5;
SELECT * from coviddeaths LIMIT 5;
SELECT * from health LIMIT 5;
SELECT * from medical_facilities LIMIT 5;