class AddUserRefToChecklist < ActiveRecord::Migration
  def change
    add_reference :checklists, :user, index: true, foreign_key: true
  end
end
