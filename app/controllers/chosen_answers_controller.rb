class ChosenAnswersController < ApplicationController
  def create
    # raise
    @chosen_answer_category = params[:chosen_answer_category]
    chosen_answers_ids = params[:chosen_answer_ids].to_a
    chosen_answers_ids.each do |chosen_answer_id|
      ChosenAnswer.create(
        answer_id: chosen_answer_id,
        quiz_result_id: params[:quiz_result]
      )
      quiz_result = QuizResult.new(
        chosen_answer_category: @chosen_answer_category
      )
    end

    if Question.find(params[:question]) == Question.last
      redirect_to quiz_result_path(params[:quiz_result])
    else
      next_question = Question.find(params[:question].to_i + 1)
      next_question = Question.find(next_question.id + 1) while next_question.nil?
      redirect_to quiz_result_question_path(params[:quiz_result], next_question.id)
    end
  end
end
