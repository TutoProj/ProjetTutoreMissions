class RemoveIndex < ActiveRecord::Migration
  def up
	remove_index :users, :name => "index users on login"
	remove_index :users, :name => "index users on persistance_token"
  end

  def down
  end
end
