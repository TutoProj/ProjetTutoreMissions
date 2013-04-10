class AddLoginAndBoolAdmin < ActiveRecord::Migration
  def up
	add_column :users, :admin, :boolean
	add_column :users, :login, :string
  end

  def down
  end
end
