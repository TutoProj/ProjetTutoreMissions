class AddAuthlogicColumn < ActiveRecord::Migration
  def up
	remove_column :users, :passwd
	add_column :users, :crypted_password, :string
	add_column :users, :password_salt, :string
	add_column :users, :persistance_token, :string
  end

  def down
  end
end
