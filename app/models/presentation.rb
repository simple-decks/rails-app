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

class Presentation < ActiveRecord::Base

  DELIMITER = "\n---\n"

  def make_slides
    slides = self.content.split(DELIMITER) if self.content
    renderer = Redcarpet::Render::HTML.new
    markdown = Redcarpet::Markdown.new(renderer)
    slides.collect do |slide|
      markdown.render(slide)
    end
  end

  def title_slide
    
  end
  
end
