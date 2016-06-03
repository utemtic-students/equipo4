class UsersController < ApplicationController

def index
	
end

def destroy
	 @user = User.find(params[:id])
	 @user.destroy 
	 redirect_to root_path
end
def show
	@users = User.all

end
end
