class AnonymousSlidesController < ApplicationController
  before_action :set_anonymous_slide, only: [:show, :edit, :update, :destroy]

  # GET /anonymous_slides
  # GET /anonymous_slides.json
  def index
    @anonymous_slides = AnonymousSlide.all
  end

  # GET /anonymous_slides/1
  # GET /anonymous_slides/1.json
  def show
  end

  # GET /anonymous_slides/new
  def new
    @anonymous_slide = AnonymousSlide.new
    @presentations = Presentation.all
  end

  # GET /anonymous_slides/1/edit
  def edit
  end

  # POST /anonymous_slides
  # POST /anonymous_slides.json
  def create
    @anonymous_slide = AnonymousSlide.new(anonymous_slide_params)
    @presentation = Presentation.new
    @presentation.title = @anonymous_slide.content.lines.first.chomp
    @presentation.slides.build(:content => @anonymous_slide.content)

    respond_to do |format|
      if @presentation.save
        params[:url_token] = @presentation.url_token
        params[:url_title] = @presentation.url_title

        format.html { redirect_to edit_token_url_path(@presentation.url_token, @presentation.url_title), notice: 'Presentation  was successfully created.' }
        format.json { render action: 'show', status: :created, location:token_url_path }
      else
        format.html { render action: 'new' }
        format.json { render json: @anonymous_slide.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /anonymous_slides/1
  # PATCH/PUT /anonymous_slides/1.json
  def update
    respond_to do |format|
      if @anonymous_slide.update(anonymous_slide_params)
        format.html { redirect_to @anonymous_slide, notice: 'Anonymous slide was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @anonymous_slide.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anonymous_slides/1
  # DELETE /anonymous_slides/1.json
  def destroy
    @anonymous_slide.destroy
    respond_to do |format|
      format.html { redirect_to anonymous_slides_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anonymous_slide
      @anonymous_slide = AnonymousSlide.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def anonymous_slide_params
      params.require(:anonymous_slide).permit(:content)
    end
end
