class PinsController < ApplicationController
  
  def index
    @pins = Pin.all
    render :index
  end

  def new
    @pin = Pin.new
  end

  def create
    Pin.create pin_params
    redirect_to "/pins"
  end




  private
  def pin_params
    params.require(:pin).permit(:url,:comment,:image)
  end


end
