class AddPreferencePriorityToChosenAnswers < ActiveRecord::Migration[5.2]
  def change
    add_column :chosen_answers, :preference_priority, :integer
  end
end
