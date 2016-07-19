class TrainStatusesController < ApplicationController
  before_action :set_train_status, only: [:show, :update, :destroy]

  # GET /train_statuses
  def index
    @train_statuses = TrainStatus.all

    render json: @train_statuses
  end

  # GET /train_statuses/1
  def show
    render json: @train_status
  end

  # POST /train_statuses
  def create
    @train_status = TrainStatus.new(train_status_params)

    if @train_status.save
      render json: @train_status, status: :created, location: @train_status
    else
      render json: @train_status.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /train_statuses/1
  def update
    if @train_status.update(train_status_params)
      render json: @train_status
    else
      render json: @train_status.errors, status: :unprocessable_entity
    end
  end

  # DELETE /train_statuses/1
  def destroy
    @train_status.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_train_status
      @train_status = TrainStatus.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def train_status_params
      params.require(:train_status).permit(:rpi_id, :train_id, :major, :minor, :measured_power, :rssi, :accuracy, :proximity)
    end
end
