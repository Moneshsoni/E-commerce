class AddRoleToSellers < ActiveRecord::Migration[7.0]
  def change
    add_column :sellers, :role, :string, default: 'customer'
  end
end
