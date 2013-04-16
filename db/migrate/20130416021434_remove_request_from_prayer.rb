class RemoveRequestFromPrayer < ActiveRecord::Migration
  def up
  end

  def change
  	remove_column :prayers, :request
  end
end
