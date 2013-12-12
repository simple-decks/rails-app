
describe "Homepage" do 

  context "default view" do 

    it "displays a presentation with one empty slide" do 
      visit index_path
      pres = Presentation.new

      expect(page).to have_selector("section")

    end


  end
end
