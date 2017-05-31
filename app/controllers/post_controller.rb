class PostController < ApplicationController
  def index
    @my_board = Board.all
    
  end

  def new
  end
  
  def create
    makeBoard = Board.new
    makeBoard.post_title = params[:input_post_title]
    makeBoard.post_editor = params[:input_post_editor]
    makeBoard.post_content = params[:input_post_content]
   
    uploader = ImgpostUploader.new
    
    uploader.store!(params[:input_img])
    makeBoard.image_url = uploader
    
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
    updBoard.post_title = params[:input_post_title]
    updBoard.post_editor = params[:input_post_editor]
    updBoard.post_content = params[:input_post_content]
    updBoard.save
    
    redirect_to '/my_board'
  end
  
  def delete
    del_board = Board.find(params[:id])
    del_board.destroy
    redirect_to '/my_board'
  
  end
  def reply_write
    new_reply = Rely.new
    new_reply.editor = params[:inputEditor]
    new_reply.content = params[:inputContent]
    new_reply.board_id = params[:reply_id]

    new_reply.save
    
    redirect_to :back
  end
  def reply_destroy
    @oneReply = Rely.find(params[:id])
    @oneReply.destroy
    
    redirect_to :back
  end

end
