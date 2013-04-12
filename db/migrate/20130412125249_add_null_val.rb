class AddNullVal < ActiveRecord::Migration
  def up
     change_table :users do |t|
      t.change :admin, :boolean, :default => false
    end
  end

  def down
  end
end
