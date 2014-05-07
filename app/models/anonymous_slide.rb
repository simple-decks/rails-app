# == Schema Information
#
# Table name: anonymous_slides
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#  content    :text
#

class AnonymousSlide < ActiveRecord::Base
end
