class ChangeClassToClasseInMoyenTransport < ActiveRecord::Migration
  def up
	rename_column :moyen_transports, :class, :classe
  end

  def down
  end
end
