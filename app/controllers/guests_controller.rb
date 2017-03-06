class GuestsController < ApplicationController
  def index
    @guest=Guest.first
  end
end
