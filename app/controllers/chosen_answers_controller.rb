class ChosenAnswersController < ApplicationController
  def create
    chosen_answers_ids = params[:chosen_answer_ids]
    chosen_answers_ids.each do |chosen_answer_id|
      ChosenAnswer.create(
        answer_id: chosen_answer_id,
        quiz_result_id: params[:quiz_result]
      )
    end
  end
end
