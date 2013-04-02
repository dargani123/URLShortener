class User < ActiveRecord::Base
  attr_accessible :username, :email
  has_many :short_urls

  def self.add_comment(comment, short_url_id)
    Comment.create(:comment => comment, :short_url_id => short_url_id)
  end

end
