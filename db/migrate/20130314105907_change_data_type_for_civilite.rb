class ChangeDataTypeForCivilite < ActiveRecord::Migration
  def up
    change_table :Users do |t|
	t.change :civilite, :integer
    end
  end

  def down
    change_table :Users do |t|
	t.change :civilite, :string
    end
  end
end
