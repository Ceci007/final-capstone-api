class Api::V1::SymptomsController < ApplicationController
  before_action :find_tracking
  before_action :find_symptom, only: %i[show update destroy]

  def index
    render json: @tracking.symptoms
  end

  def show
    render json: @symptom
  end

  def create
    @symptom = Symptom.new(symptom_params)

    if @symptom.save
      render json: @symptom
    else

      render error: { error: 'Unable to create Sypmtom' }, status: 400
    end
  end

  def update
    if @symptom
      @symptom.update(symptom_params)
      render json: { message: 'Symptom succesfully updated' }, status: 200
    else

      render json: { error: 'Unable to update Symptom' }, status: 400
    end
  end

  def destroy
    if @symptom
      @symptom.destroy
      render json: { message: 'Symptom succesfully deleted' }, status: 200
    else

      render json: { error: 'Unable to delete Symptom' }, status: 400
    end
  end

  private

  def symptom_params
    params.require(:symptom).permit(:name, :intensity, :tracking_id)
  end

  def find_symptom
    @symptom = Symptom.find(params[:id])
  end

  def find_tracking
    @tracking = Tracking.find(params[:tracking_id])
  end
end
