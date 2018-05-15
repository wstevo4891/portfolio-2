module Api
  # Controller for project images API
  class ProjectImagesController < ApplicationController
    def show
      @images = ::Project.find(params[:id]).images
    end
  end
end
