class RegistrationsController < Devise::RegistrationsController

  def after_sign_up_path_for(resource)
    UserMailer.welcome_user(resource).deliver_now
    products_path
  end

  private

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password)
  end
end
