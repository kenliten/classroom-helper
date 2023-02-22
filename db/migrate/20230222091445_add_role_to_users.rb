class AddRoleToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :role, :string, default: 'teacher'
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :phone, :string
  end
end
