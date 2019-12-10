class ChosenAnswer < ApplicationRecord
  belongs_to :answers
  belongs_to :question_results
end
