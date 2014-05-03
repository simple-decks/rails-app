class PresentationsController < ApplicationController

  def index
    @presentation = Presentation.new
    @default_slide = @presentation.slides[0]
  end

  def new
    @presentation = Presentation.new
    @slides = @presentation.slides.build 
  end

end
