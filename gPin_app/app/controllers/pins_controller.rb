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

  def show
    # is the params method from the 
    # url params from the routes??
    @pin = Pin.find(params[:id])
  end

  def edit
    @pin = Pin.find(params[:id])
  end

  def update
    @pin = Pin.find(params[:id])

    # What is going on HERE??
    @pin.update(pin_params) 
    redirect_to "/pins"
  end

  def destroy
    @pin = Pin.find(params[:id])
    @pin.destroy
    redirect_to '/'
  end





  # Why do we do THIS?
  private
  def pin_params
    params.require(:pin).permit(:url,:comment,:image)
  end


end
