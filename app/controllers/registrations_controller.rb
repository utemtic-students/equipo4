class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password)
  end
   def create
    @registration = Registration.new(registration_params)
    if @registration.save
      redirect_to @registration.paypal_url(registration_path(@registration))
    else
      render :new
    end
  end
end