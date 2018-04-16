module Api
  # Controller for posts API
  class PostsController < ApplicationController
    def index
      @posts = ::Post.all
    end

    def show
      @post = ::Post.find(params[:id])
    end
  end
end
