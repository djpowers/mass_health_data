class AddAllColumnTypes < ActiveRecord::Migration

  def up
    add_column :town_health_records, :geography, :string
    add_column :town_health_records, :total_pop_2005, :integer
    add_column :town_health_records, :under_19_in_2005, :integer
    add_column :town_health_records, :over_65_in_2005, :integer
    add_column :town_health_records, :per_capita_income_in_2000, :integer
    add_column :town_health_records, :persons_beneath_200percent_poverty, :float
    add_column :town_health_records, :percentage_of_people_beneath_200percent_poverty, :float
    add_column :town_health_records, :percent_adequacy_of_prenatal_care, :float
    add_column :town_health_records, :percent_c_section_deliveries_2005_to_2008, :float
    add_column :town_health_records, :number_of_infant_deaths_2005_to_2008, :float
    add_column :town_health_records, :infant_mortality_rate, :float
    add_column :town_health_records, :percent_of_babies_with_low_birthweight, :float
    add_column :town_health_records, :percent_multiple_births, :float
    add_column :town_health_records, :percent_publicly_financed_prenatal_care, :float
    add_column :town_health_records, :percent_teen_births, :float
  end

  def down
    remove_column :town_health_records, :geography
    remove_column :town_health_records, :total_pop_2005
    remove_column :town_health_records, :under_19_in_2005
    remove_column :town_health_records, :over_65_in_2005
    remove_column :town_health_records, :per_capita_income_in_2000
    remove_column :town_health_records, :persons_beneath_200percent_poverty
    remove_column :town_health_records, :percentage_of_people_beneath_200percent_poverty
    remove_column :town_health_records, :percent_adequacy_of_prenatal_care
    remove_column :town_health_records, :percent_c_section_deliveries_2005_to_2008
    remove_column :town_health_records, :number_of_infant_deaths_2005_to_2008
    remove_column :town_health_records, :infant_mortality_rate
    remove_column :town_health_records, :percent_of_babies_with_low_birthweight
    remove_column :town_health_records, :percent_multiple_births
    remove_column :town_health_records, :percent_publicly_financed_prenatal_care
    remove_column :town_health_records, :percent_teen_births
  end

end
