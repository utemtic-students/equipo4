class OrdersController < ApplicationController
  def index
    #@searchUser = User.search(params[:q])    
  	#@search = Order.search(params[@searchUser.id]) 
    #@orverView = Order.joins(:User)
    @search = Order.joins(:users).search(params[:q])    
    @registros = @search.result   
    @registros = @registros.where(:state => "impreso")
  end
  def edit  	 	
  	@registro = Order.find(params[:id])
  	@registro.state = "entregado"
  	if @registro.save()
      redirect_to orders_index_path, :notice => "La tarea ha sido modificada";   	
   	end
  end
end
