class PresentationsController < ApplicationController

  before_action :presentation_params, :only => [:create]
  before_action :get_presentation, :only => [:show, :edit, :update ]

  def index
    @presentations = Presentation.all
  end

  def new
    @presentation = Presentation.new
  end

  def create
    @presentation = Presentation.create(presentation_params)

    redirect_to presentations_path
  end

  def show
    @presentation_slides = []
    if @presentation.content.include?("---")
      @presentation_slides = @presentation.content.split("---").collect {|slide| slide.strip }
    else
      @presentation_slides[0] = @presentation.content.strip
    end
  end

  def edit

  end

  def update
    @presentation.update(presentation_params)
    redirect_to @presentation
  end

  private
    def get_presentation
      @presentation = Presentation.find(params[:id])
    end

    def presentation_params
      params.require(:presentation).permit(:title, :content)
    end
  #  def index
  #   @presentation = current_presentation
  #   @default_slide = @presentation.slides[0]
  # end

  # def current_presentation
  #   if session[:presentation_id]
  #     presentation = Presentation.find(session[:presentation_id])
  #   else
  #     presentation = Presentation.new
  #     session[:presentation_id] = presentation.id
  #   end
  #   presentation
  # end
 
end
