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
  
end
