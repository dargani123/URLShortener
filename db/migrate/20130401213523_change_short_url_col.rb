class ChangeShortUrlCol < ActiveRecord::Migration
  def change
    remove_column :short_urls, :short_url
    add_column :short_urls, :short_url, :string
  end
end
