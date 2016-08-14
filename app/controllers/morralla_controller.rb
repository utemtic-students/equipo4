class MorrallaController < ApplicationController
  
  def agregar_saldo
  	   @morralla = current_user.morralla.new(morralla_params)

    respond_to do |format|
      if @morralla.save

        format.html { redirect_to @morralla, notice: 'Survey was successfully created.' }
        format.json { render :show, status: :created, location: @morralla }
      else
        format.html { render :new }
        format.json { render json: @morralla.errors, status: :unprocessable_entity }
      end
    end
  end

  def cobrar
  end

end
