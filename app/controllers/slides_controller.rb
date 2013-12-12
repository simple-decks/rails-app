class SlidesController < ApplicationController

  def edit
    @presentation = Presentation.new
    @default_slide = @presentation.slides[0]
  end

end
