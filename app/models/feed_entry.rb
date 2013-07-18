class FeedEntry < ActiveRecord::Base

  def self.fetch_feed
  	User.all.each do |user|
  		feed_url = user.feed
  		feed = Feedzirra::Feed.fetch_and_parse(feed_url)
  		add_entries(feed.entries, user.id)
	end
  end

  private 
  def self.add_entries(entries, user)
  	entries.each do |entry|
      unless exists? :guid => entry.id
        create!(
          :name         => entry.title,
          :summary      => entry.summary,
          :url          => entry.url,
          :published_at => entry.published,
          :guid         => entry.id,
          :publisher_id  => user
        )
      end
    end
  end

end
