class QuizResultsController < ApplicationController
  def new
  end

  def create
    quiz_result = QuizResult.create
    redirect_to quiz_result_question_path(quiz_result, Question.first)
  end

  def show
  end
end
