require 'spec_helper'

describe "anonymous_slides/new" do
  before(:each) do
    assign(:anonymous_slide, stub_model(AnonymousSlide).as_new_record)
  end

  it "renders new anonymous_slide form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", anonymous_slides_path, "post" do
    end
  end
end
