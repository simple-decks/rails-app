class SlidesController < ApplicationController

  def new
    #if no presentation exists, create one
    # would only happen if creating a presentation from the homepage

    if params[:presentation_id] == nil
      @presentation = Presentation.create
      @slides = @presentation.slides.build
      params[:presentation_id] = @presentation.id
      #render "new_no_presentation"
    else
      @presentation = Presentation.find(params[:presentation_id])
      @slides = @presentation.slides
    end

  end



end