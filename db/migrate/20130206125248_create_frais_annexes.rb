class CreateFraisAnnexes < ActiveRecord::Migration
  def change
    create_table :frais_annexes do |t|
      t.string :natureDepense
      t.integer :depense
      t.integer :nbJustificatifs
      t.boolean :rembourse

      t.timestamps
    end
  end
end
