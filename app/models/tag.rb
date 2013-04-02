class Tag < ActiveRecord::Base
  attr_accessible :category

  validates :category, :presence => true, :uniqueness => true

  has_many :short_urls, :through => :url_tags

  def self.most_popular
    UrlTag.select("tag_id, COUNT(*) as count").group_by("tag_id")
  end

end
