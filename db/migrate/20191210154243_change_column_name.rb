class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :chosen_answers, :answers_id, :answer_id
    rename_column :chosen_answers, :quiz_results_id, :quiz_result_id
  end
end
