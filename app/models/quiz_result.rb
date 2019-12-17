class QuizResult < ApplicationRecord
  has_many :chosen_answers
  has_many :answers, through: :chosen_answers
  attr_accessor :chosen_answer_category

  def top_3_cities(sorted_category_array)
    # get em - calling method pry>QuizResult.last.top_3_cities
    puts "123"
    sorted_city_scores = calculate_city_score(sorted_category_array).values.sort
  end

  private

  # Group all the results of each of the categies
  # Calculate the score of each of the categories
  # Get the sorted order of priority
  # Calculate a final score for each city
  # Return the top 3 cities

  def logic_category(category, city)
    # Check the category of a question
    quiz_result = QuizResult.last
    sum_scores_array = []
    total_score = 0
    temp_min = 0
    temp_max = 0
    quiz_result.chosen_answers.each do |chosen_answer|
      question_id = Answer.find(chosen_answer.answer_id).question_id
      cat = Question.find(question_id).category
      score = chosen_answer.answer.score
      This gives a score its corresponding value
      if score.include?("rent")
        total_score = city.send("#{score}_price")
      elsif score.include?("temp")
        temp_min = city.send("#{score}_min")
        temp_max = city.send("#{score}_max")
      else
        total_score = city.send("#{score}_score")
      end
      sum_scores_array << total_score if cat == category
    end
    return sum_scores_array.sum / sum_scores_array.count
  end

  # returns { city: overal_score }
  def calculate_city_score(sorted_category_array)
    weightings = {}
    values = [0.35, 0.3, 0.2, 0.05, 0.05, 0.05, 0, 0]
    sorted_category_array.each_with_index do |category, index|
      weightings[category.to_sym] = values[index]
      # returns { category: weight_sorted_question }
    end

    overall_category_scores = {}
    overall_city_scores = {}

    City.all.each do |city|
      overall_city_score = 0
      weightings.each do |category, weight|
        overall_category_scores[category] = logic_category(category, city) * weight
      end
      overall_category_scores.values.each do |overall_category_score|
        overall_city_score += overall_category_score
        # returns { category: overal_category_score }
      end
      overall_city_scores[city] = overall_city_score
      # returns { city: overal_city_score }
    end
  end
end
