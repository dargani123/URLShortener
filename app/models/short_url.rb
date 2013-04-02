class ShortUrl < ActiveRecord::Base
  attr_accessible :short_url, :original_url_id, :user_id

  validates :short_url, :presence => true, :uniqueness => true
  validates :original_url, :user, :presence => true
  validate :no_more_than_five_urls_in_minute

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
    visits.where("created_at >= ? ", 10.minutes.ago)
  end

  def no_more_than_five_urls_in_minute
    if ShortUrl.where("created_at > ?", 1.minutes.ago)
      .where(:user_id => self.user_id).count >= 5
      errors[:base] << "can't make more than 5 per minute"
    end
  end

end
