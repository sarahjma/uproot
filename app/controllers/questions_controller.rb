class QuestionsController < ApplicationController
  def show
    @question = Question.find(params[:id])
    @chosen_answer = ChosenAnswer.new
  end
end
