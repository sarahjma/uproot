class AddUserToQuizResult < ActiveRecord::Migration[5.2]
  def change
    add_reference :quiz_results, :user, index: true
  end
end
