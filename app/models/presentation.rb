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
#  token_url  :string(255)
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
