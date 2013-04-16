class AddUserIdToPrayerRequest < ActiveRecord::Migration
  def self.up
  	add_column :prayer_requests, :user_id, :integer
  end
end
