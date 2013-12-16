# == Schema Information
#
# Table name: presentations
#
#  id         :integer          not null, primary key
#  author     :string(255)
#  title      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe Presentation do
    
  context "presentation content" do

    before(:each) do 
      Presentation.create(:content => "slide content", :title => "my presentation")
      Presentation.create(:content => "first slide\n---\nthis is the next slide", :title => "multi-slide presentation")
    end

    it "puts content in a single slide by default" do
      pres = Presentation.find_by(:title => "my presentation")

      expect(pres.content).to eq("<section id='0'>slide content</section>")
    end

    it "divides submitted content into slides based on the delimiter" do 
      two_slide_presentation = Presentation.find_by(:title => "multi-slide presentation")

      expect(two_slide_presentation.content).to eq("<section id='0'>first slide</section><section id='1'>this is the next slide</section>")
    end

  end


end
