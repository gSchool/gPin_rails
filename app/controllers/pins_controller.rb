class PinsController < ApplicationController
  def index
    @pins = Pin.all
  end

  def new
    @pin = Pin.new
  end

  def create
    @pin = Pin.new(pin_params)
    # if the pin saves successfully
    if @pin.save
      redirect_to pins_path
    else
      # show me the new page again - WITH THE ERROR MESSAGES!
      render :new
    end
  end

  def show
    @pin = Pin.find_by_id params[:id]
  end

  def edit
    @pin = Pin.find_by_id params[:id]
  end

  def update
    @pin = Pin.find_by_id params[:id]
    @pin.update pin_params
    if @pin.save
      redirect_to pin_path @pin
    else
      render :edit
    end
  end

  def destroy
    @pin = Pin.find_by_id params[:id]
    @pin.destroy
    redirect_to pins_path
  end

  private
  def pin_params
    params.require(:pin).permit(:name, :url, :image, :comment)
  end
end
