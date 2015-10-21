class BoardController < ApplicationController
	before_action :find_user, only: [:index, :new, :create]
	before_action :find_board, only: [:show, :edit, :update, :destroy]

	def index
		@boards = Board.all
		render :index
	end

	def new
		@board = Board.new
	end
	def create
		@board = Board.new(board_params)
		if @board.save
			flash[:success] = "New board was succesful"
			redirect_to user_boards_path

			redirect_to user_boards_path, flash: {success: "Successfully Created!"}
		else
			render :new
		end
	end

	def show
		@board = Board.find params[:id]
	end

	def edit
		@board = Board.find params[:id]
	end

	def update
		@board = Board.find params[:id]
		@board.update board_params
		redirect_to user_boards_path
		if @board.save
			redirect_to user_board_path(@board), notice: "Updated"
		else
			render :edit
		end
	end

	def destroy
		@board = Board.find_by_id params[:id]
		@board.destroy
		redirect_to user_path
	end

	private

	# define find_user and find_board methods
	def find_user
		@author = Author.find(params[:author_id])
	end

	def find_board
		@book = Book.find params[:id]
	end

	def board_params
		params.require(:board).permit(:url, :photo, :comment)
		def find_one
			@user = User.find params[:id]
		end
	end
end
