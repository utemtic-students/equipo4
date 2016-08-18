class MorrallasController < ApplicationController
    
def index
		@morrallas= Morralla.all 
	end

  def new
		@morralla = Morralla.new
	end

  def agregar_saldo
  	  	@morralla = current_user.morralla.new(morralla_params)
		if @morralla.save 
			redirect_to @morralla
		else 
			render :new  #render de la acción new
		end
  end

  def cobrar
  end
 def morralla_params
      if params[:morralla]
        params.require(:morralla).permit(
          :mount
        )
      end
    end
  
end
