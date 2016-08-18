class PrintsController < ApplicationController
	def index
    @prints = Print.all
  end

  # GET /surveys/1
  # GET /surveys/1.json
  def show
  end

  # GET /surveys/new
  def new
    @print = Print.new
  end

  # GET /surveys/1/edit
  def edit
  end

  # POST /surveys
  # POST /surveys.json
  def create
       @print = current_user.print.new(print_params)

    respond_to do |format|
      if @print.save

        format.html { redirect_to @print, notice: 'Print was successfully created.' }
        format.json { render :show, status: :created, location: @print }
      else
        format.html { render :new }
        format.json { render json: @print.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /surveys/1
  # PATCH/PUT /surveys/1.json
  def update
    respond_to do |format|
      if @print.update(survey_params)
        format.html { redirect_to @print, notice: 'Survey was successfully updated.' }
        format.json { render :show, status: :ok, location: @print }
      else
        format.html { render :edit }
        format.json { render json: @print.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /surveys/1
  # DELETE /surveys/1.json
  def destroy
    @print.destroy
    respond_to do |format|
      format.html { redirect_to prints_url, notice: 'Survey was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_survey
      @print = Print.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def survey_params
      if params[:print]
        params.require(:print).permit(
          :q40
        )
      end
    end
end
