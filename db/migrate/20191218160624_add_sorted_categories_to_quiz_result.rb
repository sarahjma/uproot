class AddSortedCategoriesToQuizResult < ActiveRecord::Migration[5.2]
  def change
    add_column :quiz_results, :sorted_categories, :string, array: true, default: []
  end
end
