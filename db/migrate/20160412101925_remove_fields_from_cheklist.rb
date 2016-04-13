class RemoveFieldsFromCheklist < ActiveRecord::Migration
  def change
  	rename_column :checklists, :facebook, :networks
  	rename_column :checklists, :twitter, :pro_networks
  	remove_column :checklists, :linkedin
  	remove_column :checklists, :viadeo
  	remove_column :checklists, :instagram
  end
end
