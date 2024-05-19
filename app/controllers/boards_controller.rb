class BoardsController < ApplicationController
  def index
    @boards = Board.all
    render({ :template => "boards/index" })
  end

  def create
    board = Board.new
    board.name = params.fetch("name")
    
    if board.save
      redirect_to("/boards")
    else
      render({ :template => "boards/index" })
    end
  end

  def show
    @board = Board.where({ :id => params.fetch("id") }).at(0)
    @posts = Post.where({ :board_id => @board.id })
    
    render({ :template => "boards/show" })
  end
end
