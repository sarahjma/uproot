class RemovingCitiesfromQuizResult < ActiveRecord::Migration[5.2]
  def change
    remove_column :quiz_results, :city_one
    remove_column :quiz_results, :city_two
    remove_column :quiz_results, :city_three
    remove_column :quiz_results, :score_one
    remove_column :quiz_results, :score_two
    remove_column :quiz_results, :score_three
  end
end
