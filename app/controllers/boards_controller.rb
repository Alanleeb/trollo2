class BoardsController < ApplicationController
  before_action :set_board, only: [:show, :update, :edit, :destroy]
  def index
    @boards = current_user.boards
  end

  def new
    @board = current_user.boards.new
  end

  def show
    #@board = Board.find(params[:id])
  end

  def edit
    render 'form'
  end


def create
  @board = current_user.boards.new(board_params)

  if @board.save
    redirect_to departments_path
  else
    render :new
  end
end

def update
  if @board.update(board.params)
    redirect_to @board, notice: 'Board was successfully created'
  else
    render :edit
  end
end

 def destroy
   @board.destroy
   redirect_to boards_path, notice: 'Board was successfully destroyed'
 end

 private

   def set_board
     @board = current_user.board.find(params[:id])
   end

   def board_params
     params.require(:board).permit(:name)
   end

end
