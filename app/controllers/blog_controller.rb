# Controller for blog pages
class BlogController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find_by(slug: params[:slug])
  end
end
