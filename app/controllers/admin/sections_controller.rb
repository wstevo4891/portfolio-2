module Admin
  # Controller for Post Section CRUD
  class SectionsController < ApplicationController
    before_action :set_post_section, only: %i[show edit update destroy]

    layout 'admin'

    # GET /post/1/sections
    # GET /post/1/sections.json
    def index
      @post = find_post
      @post_sections = @post.sections
    end

    # GET /post/1/sections/1
    # GET /post/1/sections/1.json
    def show
    end

    # GET /post/1/sections/new
    def new
      @post = find_post
      @post_section = @post.sections.build
    end

    # GET /post/1/sections/1/edit
    def edit
    end

    # POST /post/1/sections
    # POST /post/1/sections.json
    def create
      @post = find_post
      @post_section = @post.sections.build(post_section_params)

      respond_to do |format|
        if @post_section.save
          format.html { redirect_to admin_post_section_url(@post, @post_section), notice: 'Section was successfully created.' }
          format.json { render :show, status: :created, location: admin_post_section_url(@post, @post_section) }
        else
          format.html { render :new }
          format.json { render json: @post_section.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /post/sections/1
    # PATCH/PUT /post/sections/1.json
    def update
      respond_to do |format|
        if @post_section.update(post_section_params)
          format.html { redirect_to admin_post_section_url(@post, @post_section), notice: 'Section was successfully updated.' }
          format.json { render :show, status: :ok, location: admin_post_section_url(@post, @post_section) }
        else
          format.html { render :edit }
          format.json { render json: @post_section.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /post/1/sections/1
    # DELETE /post/1/sections/1.json
    def destroy
      @post_section.destroy
      respond_to do |format|
        format.html { redirect_to admin_post_sections_url(@post), notice: 'Section was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_post_section
      @post = find_post
      @post_section = @post.sections.find(params[:id])
    end

    def find_post
      ::Post.find(params[:post_id])
    end

    # Never trust parameters from the scary internet,
    # only allow the white list through.
    def post_section_params
      params.require(:post_section).permit(:header, :image, :body)
    end
  end
end
