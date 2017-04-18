class VaccinatorsController < ApplicationController
  before_action :set_vaccinator, only: [:show, :edit, :update, :destroy]

  # GET /vaccinators
  # GET /vaccinators.json
  def index
    @vaccinators = Vaccinator.all
  end

  # GET /vaccinators/1
  # GET /vaccinators/1.json
  def show
  end

  # GET /vaccinators/new
  def new
    @vaccinator = Vaccinator.new
  end

  # GET /vaccinators/1/edit
  def edit
  end

  # POST /vaccinators
  # POST /vaccinators.json
  def create
    @vaccinator = Vaccinator.new(vaccinator_params)

    respond_to do |format|
      if @vaccinator.save
        format.html { redirect_to @vaccinator, notice: 'Vaccinator was successfully created.' }
        format.json { render :show, status: :created, location: @vaccinator }
      else
        format.html { render :new }
        format.json { render json: @vaccinator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vaccinators/1
  # PATCH/PUT /vaccinators/1.json
  def update
    respond_to do |format|
      if @vaccinator.update(vaccinator_params)
        format.html { redirect_to @vaccinator, notice: 'Vaccinator was successfully updated.' }
        format.json { render :show, status: :ok, location: @vaccinator }
      else
        format.html { render :edit }
        format.json { render json: @vaccinator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vaccinators/1
  # DELETE /vaccinators/1.json
  def destroy
    @vaccinator.destroy
    respond_to do |format|
      format.html { redirect_to vaccinators_url, notice: 'Vaccinator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vaccinator
      @vaccinator = Vaccinator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vaccinator_params
      params.require(:vaccinator).permit(:vac_name1, :vac_name2, :vac_idnum, :vac_photo, :vac_title, :vendor_name, :vac_email)
    end
end
