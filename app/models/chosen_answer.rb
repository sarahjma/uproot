class ChosenAnswer < ApplicationRecord
  belongs_to :answer
  belongs_to :quiz_result
end
