class AddEvenMoreColumnsToCity < ActiveRecord::Migration[5.2]
  def change
    add_column :cities, :gdp_growth_score, :float
    add_column :cities, :startup_score, :float
    add_column :cities, :business_freedom_score, :float
  end
end
