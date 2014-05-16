class PresentationsController < ApplicationController
  respond_to :json, :html

  def index
    respond_with Presentation.all
  end

  def create
    respond_with Presentation.create(presentation_params)
  end

  def update
    respond_with Presentation.update_attributes(presentation_params)
  end

  # def new
  #   @presentation = Presentation.new
  #   @slides = @presentation.slides.build 
  # end

  # def create
  #   @presentation = Presentation.new
  #   @slides = @presentation.slides.build 
  # end

  # def edit
  #    @presentation = Presentation.find_by :url_token => params[:url_token]
  #    @slide_nav = @presentation.slides(:order => 'created_at DESC')

  #    if params[:current_slide]
  #      @current_slide = @presentation.slides.find(params[:current_slide])
  #    else
  #      @current_slide = @presentation.slides.first
  #    end
  # end

  # def show
  #    @presentation = Presentation.find_by :url_token => params[:url_token]
  # end

  private

  def presentation_params   
    params.require(:presentation).permit(:title, :url_token, :url_title)
  end

  #  id         :integer          not null, primary key
#  author     :string(255)
#  title      :string(255)
#  content    :string(255)
#  created_at :datetime
#  updated_at :datetime
#  url_token  :string(255)
#  url_title  :string(255)
#

end
