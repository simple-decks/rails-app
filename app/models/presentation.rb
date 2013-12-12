class Presentation < ActiveRecord::Base
  has_many :slides
  after_initialize :add_slide

  def add_slide
    self.slides.build(:slide_type => "title")
    self.save
  end

end
