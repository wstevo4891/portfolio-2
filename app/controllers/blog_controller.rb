# Controller for blog pages
class BlogController < ApplicationController
  include MarkdownHelper

  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def show
    @post = Post.find_by(slug: params[:slug])
  end
end
