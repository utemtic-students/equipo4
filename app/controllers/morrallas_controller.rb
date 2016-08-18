class MorrallasController < ApplicationController
    
def index
		@morrallas= Morralla.all 
    #@saldo = @morralla.where(user_id: current_user.user_id)
	end

  def new
		@morralla = Morralla.new
	end

  def agregar_saldo
      @morralla = current_user.morralla.new(morralla_params)

    if @morralla.save 
      render :index
    else 
      render :new  #render de la acción new
    end
  end

  def cobrar
  end
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
      if params[:morralla]
        params.require(:morralla).permit(
          :mount
        )
      end
    end
  def show
    render :index
  end
end
