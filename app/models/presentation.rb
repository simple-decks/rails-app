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

class Presentation < ActiveRecord::Base
  has_many :slides
  # after_initialize :default_presentation

  # def default_presentation
  #   self.slides.build(:slide_type => "title-slide", :content => "New SimpleDeck")
  #   self.save
  # end

end
