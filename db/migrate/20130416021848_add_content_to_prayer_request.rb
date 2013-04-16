class AddContentToPrayerRequest < ActiveRecord::Migration
  def change
  	add_column :prayer_requests, :content, :string
  end
end
