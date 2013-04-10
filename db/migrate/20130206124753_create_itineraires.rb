class CreateItineraires < ActiveRecord::Migration
  def change
    create_table :itineraires do |t|
      t.integer :distance
      t.date :DateHeureDepartResidence
      t.date :DateArriveeLieuMission
      t.date :DateHeureDepartLieuMission
      t.string :DateHeureRetourResidence
      t.integer :montant
      t.boolean :rembourse

      t.timestamps
    end
  end
end
