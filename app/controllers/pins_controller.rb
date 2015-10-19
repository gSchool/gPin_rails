class PinsController < ApplicationController

  def index
    @pins = Pin.all.order(:id)
  end

  def new
    @pin = Pin.new
  end

  def create
    @pin = Pin.new(pin_params)
    if @pin.save
      redirect_to pins_path, notice: "Pin successfully created!"
    else
      render :new
    end
  end

  def edit
    @pin = Pin.find(params[:id])
  end

  def update
    @pin = Pin.find(params[:id])
    if @pin.update(pin_params)
      redirect_to pins_path, notice: "Pin successfully updated!"
    else
      render :edit
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