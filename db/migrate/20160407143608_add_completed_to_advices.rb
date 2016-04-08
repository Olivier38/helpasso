class AddCompletedToAdvices < ActiveRecord::Migration
  def change
    add_column :advices, :completed, :boolean
  end
end
