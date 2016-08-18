class MorrallasController < ApplicationController
    
def index
		@morrallas= Morralla.all 
<<<<<<< HEAD
=======
    #@saldo = @morralla.where(user_id: current_user.user_id)
>>>>>>> solution
	end

  def new
		@morralla = Morralla.new
	end

  def agregar_saldo
<<<<<<< HEAD
  	  	@morralla = current_user.morralla.new(morralla_params)
		if @morralla.save 
			redirect_to @morralla
		else 
			render :new  #render de la acción new
		end
=======
      @morralla = current_user.morralla.new(morralla_params)

    if @morralla.save 
      render :index
    else 
      render :new  #render de la acción new
    end
>>>>>>> solution
  end

  def cobrar
  end
<<<<<<< HEAD
 def morralla_params
=======
  def edit
  end

  #PUT /articles:id
  def update

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit
    end
  end

  def morralla_params
>>>>>>> solution
      if params[:morralla]
        params.require(:morralla).permit(
          :mount
        )
      end
    end
<<<<<<< HEAD
  
=======
  def show
    render :index
  end
>>>>>>> solution
end
