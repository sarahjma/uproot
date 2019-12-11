class AddingSorttoAnswers < ActiveRecord::Migration[5.2]
  def change
    add_column :answers, :sort, :integer
  end
end
