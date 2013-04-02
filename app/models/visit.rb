class Visit < ActiveRecord::Base
  attr_accessible :short_url_id
  belongs_to :short_url
end
