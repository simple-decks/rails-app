
describe "Homepage" do 

  context "default view" do 
    before(:each) do
      visit index_path
      @pres = Presentation.new
    end

    it "displays a presentation with one slide" do 

      expect(page).to have_selector("section")
    end

    it "displays one empty slide with default content" do

      expect(page).to have_content("New SimpleDeck")
    end

    

  end
end
