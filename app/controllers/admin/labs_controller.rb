module Admin
  # Controller for admin /labs routes
  class LabsController < ApplicationController
    before_action :set_lab, only: %i[show edit update destroy]

    layout 'admin'

    # GET /admin/labs
    # GET /admin/labs.json
    def index
      @labs = ::Lab.all
    end

    # GET /admin/labs/1
    # GET /admin/labs/1.json
    def show
    end

    # GET /admin/labs/new
    def new
      @lab = ::Lab.new
    end

    # GET /admin/labs/1/edit
    def edit
    end

    # POST /admin/labs
    # POST /admin/labs.json
    def create
      @lab = ::Lab.new(lab_params)

      respond_to do |format|
        if @lab.save
          format.html { redirect_to admin_lab_url(@lab), notice: 'Lab was successfully created.' }
          format.json { render :show, status: :created, location: admin_lab_url(@lab) }
        else
          format.html { render :new }
          format.json { render json: @lab.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /admin/labs/1
    # PATCH/PUT /admin/labs/1.json
    def update
      respond_to do |format|
        if @lab.update(lab_params)
          format.html { redirect_to admin_lab_url(@lab), notice: 'Lab was successfully updated.' }
          format.json { render :show, status: :ok, location: admin_lab_url(@lab)}
        else
          format.html { render :edit }
          format.json { render json: @lab.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /admin/labs/1
    # DELETE /admin/labs/1.json
    def destroy
      @lab.destroy
      respond_to do |format|
        format.html { redirect_to admin_labs_url, notice: 'Lab was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_lab
      @lab = ::Lab.find(params[:id])
    end

    # Never trust parameters from the scary internet,
    # only allow the white list through.
    def lab_params
      params.require(:lab)
            .permit(:title, :cover, :description, :tech_stack)
    end
  end
end
