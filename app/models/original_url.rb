class OriginalUrl < ActiveRecord::Base
  attr_accessible :original_url
  validates :original_url, :presence => :true, :uniqueness => true
  validates :original_url, :length => {:maximum => 1024}

  has_many :short_urls

end
