class PinsController < ApplicationController
	# before_action :find_user, :find_board, only: [:index, :new, :create]
	# before_action :find_pin, only: [:show, :edit, :update, :destroy]

	def index
		@pins = Pin.all
		@user = User.all
		render :index
	end

	def new
		@pin = Pin.new
		@boards = @user.boards
	end

	def create
		@pin = Pin.new(pin_params)
		if @pin.save
			flash[:success] = "New pin was succesful"
			redirect_to board_pins_path

			redirect_to board_pins_path, flash: {success: "Successfully Created!"}
		else
			render :new
		end
	end

	def show
		@pin = Pin.find params[:board_id, :id]
	end

	def edit
		@pin = Pin.find params[:board_id, :id]
	end

	def update
		@pin = Pin.find params[:board_id, :id]
		@pin.update pin_params
		redirect_to board_pins_path
		if @pin.save
			redirect_to pin_path(@pin), notice: "Updated"
		else
			render :edit
		end
	end

	def destroy
		@pin = Pin.find_by_id params[:board_id, :id]
		@pin.destroy
		redirect_to board_pins_path
	end

	private

	def pin_params
		params.require(:pin).permit(:url, :photo, :comment)
	end

end
