# Learn more: http://github.com/javan/whenever


every 1.hours do
	runner "FeedEntry.update_feed"
end