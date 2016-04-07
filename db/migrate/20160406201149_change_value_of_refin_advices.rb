class ChangeValueOfRefinAdvices < ActiveRecord::Migration
  def change
    change_column :advices, :ref, :string
  end
end
