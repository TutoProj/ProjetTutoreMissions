class CreateMissions < ActiveRecord::Migration
  def change
    create_table :missions do |t|
      t.string :compteUser
      t.integer :NumConvention
      t.string :destination
      t.string :imputation
      t.integer :numMarche
      t.boolean :frais
      t.boolean :permanant
      t.date :dateDepart
      t.date :dateRetour
      t.string :motifDeplacement
      t.string :status
      t.date :dateClotureMission

      t.timestamps
    end
  end
end
