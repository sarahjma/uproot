class ChosenAnswersController < ApplicationController
  def create
    @quiz_result = QuizResult.find(params[:quiz_result])
    chosen_answers_ids = params[:chosen_answer_ids].to_a
    @question = Question.find(params[:question])

    case @question.category
    when 'rent'
      @quiz_result.update(rent: params[:rent])
    when 'sorting'
      @quiz_result.update(sorted_categories: params[:chosen_answer_category])
    else
      create_chosen_answers(chosen_answers_ids)
    end

    navigate_to_next_page
  end

  private

  def create_chosen_answers(chosen_answer_ids)
    chosen_answer_ids.each do |chosen_answer_id|
      ChosenAnswer.create(
        answer_id: chosen_answer_id,
        quiz_result: @quiz_result
      )
    end
  end

  def navigate_to_next_page
    if @question == Question.last
      @quiz_result.top_3_cities
      redirect_to quiz_result_path(@quiz_result)
    else
      next_question = Question.find(params[:question].to_i + 1)
      next_question = Question.find(next_question.id + 1) while next_question.nil?
      redirect_to quiz_result_question_path(@quiz_result, next_question.id, params.permit!)
    end
  end
end
