class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

before_filter do
  resource = controller_name.singularize.to_sym
  method = "#{resource}_params"
  params[resource] &&= send(method) if respond_to?(method, true)
end
  
 before_filter :authenticate_user!
 rescue_from CanCan::AccessDenied do |exception|
   redirect_to user_session_path, :alert => exception.message
 end

 protect_from_forgery with: :exception
end
