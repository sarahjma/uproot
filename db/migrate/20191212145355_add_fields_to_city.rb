class AddFieldsToCity < ActiveRecord::Migration[5.2]
  def change
    add_column :cities, :walking_score, :float
    add_column :cities, :train_score, :float
    add_column :cities, :bike_score, :float
    add_column :cities, :museum_count, :integer
    add_column :cities, :zoo_count, :integer
    add_column :cities, :sport_venues_count, :integer
    add_column :cities, :park_score, :float
    add_column :cities, :beach_score, :float
    add_column :cities, :hiking_score, :float
  end
end
