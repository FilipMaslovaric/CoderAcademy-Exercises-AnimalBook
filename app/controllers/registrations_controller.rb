class RegistrationsController < Devise::RegistrationsController
  def create
    super
    current_user.add_role params[:user][:role]
  end

   def sign_up_params
       params.require(:user).permit(:role, :email, :password, :password_confirmation)
   end

   def account_update_params
     params.require(:user).permit(:role, :email, :password, :password_confirmation, :current_password)
   end
 end
