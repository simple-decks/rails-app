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

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :slide do
    presentation nil
    content "MyString"
  end
end
