class CreateChecklists < ActiveRecord::Migration
  def change
    create_table :checklists do |t|
      t.boolean :facebook
      t.boolean :twitter
      t.boolean :linkedin
      t.boolean :viadeo
      t.boolean :instagram
      t.boolean :community
      t.boolean :cms
      t.boolean :seo
      t.boolean :crowdfunding

      t.timestamps null: false
    end
  end
end
