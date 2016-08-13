class OrdersController < ApplicationController
  def index
  	@search = Order.search(params[:q])
    @registros = @search.result
    @registros = @registros.where(:estado => "impreso")
  end
  def edit  	 	
  	@registro = Order.find(params[:id])
  	@registro.estado = "entregado"
  	if @registro.save()
      redirect_to orders_index_path, :notice => "La tarea ha sido modificada";   	
   	end
  end
end
