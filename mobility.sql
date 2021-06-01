-- Create a table
CREATE TABLE mobility (
  ID SERIAL PRIMARY KEY,
  country TEXT,
  date DATE,
  retail_and_recreation INT,
  grocery_and_pharmacy INT,
  parks INT,
  transit_stations INT,
  workplaces INT,
  residential INT
);
