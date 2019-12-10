class RemoveQuizResultIdFromAnswer < ActiveRecord::Migration[5.2]
  def change
    remove_column :answers, :quiz_result_id
  end
end
