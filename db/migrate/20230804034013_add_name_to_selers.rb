class AddNameToSelers < ActiveRecord::Migration[7.0]
  def change
    add_column :sellers, :name, :string
    add_column :sellers, :surname, :string
  end
end
