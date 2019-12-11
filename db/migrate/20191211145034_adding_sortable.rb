class AddingSortable < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :sortable, :string
  end
end
