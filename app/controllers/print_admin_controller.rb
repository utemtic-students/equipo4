class PrintAdminController < ApplicationController
  def index
      @Prints = LogPrint.search(params[:q])
      @Results = @Prints.result

   end
end
