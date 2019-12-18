class AddRentToQuizResult < ActiveRecord::Migration[5.2]
  def change
    add_column :quiz_results, :rent, :integer
  end
end
