class PinsController < ApplicationController

  def index
    @pins = Pin.all
  end

  def new
    @pin = Pin.new
  end

  def create
    @pin = Pin.create(pin_params)
    redirect_to '/pins'
  end

  private

  def pin_params
    params.require(:pin).permit(:url,:image,:comment)
  end


end