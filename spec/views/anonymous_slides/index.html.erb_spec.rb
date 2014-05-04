require 'spec_helper'

describe "anonymous_slides/index" do
  before(:each) do
    assign(:anonymous_slides, [
      stub_model(AnonymousSlide),
      stub_model(AnonymousSlide)
    ])
  end

  it "renders a list of anonymous_slides" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
