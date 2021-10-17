class AgenciesController < ApplicationController
  before_action :set_agency, only: %i[ show edit update destroy ]

  # GET /agencies or /agencies.json
  def index
    @agencies = Agency.all
  end

  # GET /agencies/1 or /agencies/1.json
  def show
  end

  # GET /agencies/new
  def new
    @agency = Agency.new
  end

  # GET /agencies/1/edit
  def edit
  end

  # POST /agencies or /agencies.json
  def create
    @agency = Agency.new(agency_params)

    respond_to do |format|
      if @agency.save
        format.html { redirect_to @agency, notice: "Agency was successfully created." }
        format.json { render :show, status: :created, location: @agency }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @agency.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /agencies/1 or /agencies/1.json
  def update
    respond_to do |format|
      if @agency.update(agency_params)
        format.html { redirect_to @agency, notice: "Agency was successfully updated." }
        format.json { render :show, status: :ok, location: @agency }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @agency.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agencies/1 or /agencies/1.json
  def destroy
    @agency.destroy
    respond_to do |format|
      format.html { redirect_to agencies_url, notice: "Agency was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agency
      @agency = Agency.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def agency_params
      params.require(:agency).permit(:title, :description)
    end
end
