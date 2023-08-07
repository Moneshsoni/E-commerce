class DropTableUsers < ActiveRecord::Migration[7.0]
  def change
    drop_table :users_roles
    drop_table :users
  end
end
