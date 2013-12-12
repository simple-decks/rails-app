class PresentationsController < ApplicationController

  def index
    @presentation = Presentation.new
    @default_slide = @presentation.slides[0]
  end

end
