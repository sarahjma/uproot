class QuestionsController < ApplicationController
  def show
    @question = Question.find(params[:id])
    @quiz_result = QuizResult.find(params[:quiz_result_id])
    @chosen_answer = ChosenAnswer.new
  end
end
