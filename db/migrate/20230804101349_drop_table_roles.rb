class DropTableRoles < ActiveRecord::Migration[7.0]
  def change
    drop_table :roles
    drop_table :sellers_roles
  end
end
