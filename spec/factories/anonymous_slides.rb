# == Schema Information
#
# Table name: anonymous_slides
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#  content    :text
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :anonymous_slide do
  end
end
