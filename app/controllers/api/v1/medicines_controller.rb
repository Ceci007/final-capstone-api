class Api::V1::MedicinesController < ApplicationController
  before_action :find_tracking
  before_action :find_medicine, only: %i[show update destroy]

  def index
    render json: @tracking.medicines
  end

  def show
    render json: @medicine
  end

  def create
    @medicine = Medicine.new(medicine_params)

    if @medicine.save
      render json: @medicine
    else

      render error: { error: 'Unable to create Medicine' }, status: 400
    end
  end

  def update
    if @medicine
      @medicine.update(medicine_params)
      render json: { message: 'Medicine succesfully updated' }, status: 200
    else

      render json: { error: 'Unable to update Medicine' }, status: 400
    end
  end

  def destroy
    if @medicine
      @medicine.destroy
      render json: { message: 'Medicine succesfully deleted' }, status: 200
    else

      render json: { error: 'Unable to delete Medicine' }, status: 400
    end
  end

  private

  def medicine_params
    params.require(:medicine).permit(:name, :quantity, :tracking_id)
  end

  def find_medicine
    @medicine = Medicine.find(params[:id])
  end

  def find_tracking
    @tracking = Tracking.find(params[:tracking_id])
  end
end
