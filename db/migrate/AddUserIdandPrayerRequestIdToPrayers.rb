class AddUserIdandPrayerRequestIdToPrayers < Active::Migration
	def self.up
		add_column :prayers, :user_id, :integer
		add_column :prayers, :prayer_request_id, :integer
	end

	def self.down
		remove_column :prayers, :content
	end
end