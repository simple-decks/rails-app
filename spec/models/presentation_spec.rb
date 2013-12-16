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

    let (:presentation) {Presentation.new(:content => "slide content", :title => "my presentation")}

    it "puts content in a single slide by default" do 
      expect(presentation.content).to be("<section id='1'>slide content</section>")
    end


  end


end
