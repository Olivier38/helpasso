class CreateUserAdvices < ActiveRecord::Migration
  def change
    create_table :user_advices do |t|
      t.references :user, index: true, foreign_key: true
      t.references :advice, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
