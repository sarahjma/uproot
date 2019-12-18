class QuizResultsController < ApplicationController
  def new
  end

  def create
    quiz_result = QuizResult.create
    redirect_to quiz_result_question_path(quiz_result, Question.first)
  end

  # def show
  #   @cities = @quiz_result.top_3_cities(@chosen_answer_category)
  # end

  def results
    @cities = @quiz_result.top_3_cities
  end
end
