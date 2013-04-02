class CreateShortUrls < ActiveRecord::Migration
  def change
    create_table :short_urls do |t|
      t.integer :short_url
      t.integer :user_id
      t.integer :original_url_id
      t.timestamps
    end
  end
end
