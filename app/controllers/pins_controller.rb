class PinsController < ApplicationController

  def index
    @pins = Pins.all
  end

end