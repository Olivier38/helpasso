class RemoveCompletedFromAdvices < ActiveRecord::Migration
  def change
  	remove_column :advices, :completed
  end
end
