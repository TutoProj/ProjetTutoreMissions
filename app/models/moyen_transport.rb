# == Schema Information
#
# Table name: moyen_transports
#
#  id                                    :integer          not null, primary key
#  avion                                 :boolean
#  parkingAeroport                       :boolean
#  train                                 :boolean
#  classe                                 :boolean
#  parkingGare                           :boolean
#  reservation                           :boolean
#  couchette                             :boolean
#  wagonLit                              :boolean
#  supplements                           :boolean
#  taxi                                  :boolean
#  vehiculeLoue                          :boolean
#  metro                                 :boolean
#  rer                                   :boolean
#  autobus                               :boolean
#  tramway                               :boolean
#  missionAvecTransport                  :boolean
#  vehiculeAdmin                         :boolean
#  fraisAutoroute                        :boolean
#  parking                               :boolean
#  vehiculePerso                         :boolean
#  demandeAutorisationPonctuelleVehicule :boolean
#  created_at                            :datetime         not null
#  updated_at                            :datetime         not null
#

class MoyenTransport < ActiveRecord::Base
  attr_accessible :autobus, :avion, :classe, :couchette, :demandeAutorisationPonctuelleVehicule, :fraisAutoroute, :metro, :missionAvecTransport, :parking, :parkingAeroport, :parkingGare, :rer, :reservation, :supplements, :taxi, :train, :tramway, :vehiculeAdmin, :vehiculeLoue, :vehiculePerso, :wagonLit

  if (:parkingAvion)
	validates :avion, :presence => true
  end

end
