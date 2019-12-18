class AddTop3ToQuizResult < ActiveRecord::Migration[5.2]
  def change
    add_column :quiz_results, :top_3, :string, array: true, default: []
  end
end
