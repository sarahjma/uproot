class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.references :question, foreign_key: true
      t.references :quiz_result, foreign_key: true
      t.string :score
      t.string :text
      t.string :image
      t.integer :min
      t.integer :max

      t.timestamps
    end
  end
end
