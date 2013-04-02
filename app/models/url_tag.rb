class UrlTag < ActiveRecord::Base
  attr_accessible :tag_id, :short_url_id
  belongs_to :tag
  belongs_to :short_url

end
