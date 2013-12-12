-- What 3 towns have the highest population of citizens that are 65 years and older?
SELECT geography, over_65_in_2005 FROM town_health_records ORDER BY over_65_in_2005 DESC LIMIT 3;
-- What 3 towns have the highest population of citizens that are 19 years and younger?
SELECT geography, under_19_in_2005 FROM town_health_records ORDER BY under_19_in_2005 DESC LIMIT 3;
-- What 5 towns have the lowest per capita income?
SELECT geography, per_capita_income_in_2000 FROM town_health_records ORDER BY per_capita_income_in_2000 DESC LIMIT 5;
-- Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?
SELECT geography, percent_teen_births FROM town_health_records WHERE geography != 'Boston' AND geography != 'Becket' AND geography != 'Beverly' ORDER BY percent_teen_births DESC LIMIT 5;
-- Omitting Boston, what town has the highest number of infant mortalities?
SELECT geography, infant_mortality_rate FROM town_health_records WHERE geography != 'Boston' ORDER BY infant_mortality_rate DESC LIMIT 1;
