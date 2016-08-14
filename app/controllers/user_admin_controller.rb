class UserAdminController < ApplicationController
  def index
    @User = User.search(params[:q])
    @Results = @User.result
  end
end
