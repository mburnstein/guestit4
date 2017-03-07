class GuestsController < ApplicationController
  def index
    @guests=Guest.all
  end

  def new
    @guest = Guest.new
  end

  def create
    Guest.create(guest_params)
  end

 
  private

  def guest_params
    params.require(:guest).permit(:first_name, :last_name)
    redirect_to root_path
  end
end
