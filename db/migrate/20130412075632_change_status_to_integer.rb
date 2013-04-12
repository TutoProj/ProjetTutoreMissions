class ChangeStatusToInteger < ActiveRecord::Migration
 def up
    change_table :Missions do |t|
	t.change :status, :integer
    end
  end

  def down
    change_table :Missions do |t|
	t.change :status, :string
    end
  end
end
