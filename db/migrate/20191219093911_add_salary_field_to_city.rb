class AddSalaryFieldToCity < ActiveRecord::Migration[5.2]
  def change
    add_column :cities, :salary, :string, array: true, default: []
  end
end
