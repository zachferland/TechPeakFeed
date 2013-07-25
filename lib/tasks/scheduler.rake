
task :update_feed => :environment do
    FeedEntry.update_feed
end
