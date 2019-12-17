class AddCareerToCities < ActiveRecord::Migration[5.2]
  def change
    add_column :cities, :career, :string, array: true, default: []
  end
end
