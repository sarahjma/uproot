class QuizResult < ApplicationRecord
  has_many :chosen_answers
  has_many :answers, through: :chosen_answers
  attr_accessor :chosen_answer_category

  def top_3_cities(categories)
    # get em - calling method pry>QuizResult.last.top_3_cities
    puts "123"
    define_priorities(categories)
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
      # This gives a score its corresponding value
      if score.include?("rent")
        total_score = city.send("#{score}_price")
      elsif score.include?("temp")
        temp_min = city.send("#{score}_min")
        temp_max = city.send("#{score}_max")
      else
        total_score = city.send("#{score}_score")
      end
      sum_scores_array << total_score if cat.to_s == category.to_s

    end
    return sum_scores_array.sum / sum_scores_array.count
  end

  def define_priorities(categories)
    # the WEIGHTING hash links the values of the VALUES array to the corresponding CATEGORIES.
    weighting = {}
    values = [0.35, 0.3, 0.2, 0.05, 0.05, 0.05, 0, 0]
    categories.each_with_index do |category, index|
      weighting[category.to_sym] = values[index]
    end

    # the OVERAL_CITY_SCORE links the CATEGORY and to the corresponding CATEGORIES.
    overall_category_scores = {}
    overall_city_scores = {}

    cities = City.all
    cities.each do |city|
      overall_city_score = 0
      weighting.each do |category, weight|
        overall_category_scores[category] = logic_category(category, city) * weight
      end
      overall_category_scores.values.each do |score|
        overall_city_score += score
      end
      overall_city_scores[city.name] = overall_city_score
    end

    overall_city_scores
  end


end
