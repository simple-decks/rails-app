# == Schema Information
#
# Table name: presentations
#
#  id         :integer          not null, primary key
#  author     :string(255)
#  title      :string(255)
#  content    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe Presentation do
    
    context "initialize" do

      let(:pres) {Presentation.new}

      it "initializes with one empty slide" do

        expect(pres.slides.count).to eq(1)
      end



    end


end
