class PresentationsController < ApplicationController

  def index
    @presentation = Presentation.new
    @default_slide = @presentation.slides[0]
  end

  def new
    @presentation = Presentation.new
    @slides = @presentation.slides.build 
  end

  def create
    @presentation = Presentation.new
    @slides = @presentation.slides.build 
  end

  def show
     @presentation = Presentation.find_by :url_token => params[:url_token]

     # params[:url_token] = @presentation.url_token
    #     params[:presentation_title] = "test-title"
    # # @presentation = Presentation.find(params[:url_token])
    # @presentation = Presentation.find(params[:id])
    # #find_by token_url
    #if token doesn't match - 404 (later, do a query based on presentation_title value)

    #if token matches

    #redirect to full url based on ma
  end

end
