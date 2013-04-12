class AddEtrangerToMission < ActiveRecord::Migration
  def change
  	add_column :missions, :etranger, :boolean
  end
end
