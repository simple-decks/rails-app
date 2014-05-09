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

class Presentation < ActiveRecord::Base
  has_many :slides

  validates :title, presence: true
  # after_initialize :default_presentation

  # def default_presentation
  #   self.slides.build(:slide_type => "title-slide", :content => "New SimpleDeck")
  #   self.save
  # end

  before_create :generate_url_token, :generate_url_title

  # def to_param
  #   "#{id} #{title}".parameterize
  # end

  protected

  def generate_url_token
    begin
      self[:url_token] = SecureRandom.urlsafe_base64(8)
    end while Presentation.exists?(:url_token => self[:url_token])    
  end

  def generate_url_title
    url_title = self.title.downcase.strip.truncate(50)

    url_title.gsub! " ", "-"

    #blow away apostrophes
    url_title.gsub! /['`]/,""

    # convert @ --> at, & --> and
    url_title.gsub! /\s*@\s*/, "at"
    url_title.gsub! /\s*&\s*/, "and"

    #replace all non alphanumeric, underscore or periods with dashes
     url_title.gsub! /\s*[^A-Za-z0-9\.\-]\s*/, '-'  

     #convert double underscores, double dashes to single dash
     url_title.gsub! /_+|-+/,"-"

     #strip off leading/trailing underscore
     url_title.gsub! /\A[_\.]+|[_\.]+\z/,""

    self[:url_title] = url_title
  end

end
