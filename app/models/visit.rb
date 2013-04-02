class Visit < ActiveRecord::Base
  attr_accessible :short_url_id, :visiting_user
  validates :visiting_user, :short_url, :presence => true
  belongs_to :short_url
end
