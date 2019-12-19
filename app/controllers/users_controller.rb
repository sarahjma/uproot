class UsersController < ApplicationController
  # before_action :set_quiz_cookies
  before_action :authenticate_user!, only: :show
  def show
    @user = User.find(params[:id])
    @quiz_results = QuizResult.select { |quiz_result| quiz_result.user_id == @user.id }
  end
end
