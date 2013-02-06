class CreateVehiculePersos < ActiveRecord::Migration
  def change
    create_table :vehicule_persos do |t|
      t.string :numMineralogique
      t.integer :puissanceVehicule
      t.date :DateAutorisationAnnuelleDUtilisation
      t.string :departement
      t.string :academie

      t.timestamps
    end
  end
end
