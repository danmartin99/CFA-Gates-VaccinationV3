class GrcrdsController < ApplicationController
  before_action :set_grcrd, only: [:show, :edit, :update, :destroy]

  # GET /grcrds
  # GET /grcrds.json
  def index
    @grcrds = Grcrd.all
  end

  # GET /grcrds/1
  # GET /grcrds/1.json
  def show
  end

  # GET /grcrds/new
  def new
    @grcrd = Grcrd.new
  end

  # GET /grcrds/1/edit
  def edit
  end

  # POST /grcrds
  # POST /grcrds.json
  def create
    @grcrd = Grcrd.new(grcrd_params)
    @grcrd.user_id = current_user.id 
    respond_to do |format|
      if @grcrd.save
        format.html { redirect_to @grcrd, notice: 'Grcrd was successfully created.' }
        format.json { render :show, status: :created, location: @grcrd }
      else
        format.html { render :new }
        format.json { render json: @grcrd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grcrds/1
  # PATCH/PUT /grcrds/1.json
  def update
    respond_to do |format|
      if @grcrd.update(grcrd_params)
        format.html { redirect_to @grcrd, notice: 'Grcrd was successfully updated.' }
        format.json { render :show, status: :ok, location: @grcrd }
      else
        format.html { render :edit }
        format.json { render json: @grcrd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grcrds/1
  # DELETE /grcrds/1.json
  def destroy
    @grcrd.destroy
    respond_to do |format|
      format.html { redirect_to grcrds_url, notice: 'Grcrd was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grcrd
      @grcrd = Grcrd.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grcrd_params
      params.require(:grcrd).permit(:g_nam1, :g_name2, :g_idnum, :g_photo, :g_title, :g_email)
    end
end
