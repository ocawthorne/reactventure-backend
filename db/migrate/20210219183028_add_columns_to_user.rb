class AddColumnsToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :username, :string
    add_column :users, :hero, :string
    add_column :users, :password_digest, :string
  end
end
