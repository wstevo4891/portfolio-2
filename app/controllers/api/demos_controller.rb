module Api
  # Controller for project demos API
  class DemosController < ApplicationController
    def index
      @demos = find_project.demos
    end

    private

    def find_project
      ::Project.find(params[:project_id])
    end
  end
end
