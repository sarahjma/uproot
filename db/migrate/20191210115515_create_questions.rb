class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :category
      t.text :content
      t.string :display_type

      t.timestamps
    end
  end
end
