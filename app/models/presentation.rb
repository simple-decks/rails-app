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
#

class Presentation < ActiveRecord::Base
  has_many :slides

  validates :title, presence: true
  # after_initialize :default_presentation

  # def default_presentation
  #   self.slides.build(:slide_type => "title-slide", :content => "New SimpleDeck")
  #   self.save
  # end

  before_create :generate_url_token

  # def convert_title_to_url_slug
  #   url_slug = self.title.downcase.gsub('','_')

    
  # end

   # def convert_title_to_slug
   #    #strip the string
   #    ret = self.strip

   #    #blow away apostrophes
   #    ret.gsub! /['`]/,""

   #    # @ --> at, and & --> and
   #    ret.gsub! /\s*@\s*/, " at "
   #    ret.gsub! /\s*&\s*/, " and "

   #    #replace all non alphanumeric, underscore or periods with underscore
   #     ret.gsub! /\s*[^A-Za-z0-9\.\-]\s*/, '_'  

   #     #convert double underscores to single
   #     ret.gsub! /_+/,"_"

   #     #strip off leading/trailing underscore
   #     ret.gsub! /\A[_\.]+|[_\.]+\z/,""

   #     ret
   #  end


  protected

  # def generate_token_url
  #   self.token_url = loop do
  #     random_token = SecureRandom.urlsafe_base64(nil, false)
  #     break random_token unless Presentation.exists?(token: random_token)
  #   end
  # end

  def generate_url_token
    begin
      self[:url_token] = SecureRandom.urlsafe_base64(8)
    end while Presentation.exists?(:url_token => self[:url_token])    
  end

end
