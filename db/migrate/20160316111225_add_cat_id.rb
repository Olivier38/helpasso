class AddCatId < ActiveRecord::Migration
  def change
  	add_column :advices, :category_id, :integer, index: true
  end
end
