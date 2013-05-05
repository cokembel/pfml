class Prayer < ActiveRecord::Base
	belongs_to :user
	belongs_to :prayer_request

	validates :user, :prayer_request, :presence => true
end
