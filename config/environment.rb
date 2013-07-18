# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
TechPeaksFeed::Application.initialize!

# Load feeds
FeedEntry.fetch_feed