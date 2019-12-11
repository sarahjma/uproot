class RemoveSortableFromQuestionandAddSortableToAnswers < ActiveRecord::Migration[5.2]
  def change
    remove_column :questions, :sortable
    add_column :answers, :sortable, :string
  end
end
