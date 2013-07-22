class User < ActiveRecord::Base
	has_many :feed_entries

end
