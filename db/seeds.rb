# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

datafile = Rails.root + 'db/data/mass_health_data.csv'

TownHealthRecord.destroy_all

CSV.foreach(datafile, headers: true) do |row|
  TownHealthRecord.create(geography: row[0],
    total_pop_2005: row[1].gsub(',', ''),
    under_19_in_2005: row[2].gsub(',', ''),
    over_65_in_2005: row[3].gsub(',', ''),
    per_capita_income_in_2000: row[4].gsub('$', '').gsub(',', ''),
    persons_beneath_200percent_poverty: row[5].gsub(',', ''),
    percentage_of_people_beneath_200percent_poverty: row[6],
    percent_adequacy_of_prenatal_care: row[7],
    percent_c_section_deliveries_2005_to_2008: row[8],
    number_of_infant_deaths_2005_to_2008: row[9],
    infant_mortality_rate: row[10],
    percent_of_babies_with_low_birthweight: row[11],
    percent_multiple_births: row[12],
    percent_publicly_financed_prenatal_care: row[13],
    percent_teen_births: row[14])
end
