class PresentationsController < ApplicationController
   def index
    @presentation = current_presentation
    @default_slide = @presentation.slides[0]
  end

  def current_presentation
    if session[:presentation_id]
      presentation = Presentation.find(session[:presentation_id])
    else
      presentation = Presentation.new
      session[:presentation_id] = presentation.id
    end
      return presentation
  end
 
end
