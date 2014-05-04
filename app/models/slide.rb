# == Schema Information
#
# Table name: slides
#
#  id              :integer          not null, primary key
#  presentation_id :integer
#  content         :string(255)
#  slide_type      :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

class Slide < ActiveRecord::Base
  belongs_to :presentation
  validates :content, :presence => {:message => 'Slides cannot be empty'}
end
