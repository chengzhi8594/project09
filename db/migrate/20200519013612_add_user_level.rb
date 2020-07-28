class AddUserLevel < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :admin, :boolean, default: false
    add_column :users, :creator, :boolean, default: false
    add_column :users, :user, :boolean, default: true
  end
end
