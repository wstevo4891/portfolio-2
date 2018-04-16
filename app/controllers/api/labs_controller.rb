module Api
  # Controller for labs API
  class LabsController < ApplicationController
    def index
      @labs = ::Lab.all
    end

    def show
      @lab = ::Lab.find(params[:id])
    end
  end
end
