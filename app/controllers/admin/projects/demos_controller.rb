# app/controllers/projects/demos_controller.rb

module Admin
  module Projects
    # Controller for Project::Demo CRUD
    class DemosController < ApplicationController
      before_action :set_demo, only: %i[show edit update destroy]

      # GET /projects/demos
      # GET /projects/demos.json
      def index
        @project = find_project
        @project_demos = @project.demos
      end

      # GET /projects/demos/1
      # GET /projects/demos/1.json
      def show
      end

      # GET /projects/demos/new
      def new
        @project = find_project
        @project_demo = @project.demos.build
      end

      # GET /projects/demos/1/edit
      def edit
      end

      # POST /projects/demos
      # POST /projects/demos.json
      def create
        @project_demo = find_project.demos.build(demo_params)

        respond_to do |format|
          if @project_demo.save
            format.html { redirect_to admin_project_demo_url(@project_demo), notice: 'Project Demo was successfully created.' }
            format.json { render :show, status: :created, location: admin_project_demo_url(@project_demo) }
          else
            format.html { render :new }
            format.json { render json: @project_demo.errors, status: :unprocessable_entity }
          end
        end
      end

      # PATCH/PUT /projects/demos/1
      # PATCH/PUT /projects/demos/1.json
      def update
        respond_to do |format|
          if @project_demo.update(demo_params)
            format.html { redirect_to admin_project_demo_url(@project_demo), notice: 'Project Demo was successfully updated.' }
            format.json { render :show, status: :ok, location: admin_project_demo_url(@project_demo) }
          else
            format.html { render :edit }
            format.json { render json: @project.errors, status: :unprocessable_entity }
          end
        end
      end

      # DELETE /projects/demos/1
      # DELETE /projects/demos/1.json
      def destroy
        @project_demo.destroy
        respond_to do |format|
          format.html { redirect_to admin_project_demos_url(params[:project_id]), notice: 'Project Demo was successfully destroyed.' }
          format.json { head :no_content }
        end
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_demo
        @project = find_project
        @project_demo = @project.demos.find(params[:id])
      end

      def find_project
        ::Project.find(params[:project_id])
      end

      # Never trust parameters from the scary internet,
      # only allow the white list through.
      def demo_params
        params.require(:project_demo)
              .permit :name, :image, :body
      end
    end
  end
end
