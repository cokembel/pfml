class AddUserIdToPrayerRequests < ActiveRecord::Migration
  def change
  	add_column :prayer_request, :user_id, :integer
  end
end
