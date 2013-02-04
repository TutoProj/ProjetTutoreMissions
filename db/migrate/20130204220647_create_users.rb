
class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.active_enum :civilite
      t.string :nom
      t.string :prenom
      t.string :grade
      t.string :adresse_familiale
      t.string :adresse_administrative
      t.integer :indice_majore
      t.string :equipe
      t.string :departement
      t.boolean :rib_valide
      t.string :nom_banque
      t.string :passwd

      t.timestamps
    end
  end
end
