class PostsController < ApplicationController
  http_basic_authenticate_with name: "desafiovamoscontodo", password: "XAHTJEAS23123%23", only: :dashboard
  def dashboard
  end
  def create
    @post = Post.create(title: params[:title], comment: params[:comment], image_url: params[:image_url])
    
    if @post.comment.include? ("spoiler")
        @post.comment.slice! ("spoiler")
    end

    @post.save
  end
end


