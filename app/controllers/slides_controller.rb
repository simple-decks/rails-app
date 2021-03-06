class SlidesController < ApplicationController

  def new
    #if no presentation exists, create one
    # would only happen if creating a presentation from the homepage

    # if params[:presentation_id] == nil
    #   @presentation = Presentation.create
    #   @slides = @presentation.slides.build
    #   params[:presentation_id] = @presentation.id
    #   #render "new_no_presentation"
    # else
      @presentation = Presentation.where(:url_token => params[:presentation_id]).first
      @slide = @presentation.slides.build
    # end

  end

  def edit
    #if no presentation exists, create one
    # would only happen if creating a presentation from the homepage

    # if params[:presentation_id] == nil
    #   @presentation = Presentation.create
    #   @slides = @presentation.slides.build
    #   params[:presentation_id] = @presentation.id
    #   #render "new_no_presentation"
    # else
      # @presentation = Presentation.find(params[:presentation_id])
      # @slide = @presentation.slides.build
    # end
    @presentation = Presentation.where(:url_token => params[:presentation_id]).first
    @slide = @presentation.slides.find(params[:id])
  end

  def create
    @presentation = Presentation.where(:url_token => params[:presentation_id]).first

    # @presentation = Presentation.find(params[:presentation_id])
    @slide = @presentation.slides.build(slide_params)

    # unless Presentation.find(params[:presentation][:presentation_id]) do
    #   @presentation = Presentation.find(params[:presentation_id])
    #   @presentation.slides.build(slide_params)
    #   @presentation.save
    # end

    respond_to do |format|
      if @slide.save

        params[:url_token] = @presentation.url_token
        params[:presentation_title] = @presentation.url_title
        
        format.html { redirect_to edit_token_url_path(@presentation.url_token, @presentation.url_title), notice: 'Slide was successfully added.' }
        format.json { render action: 'show', status: :created, location: @presentation }
      else
        format.html { render action: 'new' }
        format.json { render json: @slide.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @presentation = Presentation.where(:url_token => params[:presentation_id]).first

    # @presentation = Presentation.find(params[:presentation_id])
    @slide = @presentation.slides.find(params[:id])
    @slide.update(slide_params)

    # unless Presentation.find(params[:presentation][:presentation_id]) do
    #   @presentation = Presentation.find(params[:presentation_id])
    #   @presentation.slides.build(slide_params)
    #   @presentation.save
    # end

    respond_to do |format|
      if @slide.save

        params[:url_token] = @presentation.url_token
        params[:presentation_title] = @presentation.url_title
        params[:current_slide] = @slide.id

        
        format.html { redirect_to edit_token_url_path(@presentation.url_token, @presentation.url_title), notice: 'Slide was successfully updated.' }
        format.json { render action: 'show', status: :created, location: @presentation }
      else
        format.html { render action: 'new' }
        format.json { render json: @slide.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_anonymous_slide
    #   @anonymous_slide = AnonymousSlide.find(params[:id])
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    def slide_params
      params.require(:slide).permit(:content)
    end



end