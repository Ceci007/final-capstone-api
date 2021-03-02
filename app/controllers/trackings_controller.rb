class TrackingsController < ApplicationController
  before_action :find_illness
  before_action :find_tracking, only: %i[show update destroy]

  def index
    render json: @illness.trackings
  end

  def show
    render json: @tracking
  end

  def create
    @tracking = Tracking.new(tracking_params)

    if @tracking.save
      render json: @tracking
    else

      render error: { error: 'Unable to create Date' }, status: 400
    end
  end

  def update
    if @tracking
      @tracking.update(tracking_params)
      render json: { message: 'Date succesfully updated' }, status: 200
    else

      render json: { error: 'Unable to update Date' }, status: 400
    end
  end

  def destroy
    if @tracking
      @tracking.destroy
      render json: { message: 'Date succesfully deleted' }, status: 200
    else

      render json: { error: 'Unable to delete Date' }, status: 400
    end
  end

  private

  def tracking_params
    params.require(:tracking).permit(:date, :mood, :temperature, :illness_id)
  end

  def find_tracking
    @tracking = Tracking.find(params[:id])
  end

  def find_illness
    @illness = Illness.find(params[:illness_id])
  end
end
