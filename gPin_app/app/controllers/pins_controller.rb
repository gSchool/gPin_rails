class PinsController < ApplicationController
  def index
    @pins = Pin.all
    render :index
  end
end
