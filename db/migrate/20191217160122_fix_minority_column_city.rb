class FixMinorityColumnCity < ActiveRecord::Migration[5.2]
  def change
    remove_column :cities, :minority, :float
    add_column :cities, :minority_score, :float
  end
end
