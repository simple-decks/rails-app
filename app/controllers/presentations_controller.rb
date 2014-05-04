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
    # binding.pry

    # presentation_title

    # @slides[0].content.each_line do |line|
    #   first_line = 
    # end
    


    # #set presentation title based on value of first line in first slide
    # # @presentation.title = 
    # #step through each character in slide[0].content
    # # add the character to presentation.title until a \n is found

    # if @presentation.save
    # end

    #set presentation title based on value of first line in first slide
    #convert presentation title to title portion of presentation url - maybe use url slug gem for this
  end

  def show
    #find_by token_url
    #if token doesn't match - 404 (later, do a query based on presentation_title value)

    #if token matches

    #redirect to full url based on ma
  end

end
