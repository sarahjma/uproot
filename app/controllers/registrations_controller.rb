class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    if params[:quiz_result_id]
      qr = QuizResult.find(params[:quiz_result_id])
      qr.update(user: resource)
    end
    user_path(resource) # Or :prefix_to_your_route
  end
end
