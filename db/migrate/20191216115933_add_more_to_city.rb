class AddMoreToCity < ActiveRecord::Migration[5.2]
  def change
    add_column :cities, :sports_venues_score, :float
    add_column :cities, :zoo_score, :float
    add_column :cities, :museum_score, :float
    add_column :cities, :galleries_count, :integer
    add_column :cities, :galleries_score, :float
    add_column :cities, :comedy_count, :integer
    add_column :cities, :comedy_score, :float
    add_column :cities, :movie_venues_count, :integer
    add_column :cities, :movie_venues_score, :float
    add_column :cities, :concerts_score, :float
    add_column :cities, :lgbtq_statue, :string
    add_column :cities, :air_quality_score, :float
    add_column :cities, :greenery_score, :float
    add_column :cities, :airport_score, :float
    add_column :cities, :water_score, :float
    add_column :cities, :life_expectancy, :float
    add_column :cities, :sunny_score, :float
    add_column :cities, :weather_type, :string
  end
end
