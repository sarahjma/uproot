class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :name
      t.float :safety_score
      t.float :education_score
      t.float :healthcare_score
      t.float :traffic_score
      t.integer :rent_small_price
      t.integer :rent_medium_price
      t.integer :rent_large_price
      t.float :temp_min
      t.float :temp_max

      t.timestamps
    end
  end
end
