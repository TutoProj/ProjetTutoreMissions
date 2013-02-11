class AddIndexes < ActiveRecord::Migration
  def up
	add_index :users, ["login"], :name => "index users on login", :unique =>true
	add_index :users, ["persistance_token"], :name => "index users on persistance_token", :unique =>true
  end

  def down
  end
end
