class AddLinksAndLinksNameToAdvices < ActiveRecord::Migration
  def change
  	add_column :advices, :linkname, :string
  	add_column :advices, :link, :text
  end
end
