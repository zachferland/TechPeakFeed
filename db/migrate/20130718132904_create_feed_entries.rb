class CreateFeedEntries < ActiveRecord::Migration
  def change
    create_table :feed_entries do |t|
      t.string :guid
      t.string :name
      t.datetime :published_at
      t.text :summary
      t.string :url
      t.integer :publisher_id

      t.timestamps
    end
  end
end
