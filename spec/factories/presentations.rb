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
#  url_token  :string(255)
#  url_title  :string(255)
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :presentation do
    author "MyString"
    title "MyString"
  end
end
