
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

    it "allows users to input text when clicking on a slide"  do
      click_link("edit_slide")
      expect(page).to have_selector("textarea")
    end

    it "displays the content from the slide as the default content in the text area" do
      @pres.slides[0].content = "Foo"
      @pres.save
      visit index_path
      expect(page).to have_content("Foo")
      click_link("edit_slide")
      expect(page).to have_content("Foo")
    end 
  end
end
