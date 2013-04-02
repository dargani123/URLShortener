class Comment < ActiveRecord::Base
  attr_accessible :comment, :short_url_id

  belongs_to :short_url


end
