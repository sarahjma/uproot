class Question < ApplicationRecord
  has_many :answers, dependent: :destroy
  has_many :chosen_answers, through: :answers
end
