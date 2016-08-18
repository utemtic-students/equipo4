class OrdersController < ApplicationController
  def index
    #@searchUser = User.search(params[:q])  
    #@search = Order.search(params[:q])    
  	#@search = Order.search(params[@searchUser.id])
    #orderView = User.joins(:order)
    #viewjoin = Order.joins('JOIN users ON "users"."id" = "orders"."user_id"')
    #@search = viewjoin.search(params[:q])      
    #@registros = @search.result   
    #registro2 = User.joins('JOIN orders ON "orders"."user_id" = "users"."id"')
    #@order = User.joins('JOIN orders ON "orders"."user_id" = users.id')
    #@registros = Order.joins('LEFT JOIN users us ON us.id = "orders"."user_id"').select('us.name as hello')
    #@registro2 = Order.joins('JOIN users us ON us.id = "orders"."user_id"')
    #registro1 = Order.joins('JOIN users ON "users"."id" = "orders"."user_id"')
    #@registros = registro1 + registro2
    #@registros = Order.joins(:user).where(:users => {:name => "chris"}).users
    #@registros = [ registro1, registro2 ].join('.')
    #@registros = @registros.where(:state => "impreso")
    #@registros = @registros.where(:status => "1")
    #@orders = current_user.orders.order("created_at desc")
    #@registros = Order.joins('FULL OUTER JOIN users ON "users"."id" = "orders"."user_id"')
    @registros1 = User.joins('LEFT JOIN orders ON "users"."id" = "orders"."user_id"')
    @registros2 = Order.joins('JOIN users ON "users"."id" = "orders"."user_id"').first
  end
  def edit  	 	
  	@registro = Order.find(params[:id])
  	@registro.state = "entregado"
  	if @registro.save()
      redirect_to orders_index_path, :notice => "La tarea ha sido modificada";   	
   	end
  end
end
