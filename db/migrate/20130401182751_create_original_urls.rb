class CreateOriginalUrls < ActiveRecord::Migration
  def change
    create_table :original_urls do |t|
      t.string :original_url
      t.timestamps
    end
  end
end
