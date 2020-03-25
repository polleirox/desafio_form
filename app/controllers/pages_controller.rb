class PagesController < ApplicationController
  http_basic_authenticate_with name: "desafiovamoscontodo", password: "XAHTJEAS23123%23", only: :dashboard

  def index
  end

  def dashboard
  end

  def create
    a = 1 + 1
    byebug
    @post = Post.create(title: params[:title], comment: params[:comment], image_url: params[:image])
  end
end
