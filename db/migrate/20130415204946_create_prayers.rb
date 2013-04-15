class CreatePrayers < ActiveRecord::Migration
  def change
    create_table :prayers do |t|

      t.timestamps
    end
  end
end
