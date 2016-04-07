class AddRefToAdvices < ActiveRecord::Migration
  def change
    add_column :advices, :ref, :integer
  end
end
