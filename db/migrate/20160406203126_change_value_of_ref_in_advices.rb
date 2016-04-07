class ChangeValueOfRefInAdvices < ActiveRecord::Migration
  def change
  	change_column :advices, :ref, :integer
  end
end
