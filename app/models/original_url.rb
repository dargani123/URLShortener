class OriginalUrl < ActiveRecord::Base
  attr_accessible :original_url
  has_many :short_urls

end
