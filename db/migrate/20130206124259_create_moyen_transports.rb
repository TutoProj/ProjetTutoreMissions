class CreateMoyenTransports < ActiveRecord::Migration
  def change
    create_table :moyen_transports do |t|
      t.boolean :avion
      t.boolean :parkingAeroport
      t.boolean :train
      t.boolean :class
      t.boolean :parkingGare
      t.boolean :reservation
      t.boolean :couchette
      t.boolean :wagonLit
      t.boolean :supplements
      t.boolean :taxi
      t.boolean :vehiculeLoue
      t.boolean :metro
      t.boolean :rer
      t.boolean :autobus
      t.boolean :tramway
      t.boolean :missionAvecTransport
      t.boolean :vehiculeAdmin
      t.boolean :fraisAutoroute
      t.boolean :parking
      t.boolean :vehiculePerso
      t.boolean :demandeAutorisationPonctuelleVehicule

      t.timestamps
    end
  end
end
