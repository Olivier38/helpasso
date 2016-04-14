class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :facebook
      t.string :twitter
      t.string :linkedin
      t.string :website
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
