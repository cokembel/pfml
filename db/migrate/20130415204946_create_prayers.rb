class CreatePrayers < ActiveRecord::Migration
  def change
    create_table :prayers do |t|
      t.string :request
      t.timestamps
    end
  end
end
