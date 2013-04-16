class PrayerRequest < ActiveRecord::Base
	belongs_to :user
	has_many :prayers
end
