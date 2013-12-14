class PresentationsController < ApplicationController
  before_filter :set_presentation, only: [:new, :show, :edit, :update]

  def index
   # @presentation = Presentation.find(session[:presentation_id])
    #@default_slide = @presentation.slides[0]
  end

  def show
    # if !@presentation
    #   redirect_to new_presentation_path
    # else
  end

  def new
    @presentation = Presentation.new
  end

  def create
    @presentation = Presentation.new(presentation_params)

    if @presentation.save
      redirect_to @presentation, :notice => "Created the presentation"
    else
      render :new
    end
  end

  private
  def set_presentation
    @presentation = Presentation.find_by(:id => params[:id])
  end

  def presentation_params
    params.require(:presentation).permit(:content)
  end
 
end
