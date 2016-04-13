class AddDecimalTopointsInUsers < ActiveRecord::Migration
  def change
  	change_column :users, :points, :decimal, precision: 5, scale: 2
  end
end
