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

  after_create :content_html_wrapper

  def content_html_wrapper
    content = self.content
    slide_array = content.split("\n---\n")
    
    html_content = []
    slide_array.each_with_index do |content, index|
      html_content << "<section id='#{index}'>#{content}</section>"
    end

    self.update(:content => html_content.join)
  end

  
end
