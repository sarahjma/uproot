class QuizResult < ApplicationRecord
  has_many :answers, through: :chosen_answers
end
