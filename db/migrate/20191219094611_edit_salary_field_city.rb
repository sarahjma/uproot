class EditSalaryFieldCity < ActiveRecord::Migration[5.2]
  def change
    remove_column :cities, :salary, :string, array: true, default: []
    add_column :cities, :salary, :float, array: true, default: []
  end
end
