class QuizResult < ApplicationRecord
  has_many :chosen_answers
  has_many :answers, through: :chosen_answers
  attr_accessor :chosen_answer_category

  def top_3_cities
    # get em - calling method pry>QuizResult.last.top_3_cities
    puts "123"
    define_priorities
  end

  def define_priorities
    result = {}
    values = [0.35, 0.3, 0.2, 0.05, 0.05, 0.05, 0, 0]

    @chosen_answer_category.each_with_index { |category, index|
      result[category.to_sym] = values[index]
      }
    return result
    # weighting = { health: 0.35, \
    #               leisure: 0.3, \
    #               safety: 0.2, \
    #               mobility: 0.05, \
    #               nature: 0.05, \
    #               career: 0.05, \
    #               education: 0, \
    #               housing: 0 }
    overall_city_score = Hash.new(0)
    @cities.each do |city|
      weighting.each do |category, weight|
        overall_city_score[category] = logic_category(category, city) * weight
      end
    end
  end

  private

  # Group all the results of each of the categies
  # Calculate the score of each of the categories
  # Get the sorted order of priority
  # Calculate a final score for each city
  # Return the top 3 cities

  def logic_category(category, city)
    # Check the category of a question
    quiz_result.chosen_answers.each do |chosen_answer|
    sum_of_scores_array = []
    cat = chosen_answer.answer.question.category
    score = chosen_answer.answer.score
    sum_of_scores_array << score if cat == category
    return sum_of_scores_array.sum / sum_of_scores_array.count
    end
  end

end
