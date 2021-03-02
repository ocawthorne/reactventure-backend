class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :hero_name
      t.password_digest :password
      t.timestamps
    end
  end
end
