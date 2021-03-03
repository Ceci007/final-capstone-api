class IllnessesController < ApplicationController
  before_action :find_user
  before_action :find_illness, only: %i[show update destroy]

  def index
    render json: @user.illnesses
  end

  def show
    render json: @illness
  end

  def create
    @illness = Illness.new(illness_params)
    if @illness.save
      render json: @illness
    else

      render json: { error: 'Unable to create Illness' }, status: 400
    end
  end

  def update
    if @illness
      @illness.update(illness_params)
      render json: { message: 'Illness succesfully updated' }, status: 200
    else
      render json: { error: 'Unable to update Illness' }, status: 400
    end
  end

  def destroy
    if @illness
      @illness.destroy
      render json: { message: 'Illness succesfully deleted' }, status: 200
    else
      render json: { error: 'Unable to delete Illness' }, status: 400
    end
  end

  private

  def illness_params
    params.require(:illness).permit(:name, :description, :user_id, :id)
  end

  def find_user
    @user = User.find(params[:user_id])
  end

  def find_illness
    @illness = Illness.find(params[:id])
  end
end
