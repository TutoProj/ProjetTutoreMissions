class CreateFraisDeplacements < ActiveRecord::Migration
  def change
    create_table :frais_deplacements do |t|
      t.boolean :demandeAvance
      t.boolean :regularisationDAvance
      t.boolean :forfait
      t.integer :montant

      t.timestamps
    end
  end
end
