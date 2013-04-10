class CreateFraisHebergements < ActiveRecord::Migration
  def change
    create_table :frais_hebergements do |t|
      t.integer :nbNuiteeAvecFrais
      t.integer :nbJustificatifs
      t.integer :montant
      t.boolean :rembourse
      t.boolean :logeDansAutreLogement

      t.timestamps
    end
  end
end
