# What 3 towns have the highest population of citizens that are 65 years and older?
TownHealthRecord.order("over_65_in_2005 DESC").limit(3).pluck(:geography)
# What 3 towns have the highest population of citizens that are 19 years and younger?
TownHealthRecord.order("under_19_in_2005 DESC").limit(3).pluck(:geography)
# What 5 towns have the lowest per capita income?
TownHealthRecord.order("per_capita_income_in_2000").limit(5).pluck(:geography)
# Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?
TownHealthRecord.order("percent_teen_births DESC").where.not(geography: ['Boston', 'Becket', 'Beverly']).limit(1)
# Omitting Boston, what town has the highest number of infant mortalities?
TownHealthRecord.order("infant_mortality_rate DESC").where.not(geography: 'Boston').limit(1)
