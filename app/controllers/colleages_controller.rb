 class ColleagesController < ApplicationController
  before_action :set_colleage, only: [:show, :edit, :update, :destroy]

  # GET /colleages
  # GET /colleages.json
  def index
    @colleages = Colleage.all
  end


  # GET /colleages/1
  # GET /colleages/1.json
  def show
  end

  # GET /colleages/new
  def new
    @colleage = Colleage.new
  end

  # GET /colleages/1/edit
  def edit
  end

  # POST /colleages
  # POST /colleages.json
  def create
    @colleage = Colleage.new(colleage_params)

    respond_to do |format|
      if @colleage.save
        format.html { redirect_to @colleage, notice: 'Colleage was successfully created.' }
        format.json { render :show, status: :created, location: @colleage }
      else
        format.html { render :new }
        format.json { render json: @colleage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /colleages/1
  # PATCH/PUT /colleages/1.json
  def update
    respond_to do |format|
      if @colleage.update(colleage_params)
        format.html { redirect_to @colleage, notice: 'Colleage was successfully updated.' }
        format.json { render :show, status: :ok, location: @colleage }
      else
        format.html { render :edit }
        format.json { render json: @colleage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /colleages/1
  # DELETE /colleages/1.json
  def destroy
    @colleage.destroy
    respond_to do |format|
      format.html { redirect_to colleages_url, notice: 'Colleage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_colleage
      @colleage = Colleage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def colleage_params
      params.require(:colleage).permit(:name, :city, :address, :phonenumber)
    end
  end

