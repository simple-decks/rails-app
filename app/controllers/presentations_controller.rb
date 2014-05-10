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

  def edit
     @presentation = Presentation.find_by :url_token => params[:url_token]
     @slide_nav = @presentation.slides(:order => 'created_at DESC')
     @current_slide = @presentation.slides.first
  end

  def show
     @presentation = Presentation.find_by :url_token => params[:url_token]
  end

end
