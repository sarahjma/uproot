class AddConcertCountToCities < ActiveRecord::Migration[5.2]
  def change
    add_column :cities, :concerts_venues, :integer
  end
end
