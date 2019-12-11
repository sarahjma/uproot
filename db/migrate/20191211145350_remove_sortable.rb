class RemoveSortable < ActiveRecord::Migration[5.2]
  def change
    remove_column :answers, :sortable
  end
end
