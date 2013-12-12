class Presentation < ActiveRecord::Base
  has_many :slides
  after_initialize :default_presentation

  def default_presentation
    unless self.slides[0]
      self.slides.build(:slide_type => "title-slide", :content => "New SimpleDeck")
      self.save
    end
  end

end
