class QuizResultsController < ApplicationController
  def new
  end

  def create
    quiz_result = QuizResult.create
    redirect_to quiz_result_question_path(quiz_result, Question.first)
  end

  # LOGIC - > need to check if this is the right
  # place to have this
  def logic_category(category, city)
    # Check the category of a question
    @quiz_result.each do |result|
      sum_of_scores_array = []
      cat = result.chosen_answers.answer.question.category
      score = result.chosen_answers.answer.score
      if cat == category
        sum_of_scores_array << score
      end
      return sum_of_scores_array.num / sum_of_scores_array.count
  end

  def define_priorities
    weighting = { health: 0.35, \
                  leisure: 0.3, \
                  safety: 0.2, \
                  education: 0.15 }
    overall_city_score = Hash.new(0)
    @cities.each do |city|
      @weighting.each do |category, weight|
        overall_city_score[category] = logic_category(category, city) * weight
      end
    end
  end
  # Group all the results of each of the categies
  # Calculate the score of each of the categories
  # Get the sorted order of priority
  # Calculate a final score for each city
  # Return the top 3 cities
end
