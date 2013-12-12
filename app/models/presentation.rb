class Presentation < ActiveRecord::Base
  has_many :slides
  after_initialize :default_presentation

  def default_presentation
    self.slides.build(:slide_type => "title-slide", :content => "New SimpleDeck")
    self.save
  end

end
