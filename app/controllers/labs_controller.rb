# Controller for /labs routes
class LabsController < ApplicationController
  def index
    @labs = Lab.all
  end

  def show
    @lab = Lab.find_by(slug: params[:slug])
  end
end
