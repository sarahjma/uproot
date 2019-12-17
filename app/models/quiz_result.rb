class QuizResult < ApplicationRecord
  has_many :chosen_answers
  has_many :answers, through: :chosen_answers
  attr_accessor :chosen_answer_category

  def top_3_cities(sorted_categories)
    top3 = {}
    city_scores = calculate_city_score(sorted_categories)
    city_scores.values.sort.reverse[0..2].each_with_index do |city_value, index|
      top3[index + 1] = city_scores.key(city_value)
    end
    top3
  end

  # 1. Group results per the category. (LOGIC_CATEGORY)
  # 2. Calculate the score of each of the categories. (OVERALL_CATEGORY_SCORES)
  # 3. Get the sorted order of priority. (CATEGORY_WEIGHTINGS)
  # 4. Calculate a final score for each city (OVERALL_CITY_SCOREA)
  # 5. Return the top 3 cities (TOP_3_CITIES)

  private

  def logic_category(category, city)
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
    sum_scores_array.sum / sum_scores_array.count
  end

  # CALCULATE_CITY_SCORE returns { city: overal_score }
  def calculate_city_score(sorted_categories)
    weightings = {}
    values = [0.35, 0.3, 0.2, 0.05, 0.05, 0.05, 0, 0]
    sorted_categories.each_with_index do |category, index|
      weightings[category.to_sym] = values[index]
      # WEIGHTINGS returns { category: weight_sorted_question }
    end

    overall_category_scores = {}
    overall_city_scores = {}

    City.all.each do |city|
      overall_city_score = 0
      weightings.each do |category, weight|
        overall_category_scores[category] = logic_category(category, city) * weight
        # OVERALL_CATEGORY_SCORE returns { category: overal_category_score }
      end
      overall_category_scores.values.each do |overall_category_score|
        overall_city_score += overall_category_score
      end
      overall_city_scores[city.name] = overall_city_score
      # OVERALL_CITY_SCORE returns { city: overal_city_score }
    end
    overall_city_scores
  end
end
