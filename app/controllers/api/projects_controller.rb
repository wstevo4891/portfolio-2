module Api
  # Controller for projects API
  class ProjectsController < ApplicationController
    def index
      @projects = ::Project.all
    end

    def show
      @project = ::Project.find(params[:id])
    end
  end
end
