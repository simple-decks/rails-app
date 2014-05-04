require 'spec_helper'

describe "anonymous_slides/edit" do
  before(:each) do
    @anonymous_slide = assign(:anonymous_slide, stub_model(AnonymousSlide))
  end

  it "renders the edit anonymous_slide form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", anonymous_slide_path(@anonymous_slide), "post" do
    end
  end
end
