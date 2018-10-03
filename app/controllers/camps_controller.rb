class CampsController < ApplicationController
  before_action :set_camp, only: [:show, :edit, :update, :destroy]

  def index
    @camps = Camp.all
  end

  def show
  end

  def new
    @camp = Camp.new
  end

  def create
       @camp = Camp.new(camp_params)
    if @camp.valid?
       @camp.save
      redirect_to @camp
    else
      flash[:errors] = @camp.errors.full_messages
      redirect_to signup_path
    end
  end

  def edit
  end

  def update
    @camp.update(camp_params)
    if @camp.valid?
      redirect_to camp_path(@camp)
    else
      flash[:errors] = @camp.errors.full_messages
      redirect_to edit_camp_path
    end
  end

  def destroy
    @camp.destroy
    redirect_to songs_url
  end

  private

  def set_camp
    @camp = Camp.find(params[:id])
  end

  def camp_params
    params.require(:camp).permit(:name, :location, :username, :password, :cost, :dates, :description, :photo)
  end

end
