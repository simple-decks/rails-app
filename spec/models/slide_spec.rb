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

require 'spec_helper'

describe Slide do
  pending "add some examples to (or delete) #{__FILE__}"
end
