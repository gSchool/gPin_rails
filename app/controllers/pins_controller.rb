class PinsController < ApplicationController

  def index
    @pins = Pin.all.order(:id)
  end

  def new
    @pin = Pin.new
  end

  def create
    @pin = Pin.create(pin_params)
    if @pin.errors.any? 
      redirect_to new_pin_path, alert: @pin.errors.full_messages
    else
      redirect_to pins_path, notice: "Pin successfully created!"
    end
  end

  def edit
    @pin = Pin.find(params[:id])
  end

  def update
    @pin = Pin.find(params[:id])
    @pin.update(pin_params)
    if @pin.errors.any? 
      redirect_to edit_pin_path, alert: @pin.errors.full_messages
    else
      redirect_to pins_path, notice: "Pin successfully updated!"
    end
  end

  def show
    @pin = Pin.find(params[:id])
  end

  def destroy
    @pin = Pin.find(params[:id])
    @pin.destroy
    redirect_to pins_path, notice: "Pin successfully destroyed."
  end

  private

  def pin_params
    params.require(:pin).permit(:url,:image,:comment)
  end


end