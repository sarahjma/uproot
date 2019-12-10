class CreateChosenAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :chosen_answers do |t|
      t.references :answers, foreign_key: true
      t.references :quiz_results, foreign_key: true

      t.timestamps
    end
  end
end
