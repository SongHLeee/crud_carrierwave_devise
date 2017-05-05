class PostController < ApplicationController
  def index
    @my_board = Board.all
    
  end

  def new
  end
  
  def create
    makeBoard = Board.new
    makeBoard.title = params[:input_title]
    makeBoard.editor = params[:input_editor]
    makeBoard.content = params[:input_content]
    makeBoard.save
    
    redirect_to '/my_board'
  end
  
  def show
    @showBoard = Board.find(params[:id])
  end
  
  def update_view
    @updBoard = Board.find(params[:id])
  end
  
  def update
    updBoard = Board.find(params[:id])
    updBoard.title = params[:input_title]
    updBoard.editor = params[:input_editor]
    updBoard.content = params[:input_content]
    updBoard.save
    
    redirect_to '/my_board'
  end
  
  def delete
    del_board = Board.find(params[:id])
    del_board.destroy
    redirect_to '/my_board'
  
  end
  
  
end
