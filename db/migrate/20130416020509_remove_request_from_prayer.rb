class RemoveRequestFromPrayer < ActiveRecord::Migration

  def change
  	remove_column :prayers, :request
  end
end
