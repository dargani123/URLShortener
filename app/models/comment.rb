class Comment < ActiveRecord::Base
  attr_accessible :comment, :short_url_id
  belongs_to :short_url

  validates :comment, :short_url, :presence => true
  # validates :short_url, :presence => true

end
