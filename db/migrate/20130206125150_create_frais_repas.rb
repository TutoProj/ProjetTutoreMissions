class CreateFraisRepas < ActiveRecord::Migration
  def change
    create_table :frais_repas do |t|
      t.integer :nbRepasDansRestaurantAdmin
      t.integer :NbJustificatifsRestauAdmin
      t.integer :montantRestauAdmin
      t.boolean :rembourseRestauAdmin
      t.boolean :autresFraisRestaus
      t.integer :nbJustificatifsAutres
      t.integer :montantAutres
      t.boolean :rembourse
      t.integer :nbRepasGratuits

      t.timestamps
    end
  end
end
