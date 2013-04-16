class ChangeUserIdInPrayerRequests < ActiveRecord::Migration
  def change
  	change_column :prayer_requests, :user_id, :integer, :defaults => 0
  end
end
