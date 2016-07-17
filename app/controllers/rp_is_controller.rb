class RpIsController < ApplicationController
  before_action :set_rpi, only: [:show, :update, :destroy]

  # GET /rpis
  def index
    @rpis = Rpi.all

    render json: @rpis
  end

  # GET /rpis/1
  def show
    render json: @rpi
  end

  # POST /rpis
  def create
    @rpi = Rpi.new(rpi_params)

    if @rpi.save
      render json: @rpi, status: :created, location: @rpi
    else
      render json: @rpi.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /rpis/1
  def update
    if @rpi.update(rpi_params)
      render json: @rpi
    else
      render json: @rpi.errors, status: :unprocessable_entity
    end
  end

  # DELETE /rpis/1
  def destroy
    @rpi.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rpi
      @rpi = Rpi.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def rpi_params
      params.fetch(:rpi, {})
    end
end
