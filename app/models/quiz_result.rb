class QuizResult < ApplicationRecord
  has_many :answers
  has_many :questions, through: :answers
end
