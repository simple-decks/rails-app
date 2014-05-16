class PresentationsController < ApplicationController
  respond_to :json, :html

  def index
    respond_with Presentation.all
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

     if params[:current_slide]
       @current_slide = @presentation.slides.find(params[:current_slide])
     else
       @current_slide = @presentation.slides.first
     end
  end

  def show
     @presentation = Presentation.find_by :url_token => params[:url_token]
  end

end
