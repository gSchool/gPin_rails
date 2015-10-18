class PinsController < ApplicationController
  def index
    @pins = Pin.all
    render :index
  end

  def new
    @pin = Pin.new
  end

  def create
    #binding.pry
    @pin = Pin.create pin_params
    redirect_to "/pins"
  end

  def show
    @pin = Pin.find(params[:id])
  end

  def edit
    @pin = Pin.find(params[:id])
  end

  def update
    @pin = Pin.find(params[:id])

    @pin.update(pin_params)
    redirect_to '/pins'
  end

  def destroy
    @pin = Pin.find(params[:id])
    @pin.destroy
    redirect_to'/'
  end
    
  private
  def pin_params
    params.require(:pin).permit(:comment, :url, :image)
  end
  
end
