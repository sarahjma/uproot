class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @quiz_results = QuizResult.select { |quiz_result| quiz_result.user_id == @user.id }
  end
end
