class PostsController < ApplicationController
  def create
    post = Post.new
    post.title = params.fetch("title")
    post.body = params.fetch("body")
    post.expires_on = params.fetch("expires_on")
    post.board_id = params.fetch("board_id")
    
    if post.save
      redirect_to("/boards/#{post.board_id}")
    else
      render({ :template => "boards/show" })
    end
  end
end
