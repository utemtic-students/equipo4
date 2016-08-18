class ProgressController < ApplicationController
  def index
  	@search = Order.search(params[:q])
    @registros = @search.result
    @registros = @registros.where(:state => "1")
  end
  def edit  	 	
  	@registro = Order.find(params[:id])
  	@registro.state = "2"
  	if @registro.save()
      redirect_to progress_index_path, :notice => "La tarea ha sido modificada";   	
   	end
  end
end
