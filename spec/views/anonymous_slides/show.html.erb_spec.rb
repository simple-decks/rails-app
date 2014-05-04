require 'spec_helper'

describe "anonymous_slides/show" do
  before(:each) do
    @anonymous_slide = assign(:anonymous_slide, stub_model(AnonymousSlide))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
