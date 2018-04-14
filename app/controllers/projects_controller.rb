# Controller for project pages
class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find_by(slug: params[:slug])
  end
end
