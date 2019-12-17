class AddColumnsToCity < ActiveRecord::Migration[5.2]
  def change
    add_column :cities, :lgbtq_score, :float
    add_column :cities, :minority, :float
    add_column :cities, :cleanliness_score, :float
    add_column :cities, :gun_ownership_score, :float
  end
end
