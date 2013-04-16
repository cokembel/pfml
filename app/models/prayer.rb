class Prayer < ActiveRecord::Base
	belongs_to :user
	belongs_to :prayer_request
end
