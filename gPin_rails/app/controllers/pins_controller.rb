class PinsController < ApplicationController
  def index
    @pins = Pin.all.order(:id)#puts pins in the order.
    render :index
  end

  def new
    @pin = Pin.new #creating a new object so i can use it in my templet
  end

  def create
    @pin = Pin.create pin_params
    if @pin.save
     #binding.pry
     flash[:create] = "You made it!"
      redirect_to "/pins"
    else
      #redirect_to "/pins/new"
      render :new
    end
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
    if @pin.save
      flash[:create] = "You updated it!"
      redirect_to '/pins'
    else
      render :edit
    end
  end

  def destroy
    @pin = Pin.find(params[:id])
      @pin.destroy
        flash[:destroy] = "You destroied it!" 
          redirect_to'/'
  end
    
  private
  def pin_params
    params.require(:pin).permit(:comment, :url, :image)#if i try to modify the form you won't be able it is security thing if use can only eddit our form the filds that we permited
  end
  
end
