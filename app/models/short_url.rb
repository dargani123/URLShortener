class ShortUrl < ActiveRecord::Base
  attr_accessible :short_url, :original_url_id, :user_id

  belongs_to :original_url
  has_many :comments
  belongs_to :user
  has_many :url_tags
  has_many :tags, :through => :url_tags
  has_many :visits

  def num_visits
    visits.count
  end

  def num_unique_visits
    visits.pluck(:visiting_user).uniq.count
  end

  def visits_last_10_min
    visits.where("created_at >= ? ", Time.now - 10.minutes)
  end



end
