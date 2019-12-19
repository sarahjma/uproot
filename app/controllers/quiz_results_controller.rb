class QuizResultsController < ApplicationController
  before_action :authenticate_user!, only: :show
  def create
    quiz_result = QuizResult.create
    redirect_to quiz_result_question_path(quiz_result, Question.first)
  end

  def show
    quiz_result = QuizResult.find(params[:id])
    quiz_result.update(
      user_id: current_user.id
    )
    @first_city = City.find_by(name: quiz_result.top_3_cities[0][0])
    @second_city = City.find_by(name: quiz_result.top_3_cities[1][0])
    @third_city = City.find_by(name: quiz_result.top_3_cities[2][0])

    @first_score = quiz_result.top_3_cities[0][1]
    @second_score = quiz_result.top_3_cities[1][1]
    @third_score = quiz_result.top_3_cities[2][1]
  end
end
