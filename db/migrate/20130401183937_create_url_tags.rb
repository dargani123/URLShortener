class CreateUrlTags < ActiveRecord::Migration
  def change
    create_table :url_tags do |t|
      t.integer :tag_id
      t.integer :short_url_id
      t.timestamps
    end
  end
end
