class ChangeStringToDate < ActiveRecord::Migration
 def up
    change_table :Itineraires do |t|
	t.change :DateHeureRetourResidence, :date
    end
  end

  def down
    change_table :Itineraires do |t|
	t.change :DateHeureRetourResidence , :date
    end
  end
end
