class ProgressController < ApplicationController
  def index
  	@search = Order.search(params[:q])
    @registros = @search.result
    @registros = @registros.where(:estado => "progreso")
  end
  def edit  	 	
  	@registro = Order.find(params[:id])
  	@registro.estado = "impreso"
  	if @registro.save()
      redirect_to progress_index_path, :notice => "La tarea ha sido modificada";   	
   	end
  end
end
