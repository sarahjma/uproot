class QuizResultsController < ApplicationController
  def create
    quiz_result = QuizResult.create
    redirect_to quiz_result_question_path(quiz_result, Question.first)
  end

  def show
    quiz_result = QuizResult.find(params[:id])
    @first_city = City.find_by(name: quiz_result.top_3[0])
    @second_city = City.find_by(name: quiz_result.top_3[1])
    @third_city = City.find_by(name: quiz_result.top_3[3])

    @display_top_3 = []
  end

  # def results
  #   @cities = @quiz_result.top_3_cities
  # end
end
