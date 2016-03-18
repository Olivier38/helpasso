class AddLinksInAdvices < ActiveRecord::Migration
  def change
		rename_column :advices, :link, :link1
		rename_column :advices, :linkname, :linkname1
		add_column :advices, :link2, :text
		add_column :advices, :linkname2, :string
		add_column :advices, :link3, :text
		add_column :advices, :linkname3, :string
  end
end
