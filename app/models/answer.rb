class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :quiz_result
end
