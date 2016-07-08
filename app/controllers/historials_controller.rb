class HistorialsController < ApplicationController
  def index
  	@search = Order.search(params[:q])
    @registros = @search.result
    @registros = @registros.where(:estado => "entregado")
  end
end
