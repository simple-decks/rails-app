require 'spec_helper'

describe Presentation do
    
    context "initialize" do

      let(:pres) {Presentation.new}

      it "initializes with one empty slide" do

        expect(pres.slides.count).to eq(1)
      end



    end


end
