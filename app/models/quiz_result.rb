class QuizResult < ApplicationRecord
  has_many :chosen_answers
  has_many :answers, through: :chosen_answers
  attr_accessor :chosen_answer_category

  def top_3_cities
    self.top_3 = calculate_city_scores.sort_by { |_k, v| v }.reverse[0..2]
  end

  private

  def logic_category(category, city)
    # temp_min = city.send("#{score}_min")
    # temp_max = city.send("#{score}_max")
    # temp_min = 0
    # temp_max = 0

    scores = []

    chosen_answers.each do |chosen_answer|
      if category.to_s == chosen_answer.answer.question.category
        score = chosen_answer.answer.score
        scores << city.send("#{score}_score")
      end
    end

    scores.any? ? (scores.sum / scores.count) : 0
  end

  def rent_compatible?(city)
    question = Question.find_by(category: 'housing')
    answers = question.answers
    chosen_answers = ChosenAnswer.where(
      quiz_result_id: id,
      answer_id: answers
    )

    apartment_size = chosen_answers.first.answer.score

    rent_is_compatible = false

    case apartment_size
    when "mobile_home_house"
      rent_is_compatible = rent > city.rent_small_price
    when "small_house"
      rent_is_compatible = rent > city.rent_small_price
    when "medium_house"
      rent_is_compatible = rent > city.rent_medium_price
    when "large_house"
      rent_is_compatible = rent > city.rent_large_price
    end

    rent_is_compatible
  end

  # CALCULATE_CITY_SCORE returns { city: overal_score }
  def calculate_city_scores
    weightings = {}
    values = [0.4, 0.35, 0.2, 0.05, 0, 0]
    sorted_categories.each_with_index do |category, index|
      weightings[category.to_sym] = values[index]
      # WEIGHTINGS returns { category: weight_sorted_question }
    end

    overall_category_scores = {}
    overall_city_scores = {}

    City.all.each do |city|
      overall_city_score = 0

      if rent_compatible?(city)
        weightings.each do |category, weight|
          overall_category_scores[category] = logic_category(category, city) * weight
          # OVERALL_CATEGORY_SCORE returns { category: overal_category_score }
        end
        overall_category_scores.values.each do |overall_category_score|
          overall_city_score += overall_category_score
        end
      else
        # return 0 for city score
        overall_city_score = 0
      end
      # binding.pry
      overall_city_scores[city.name] = overall_city_score
      # OVERALL_CITY_SCORE returns { city: overal_city_score }
    end

    overall_city_scores
  end
end
