include ActionView::Helpers::SanitizeHelper

class FeedEntry < ActiveRecord::Base

  belongs_to :user

  # require 'htmlentities'

  def self.fetch_feed
  	User.all.each do |user|
  		feed_url = user.feed
  		feed = Feedzirra::Feed.fetch_and_parse(feed_url)
  		add_entries(feed.entries, user.id)
	end
  end


  def self.update_feed
  	User.all.each do |user|
  		feed_url = user.feed
  		feed = Feedzirra::Feed.update(feed_url)
  		add_entries(feed.entries, user.id) if feed.new_entries.exists?
  	end
  end

  private 
  def self.add_entries(entries, user)
  	entries.each do |entry|
      unless exists? :guid => entry.id
      	#atom must acess content, while rss should acess summary
      	post_content = entry.summary
      	post_content = entry.content if post_content.nil?

      	stripped_summary = strip_tags(post_content)
      	decoder = HTMLEntities.new
      	decoded_summary = decoder.decode(stripped_summary)
        create!(
          :name         => entry.title,
          :summary      => decoded_summary,
          :url          => entry.url,
          :published_at => entry.published,
          :guid         => entry.id,
          :publisher_id  => user
        )
      end
    end
  end

end
