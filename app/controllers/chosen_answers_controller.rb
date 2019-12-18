class ChosenAnswersController < ApplicationController
  def create
    @chosen_answer_category = params[:chosen_answer_category]
    chosen_answers_ids = params[:chosen_answer_ids].to_a
    @quiz_result = QuizResult.find(params[:quiz_result])
    @question = Question.find(params[:question])

    if @question.category == 'rent'
      # add rent to quiz result
      @quiz_result.update(rent: params[:rent])
    else
      create_chosen_answers(chosen_answers_ids)
    end
    navigate_to_next_page
  end

  private

  def create_chosen_answers(answer_ids)
    answer_ids.each do |chosen_answer_id|
      ChosenAnswer.create(
        answer_id: chosen_answer_id,
        quiz_result: @quiz_result
      )
      quiz_result = QuizResult.new(
        chosen_answer_category: @chosen_answer_category
      )
    end
  end

  def navigate_to_next_page
    if @question == Question.last
      QuizResult.last.top_3_cities(@chosen_answer_category)
      redirect_to quiz_result_path(params[:quiz_result])
    else
      next_question = Question.find(params[:question].to_i + 1)
      next_question = Question.find(next_question.id + 1) while next_question.nil?
      redirect_to quiz_result_question_path(@quiz_result, next_question.id, params.permit!)
    end
  end
end
