module Api
  # Controller for post sections API
  class SectionsController < ApplicationController
    def index
      @sections = find_post.sections
    end

    private

    def find_post
      ::Post.find(params[:post_id])
    end
  end
end
