class QuizResult < ApplicationRecord
  has_many :chosen_answers
  has_many :answers, through: :chosen_answers
  attr_accessor :chosen_answer_category

  def top_3_cities
    # get em - calling method pry>QuizResult.last.top_3_cities
    puts "123"
    define_priorities
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
      total_score = 0
      temp_min = 0
      temp_max = 0
      if score.include?("rent")
        total_score = city.send("#{score}_price")
      elsif score.include?("temp")
        temp_min = city.send("#{score}_min")
        temp_max = city.send("#{score}_max")
      else
        total_score = city.send("#{score}_score")
      end
      sum_of_scores_array << score if cat == category
      return sum_of_scores_array.sum / sum_of_scores_array.count
    end
  end

  def define_priorities
    weighting = {}
    values = [0.35, 0.3, 0.2, 0.05, 0.05, 0.05, 0, 0]
    @chosen_answer_category.each_with_index { |category, index|
      result[category.to_sym] = values[index] }
    overall_city_score = Hash.new(0)
    @cities.each do |city|
      weighting.each do |category, weight|
        overall_city_score[category] = logic_category(category, city) * weight
      end
    end
  end
end
