class OrdersController < ApplicationController
  def index
    @searchUser = User.search(params[:q])    
  	#@search = Order.search(params[@searchUser.id])
    #orderView = User.joins(:order)
    #@orderView = Order.joins('INNER JOIN users ON "users"."id" = "orders"."idUser"')
    #@search = @orderView.search(params[:q])
    @search = Order.search(params[:q])    
    #@registros = @search.result   
    #@registros = User.joins('INNER JOIN orders ON "orders"."idUser" = users.id')
    @registros = Order.joins('INNER JOIN users ON "users"."id" = "orders"."idUser"')
    #@registros = @registros.where(:state => "impreso")
    @registros = @registros.where(:state => "1")
  end
  def edit  	 	
  	@registro = Order.find(params[:id])
  	@registro.state = "entregado"
  	if @registro.save()
      redirect_to orders_index_path, :notice => "La tarea ha sido modificada";   	
   	end
  end
end
