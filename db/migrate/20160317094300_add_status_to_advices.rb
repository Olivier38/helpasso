class AddStatusToAdvices < ActiveRecord::Migration
  def change
  	add_column :advices, :status, :boolean
  end
end
