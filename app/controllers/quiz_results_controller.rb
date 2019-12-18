class QuizResultsController < ApplicationController
  def new
  end

  def create
    quiz_result = QuizResult.create
    redirect_to quiz_result_question_path(quiz_result, Question.first)
  end

  def show
    @top_3_hash = JSON.parse(params[:data])
    @first_city = City.find_by(name: @top_3_hash.keys[0])
    @second_city = City.find_by(name: @top_3_hash.keys[1])
    @third_city = City.find_by(name: @top_3_hash.keys[2])

    @display_top_3 = []
  end

  # def results
  #   @cities = @quiz_result.top_3_cities
  # end
end
